<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jetty`

-	[`jetty:9`](#jetty9)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.24`](#jetty9224)
-	[`jetty:9.2.24-jre7`](#jetty9224-jre7)
-	[`jetty:9.2.24-jre8`](#jetty9224-jre8)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9.3.23`](#jetty9323)
-	[`jetty:9.3.23-alpine`](#jetty9323-alpine)
-	[`jetty:9.3.23-jre8`](#jetty9323-jre8)
-	[`jetty:9.3.23-jre8-alpine`](#jetty9323-jre8-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9.4`](#jetty94)
-	[`jetty:9.4.9`](#jetty949)
-	[`jetty:9.4.9-alpine`](#jetty949-alpine)
-	[`jetty:9.4.9-jre8`](#jetty949-jre8)
-	[`jetty:9.4.9-jre8-alpine`](#jetty949-jre8-alpine)
-	[`jetty:9.4-alpine`](#jetty94-alpine)
-	[`jetty:9.4-jre8`](#jetty94-jre8)
-	[`jetty:9.4-jre8-alpine`](#jetty94-jre8-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre7`](#jettyjre7)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:latest`](#jettylatest)

## `jetty:9`

```console
$ docker pull jetty@sha256:cc7b14f6d76d384d1e42b82c3fddf1d693eb381e3817fbe618b38bb29f66888e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

```console
$ docker pull jetty@sha256:b8703e578f5841c3dea74226818067197c6580ce7bfcfcb81447c3a575f37653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225321706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91645e4dbc97e2d108789aeb7e1016778b8ca2f43038adf288551dfb09f6f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:16 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:16 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:43:23 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:23 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:43:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:43:25 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:43:25 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:43:25 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:43:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:43:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26edaee441d298cf23f389a5e427da5a790fd6181620be11247ba9057f2bfe`  
		Last Modified: Thu, 22 Mar 2018 02:47:35 GMT  
		Size: 8.4 MB (8398410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b02bc66ff79093d90567da7d2618a54c66cd32ea4d85084ce28c9571526816`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f5c7e485319f7d1280a88acddef1b31b77a96b054f04eccf85dd14fbd94e2`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f95ce9c1428447cf81a47930245ff7601e85356ff1fd95c44420b384398b5`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab914c808f2e2d9f03263a3589dd0a1e6f48219d0a1302f67633b85a39b5e00`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:2fb6122dd072f269e4d65d3574a0ffc599757103e5ce6ff7249efe494c52ddd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

```console
$ docker pull jetty@sha256:38c0daa8f40694d70b8cdb717ad6c35111d934210d732d004fb1c8a03551be88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (226951563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3353b05cceb39ef3bd3b81386cacff9e42e551ae2807200b8f0155e6df8a0e76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:46:24 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:46:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:46:25 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:46:25 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:46:26 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:46:27 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:46:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:46:28 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:46:28 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:46:29 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:46:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:46:29 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9016b08a2295572876e93a89d8c6700b8348e27f668d85cf930e50f5a64cc4c6`  
		Last Modified: Thu, 22 Mar 2018 02:55:31 GMT  
		Size: 10.0 MB (10028806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574f0203dc5d54f30f9a2ee11d74aa287911700c285494b05a5d254db1ffdfb4`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f802cfd1f38db07c0b46996a27cc248891e1d75c01cf5624831e1f421a6fae6`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83c064e122593696cd9a198acf73b1a003a3a19d0f94526509be6b8d65c932`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad99bca8ee37bc9f5d33432c92495617318e27856858ae9cb48ada6527284b5`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.24`

```console
$ docker pull jetty@sha256:2fb6122dd072f269e4d65d3574a0ffc599757103e5ce6ff7249efe494c52ddd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.24` - linux; amd64

```console
$ docker pull jetty@sha256:38c0daa8f40694d70b8cdb717ad6c35111d934210d732d004fb1c8a03551be88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (226951563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3353b05cceb39ef3bd3b81386cacff9e42e551ae2807200b8f0155e6df8a0e76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:46:24 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:46:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:46:25 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:46:25 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:46:26 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:46:27 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:46:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:46:28 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:46:28 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:46:29 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:46:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:46:29 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9016b08a2295572876e93a89d8c6700b8348e27f668d85cf930e50f5a64cc4c6`  
		Last Modified: Thu, 22 Mar 2018 02:55:31 GMT  
		Size: 10.0 MB (10028806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574f0203dc5d54f30f9a2ee11d74aa287911700c285494b05a5d254db1ffdfb4`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f802cfd1f38db07c0b46996a27cc248891e1d75c01cf5624831e1f421a6fae6`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83c064e122593696cd9a198acf73b1a003a3a19d0f94526509be6b8d65c932`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad99bca8ee37bc9f5d33432c92495617318e27856858ae9cb48ada6527284b5`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.24-jre7`

```console
$ docker pull jetty@sha256:0cffaa2981de05cec053f4aae07cb3b62c28963bac9616ffa196468192daa5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.24-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:793a39d447c550197e189e4859979daf958cb785038761423301b777f391de99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200198655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61356a09318bc873105494d0f962d83480493b7b59ea7be4a68d43e25414a036`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:39:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 11:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:12:58 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:12:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:12:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:13:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 03:38:22 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:38:22 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:39:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Apr 2018 08:10:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Apr 2018 08:10:50 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Apr 2018 08:10:50 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Apr 2018 08:10:51 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Apr 2018 08:10:52 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Apr 2018 08:10:52 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Tue, 10 Apr 2018 08:10:52 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Tue, 10 Apr 2018 08:10:53 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Apr 2018 08:11:00 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Apr 2018 08:11:00 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Apr 2018 08:11:01 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Apr 2018 08:11:01 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Apr 2018 08:11:05 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Apr 2018 08:11:05 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Apr 2018 08:11:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 10 Apr 2018 08:11:07 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 10 Apr 2018 08:11:07 GMT
USER [jetty]
# Tue, 10 Apr 2018 08:11:08 GMT
EXPOSE 8080/tcp
# Tue, 10 Apr 2018 08:11:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Apr 2018 08:11:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb899b4df216ab398fb05547f86dc371db944cf53dea7913d2f4261ed09e2be`  
		Last Modified: Wed, 14 Mar 2018 00:34:40 GMT  
		Size: 19.3 MB (19266189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9837675e69408ed38a5cd50b7bad4aceb89b943ec4d0c6547d3da7c2911ce1fa`  
		Last Modified: Wed, 14 Mar 2018 13:15:40 GMT  
		Size: 795.6 KB (795622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d602d78cf3359ca712061598d8ff56eb3242af4ca83b5d1c650e8d2e37e70fe7`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0d228baacbc3d4fd9bb4ed7dda30fee6eb4cee8a615c3c1f03215c6e2c8478`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171ed19f6416aabe363128cc92d55cf9ab0dc552903edf97bcbce2c98a824bac`  
		Last Modified: Tue, 10 Apr 2018 04:06:54 GMT  
		Size: 117.5 MB (117493710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8420048a3000b926f426107a521f4a9d57d7182af0aa868c2013c8172bd3d1a2`  
		Last Modified: Tue, 10 Apr 2018 08:14:03 GMT  
		Size: 2.2 KB (2152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32890f55a02e9143f41898e933009983b5bc0332c0cb89e96c2c0d075029d0d2`  
		Last Modified: Tue, 10 Apr 2018 08:14:03 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b81ff08524472ccb8c681d5598e9da8c38bca0300aae348fc60de14986d121c`  
		Last Modified: Tue, 10 Apr 2018 08:14:02 GMT  
		Size: 10.0 MB (10028808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ad6bf7f7ed420412273a2a37ea6d5474b965c3545bd55772782ffb5da8e4c`  
		Last Modified: Tue, 10 Apr 2018 08:14:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249ad02c7b970c04da26747a5b46022405c2fbc002b6b5bcf8acfa371d342277`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b768d87d98d3187d56bd25af76b315cb03fa31ff0f07591989a45659fd3bec4f`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758a4fc0edcb1cf79dd78ea2ebd62ae6b9106c683638ad268004b13fa0ee9d5a`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.24-jre8`

```console
$ docker pull jetty@sha256:2fb6122dd072f269e4d65d3574a0ffc599757103e5ce6ff7249efe494c52ddd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.24-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:38c0daa8f40694d70b8cdb717ad6c35111d934210d732d004fb1c8a03551be88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (226951563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3353b05cceb39ef3bd3b81386cacff9e42e551ae2807200b8f0155e6df8a0e76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:46:24 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:46:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:46:25 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:46:25 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:46:26 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:46:27 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:46:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:46:28 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:46:28 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:46:29 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:46:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:46:29 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9016b08a2295572876e93a89d8c6700b8348e27f668d85cf930e50f5a64cc4c6`  
		Last Modified: Thu, 22 Mar 2018 02:55:31 GMT  
		Size: 10.0 MB (10028806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574f0203dc5d54f30f9a2ee11d74aa287911700c285494b05a5d254db1ffdfb4`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f802cfd1f38db07c0b46996a27cc248891e1d75c01cf5624831e1f421a6fae6`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83c064e122593696cd9a198acf73b1a003a3a19d0f94526509be6b8d65c932`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad99bca8ee37bc9f5d33432c92495617318e27856858ae9cb48ada6527284b5`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:0cffaa2981de05cec053f4aae07cb3b62c28963bac9616ffa196468192daa5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:793a39d447c550197e189e4859979daf958cb785038761423301b777f391de99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200198655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61356a09318bc873105494d0f962d83480493b7b59ea7be4a68d43e25414a036`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:39:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 11:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:12:58 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:12:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:12:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:13:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 03:38:22 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:38:22 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:39:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Apr 2018 08:10:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Apr 2018 08:10:50 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Apr 2018 08:10:50 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Apr 2018 08:10:51 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Apr 2018 08:10:52 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Apr 2018 08:10:52 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Tue, 10 Apr 2018 08:10:52 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Tue, 10 Apr 2018 08:10:53 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Apr 2018 08:11:00 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Apr 2018 08:11:00 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Apr 2018 08:11:01 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Apr 2018 08:11:01 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Apr 2018 08:11:05 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Apr 2018 08:11:05 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Apr 2018 08:11:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 10 Apr 2018 08:11:07 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 10 Apr 2018 08:11:07 GMT
USER [jetty]
# Tue, 10 Apr 2018 08:11:08 GMT
EXPOSE 8080/tcp
# Tue, 10 Apr 2018 08:11:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Apr 2018 08:11:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb899b4df216ab398fb05547f86dc371db944cf53dea7913d2f4261ed09e2be`  
		Last Modified: Wed, 14 Mar 2018 00:34:40 GMT  
		Size: 19.3 MB (19266189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9837675e69408ed38a5cd50b7bad4aceb89b943ec4d0c6547d3da7c2911ce1fa`  
		Last Modified: Wed, 14 Mar 2018 13:15:40 GMT  
		Size: 795.6 KB (795622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d602d78cf3359ca712061598d8ff56eb3242af4ca83b5d1c650e8d2e37e70fe7`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0d228baacbc3d4fd9bb4ed7dda30fee6eb4cee8a615c3c1f03215c6e2c8478`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171ed19f6416aabe363128cc92d55cf9ab0dc552903edf97bcbce2c98a824bac`  
		Last Modified: Tue, 10 Apr 2018 04:06:54 GMT  
		Size: 117.5 MB (117493710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8420048a3000b926f426107a521f4a9d57d7182af0aa868c2013c8172bd3d1a2`  
		Last Modified: Tue, 10 Apr 2018 08:14:03 GMT  
		Size: 2.2 KB (2152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32890f55a02e9143f41898e933009983b5bc0332c0cb89e96c2c0d075029d0d2`  
		Last Modified: Tue, 10 Apr 2018 08:14:03 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b81ff08524472ccb8c681d5598e9da8c38bca0300aae348fc60de14986d121c`  
		Last Modified: Tue, 10 Apr 2018 08:14:02 GMT  
		Size: 10.0 MB (10028808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ad6bf7f7ed420412273a2a37ea6d5474b965c3545bd55772782ffb5da8e4c`  
		Last Modified: Tue, 10 Apr 2018 08:14:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249ad02c7b970c04da26747a5b46022405c2fbc002b6b5bcf8acfa371d342277`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b768d87d98d3187d56bd25af76b315cb03fa31ff0f07591989a45659fd3bec4f`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758a4fc0edcb1cf79dd78ea2ebd62ae6b9106c683638ad268004b13fa0ee9d5a`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:2fb6122dd072f269e4d65d3574a0ffc599757103e5ce6ff7249efe494c52ddd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:38c0daa8f40694d70b8cdb717ad6c35111d934210d732d004fb1c8a03551be88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (226951563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3353b05cceb39ef3bd3b81386cacff9e42e551ae2807200b8f0155e6df8a0e76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Thu, 22 Mar 2018 02:46:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:46:24 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:46:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:46:25 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:46:25 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:46:26 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:46:27 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:46:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:46:28 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:46:28 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:46:29 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:46:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:46:29 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9016b08a2295572876e93a89d8c6700b8348e27f668d85cf930e50f5a64cc4c6`  
		Last Modified: Thu, 22 Mar 2018 02:55:31 GMT  
		Size: 10.0 MB (10028806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574f0203dc5d54f30f9a2ee11d74aa287911700c285494b05a5d254db1ffdfb4`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f802cfd1f38db07c0b46996a27cc248891e1d75c01cf5624831e1f421a6fae6`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83c064e122593696cd9a198acf73b1a003a3a19d0f94526509be6b8d65c932`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad99bca8ee37bc9f5d33432c92495617318e27856858ae9cb48ada6527284b5`  
		Last Modified: Thu, 22 Mar 2018 02:55:30 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:5dd6870220230df4f77733ce3c9174b5f1cebc3af56c8f40d0eba7312e1d3765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

```console
$ docker pull jetty@sha256:99003ff35650e2882161f14c5128ae7f53cd052814cd509f4fadbf54bb4deb2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.0 MB (225035401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4656d060c97cdd0946adb11b16106ebbdf96cdce536ce8da20266ad0ef5ea322`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:44:26 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:44:27 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:44:27 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:14 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:15 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:16 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:16 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:17 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:18 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:18 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:19 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f8b8c050e673d6b4359d4fd9bfee274014014dcd814566a758e03d0ab02201`  
		Last Modified: Thu, 22 Mar 2018 02:52:49 GMT  
		Size: 8.1 MB (8112353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ee015af1c2a31906eb070c8b0e47bd81251351b61c8a09829dc0a2c36d2765`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51a8334a999705e713dc113b57e00ef8ea92c494180d68aee068d7f8d873d79`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d4c684a5aac072d3d9cbf88472606370df2023f4a31dd885bcf8e2113fe5da`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4afe9fba7e81d3750c290b3e43980c6814ba411f96d208bab360c446e6e9d3`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.23`

```console
$ docker pull jetty@sha256:5dd6870220230df4f77733ce3c9174b5f1cebc3af56c8f40d0eba7312e1d3765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.23` - linux; amd64

```console
$ docker pull jetty@sha256:99003ff35650e2882161f14c5128ae7f53cd052814cd509f4fadbf54bb4deb2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.0 MB (225035401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4656d060c97cdd0946adb11b16106ebbdf96cdce536ce8da20266ad0ef5ea322`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:44:26 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:44:27 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:44:27 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:14 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:15 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:16 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:16 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:17 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:18 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:18 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:19 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f8b8c050e673d6b4359d4fd9bfee274014014dcd814566a758e03d0ab02201`  
		Last Modified: Thu, 22 Mar 2018 02:52:49 GMT  
		Size: 8.1 MB (8112353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ee015af1c2a31906eb070c8b0e47bd81251351b61c8a09829dc0a2c36d2765`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51a8334a999705e713dc113b57e00ef8ea92c494180d68aee068d7f8d873d79`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d4c684a5aac072d3d9cbf88472606370df2023f4a31dd885bcf8e2113fe5da`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4afe9fba7e81d3750c290b3e43980c6814ba411f96d208bab360c446e6e9d3`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.23-alpine`

```console
$ docker pull jetty@sha256:712f7977c5a3f23245ac63be88b15f18e3010c8dc6e6b392c0d93bfa0fb124fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.23-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:803cda5bd6f49f3d01754ed2610d0238e5259727650459285e823183933a5f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64706357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222f97a1740e0fce05401b1bfcfe83f2ec2ad0c1f331717bbdd7ab8c0abd7f71`
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
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:45:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:51 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:56 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:57 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:57 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:57 GMT
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
	-	`sha256:615f2911ef497dd2227f8c0c9031938d1d8f03964999da7bc8eab6c99ab54306`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 8.1 MB (8146467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729d2acedf80c6600b290e4127c0453128cf6bca01736a0cdc564c5324bb23de`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0b5536aafeecebf3c7bbd8aadf31368d3c87836eb92d0cef87893cf67704e`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 37.3 KB (37275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b80b0d18df26e9ce9ad14473fa012fadf40dc42ed25b35f0d99d445333c415`  
		Last Modified: Thu, 22 Mar 2018 02:54:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdb6e03d6f4156a6579b742d815e8d39469a12ef2c7e2d1a2987c603403f1b`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.23-jre8`

```console
$ docker pull jetty@sha256:5dd6870220230df4f77733ce3c9174b5f1cebc3af56c8f40d0eba7312e1d3765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.23-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:99003ff35650e2882161f14c5128ae7f53cd052814cd509f4fadbf54bb4deb2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.0 MB (225035401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4656d060c97cdd0946adb11b16106ebbdf96cdce536ce8da20266ad0ef5ea322`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:44:26 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:44:27 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:44:27 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:14 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:15 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:16 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:16 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:17 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:18 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:18 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:19 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f8b8c050e673d6b4359d4fd9bfee274014014dcd814566a758e03d0ab02201`  
		Last Modified: Thu, 22 Mar 2018 02:52:49 GMT  
		Size: 8.1 MB (8112353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ee015af1c2a31906eb070c8b0e47bd81251351b61c8a09829dc0a2c36d2765`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51a8334a999705e713dc113b57e00ef8ea92c494180d68aee068d7f8d873d79`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d4c684a5aac072d3d9cbf88472606370df2023f4a31dd885bcf8e2113fe5da`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4afe9fba7e81d3750c290b3e43980c6814ba411f96d208bab360c446e6e9d3`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.23-jre8-alpine`

```console
$ docker pull jetty@sha256:712f7977c5a3f23245ac63be88b15f18e3010c8dc6e6b392c0d93bfa0fb124fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.23-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:803cda5bd6f49f3d01754ed2610d0238e5259727650459285e823183933a5f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64706357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222f97a1740e0fce05401b1bfcfe83f2ec2ad0c1f331717bbdd7ab8c0abd7f71`
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
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:45:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:51 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:56 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:57 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:57 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:57 GMT
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
	-	`sha256:615f2911ef497dd2227f8c0c9031938d1d8f03964999da7bc8eab6c99ab54306`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 8.1 MB (8146467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729d2acedf80c6600b290e4127c0453128cf6bca01736a0cdc564c5324bb23de`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0b5536aafeecebf3c7bbd8aadf31368d3c87836eb92d0cef87893cf67704e`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 37.3 KB (37275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b80b0d18df26e9ce9ad14473fa012fadf40dc42ed25b35f0d99d445333c415`  
		Last Modified: Thu, 22 Mar 2018 02:54:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdb6e03d6f4156a6579b742d815e8d39469a12ef2c7e2d1a2987c603403f1b`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:712f7977c5a3f23245ac63be88b15f18e3010c8dc6e6b392c0d93bfa0fb124fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:803cda5bd6f49f3d01754ed2610d0238e5259727650459285e823183933a5f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64706357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222f97a1740e0fce05401b1bfcfe83f2ec2ad0c1f331717bbdd7ab8c0abd7f71`
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
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:45:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:51 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:56 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:57 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:57 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:57 GMT
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
	-	`sha256:615f2911ef497dd2227f8c0c9031938d1d8f03964999da7bc8eab6c99ab54306`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 8.1 MB (8146467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729d2acedf80c6600b290e4127c0453128cf6bca01736a0cdc564c5324bb23de`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0b5536aafeecebf3c7bbd8aadf31368d3c87836eb92d0cef87893cf67704e`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 37.3 KB (37275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b80b0d18df26e9ce9ad14473fa012fadf40dc42ed25b35f0d99d445333c415`  
		Last Modified: Thu, 22 Mar 2018 02:54:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdb6e03d6f4156a6579b742d815e8d39469a12ef2c7e2d1a2987c603403f1b`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:5dd6870220230df4f77733ce3c9174b5f1cebc3af56c8f40d0eba7312e1d3765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:99003ff35650e2882161f14c5128ae7f53cd052814cd509f4fadbf54bb4deb2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.0 MB (225035401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4656d060c97cdd0946adb11b16106ebbdf96cdce536ce8da20266ad0ef5ea322`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:44:26 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:44:27 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:44:27 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:14 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:15 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:16 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:16 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:17 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:18 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:18 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:19 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f8b8c050e673d6b4359d4fd9bfee274014014dcd814566a758e03d0ab02201`  
		Last Modified: Thu, 22 Mar 2018 02:52:49 GMT  
		Size: 8.1 MB (8112353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ee015af1c2a31906eb070c8b0e47bd81251351b61c8a09829dc0a2c36d2765`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51a8334a999705e713dc113b57e00ef8ea92c494180d68aee068d7f8d873d79`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d4c684a5aac072d3d9cbf88472606370df2023f4a31dd885bcf8e2113fe5da`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4afe9fba7e81d3750c290b3e43980c6814ba411f96d208bab360c446e6e9d3`  
		Last Modified: Thu, 22 Mar 2018 02:52:48 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:712f7977c5a3f23245ac63be88b15f18e3010c8dc6e6b392c0d93bfa0fb124fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:803cda5bd6f49f3d01754ed2610d0238e5259727650459285e823183933a5f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64706357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222f97a1740e0fce05401b1bfcfe83f2ec2ad0c1f331717bbdd7ab8c0abd7f71`
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
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:45:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:51 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:56 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:57 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:57 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:57 GMT
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
	-	`sha256:615f2911ef497dd2227f8c0c9031938d1d8f03964999da7bc8eab6c99ab54306`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 8.1 MB (8146467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729d2acedf80c6600b290e4127c0453128cf6bca01736a0cdc564c5324bb23de`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0b5536aafeecebf3c7bbd8aadf31368d3c87836eb92d0cef87893cf67704e`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 37.3 KB (37275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b80b0d18df26e9ce9ad14473fa012fadf40dc42ed25b35f0d99d445333c415`  
		Last Modified: Thu, 22 Mar 2018 02:54:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdb6e03d6f4156a6579b742d815e8d39469a12ef2c7e2d1a2987c603403f1b`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4`

```console
$ docker pull jetty@sha256:cc7b14f6d76d384d1e42b82c3fddf1d693eb381e3817fbe618b38bb29f66888e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4` - linux; amd64

```console
$ docker pull jetty@sha256:b8703e578f5841c3dea74226818067197c6580ce7bfcfcb81447c3a575f37653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225321706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91645e4dbc97e2d108789aeb7e1016778b8ca2f43038adf288551dfb09f6f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:16 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:16 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:43:23 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:23 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:43:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:43:25 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:43:25 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:43:25 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:43:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:43:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26edaee441d298cf23f389a5e427da5a790fd6181620be11247ba9057f2bfe`  
		Last Modified: Thu, 22 Mar 2018 02:47:35 GMT  
		Size: 8.4 MB (8398410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b02bc66ff79093d90567da7d2618a54c66cd32ea4d85084ce28c9571526816`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f5c7e485319f7d1280a88acddef1b31b77a96b054f04eccf85dd14fbd94e2`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f95ce9c1428447cf81a47930245ff7601e85356ff1fd95c44420b384398b5`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab914c808f2e2d9f03263a3589dd0a1e6f48219d0a1302f67633b85a39b5e00`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.9`

```console
$ docker pull jetty@sha256:cc7b14f6d76d384d1e42b82c3fddf1d693eb381e3817fbe618b38bb29f66888e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.9` - linux; amd64

```console
$ docker pull jetty@sha256:b8703e578f5841c3dea74226818067197c6580ce7bfcfcb81447c3a575f37653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225321706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91645e4dbc97e2d108789aeb7e1016778b8ca2f43038adf288551dfb09f6f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:16 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:16 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:43:23 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:23 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:43:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:43:25 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:43:25 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:43:25 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:43:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:43:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26edaee441d298cf23f389a5e427da5a790fd6181620be11247ba9057f2bfe`  
		Last Modified: Thu, 22 Mar 2018 02:47:35 GMT  
		Size: 8.4 MB (8398410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b02bc66ff79093d90567da7d2618a54c66cd32ea4d85084ce28c9571526816`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f5c7e485319f7d1280a88acddef1b31b77a96b054f04eccf85dd14fbd94e2`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f95ce9c1428447cf81a47930245ff7601e85356ff1fd95c44420b384398b5`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab914c808f2e2d9f03263a3589dd0a1e6f48219d0a1302f67633b85a39b5e00`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.9-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.9-alpine` - linux; amd64

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

## `jetty:9.4.9-jre8`

```console
$ docker pull jetty@sha256:cc7b14f6d76d384d1e42b82c3fddf1d693eb381e3817fbe618b38bb29f66888e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.9-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:b8703e578f5841c3dea74226818067197c6580ce7bfcfcb81447c3a575f37653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225321706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91645e4dbc97e2d108789aeb7e1016778b8ca2f43038adf288551dfb09f6f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:16 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:16 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:43:23 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:23 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:43:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:43:25 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:43:25 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:43:25 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:43:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:43:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26edaee441d298cf23f389a5e427da5a790fd6181620be11247ba9057f2bfe`  
		Last Modified: Thu, 22 Mar 2018 02:47:35 GMT  
		Size: 8.4 MB (8398410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b02bc66ff79093d90567da7d2618a54c66cd32ea4d85084ce28c9571526816`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f5c7e485319f7d1280a88acddef1b31b77a96b054f04eccf85dd14fbd94e2`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f95ce9c1428447cf81a47930245ff7601e85356ff1fd95c44420b384398b5`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab914c808f2e2d9f03263a3589dd0a1e6f48219d0a1302f67633b85a39b5e00`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.9-jre8-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.9-jre8-alpine` - linux; amd64

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

## `jetty:9.4-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-alpine` - linux; amd64

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

## `jetty:9.4-jre8`

```console
$ docker pull jetty@sha256:cc7b14f6d76d384d1e42b82c3fddf1d693eb381e3817fbe618b38bb29f66888e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:b8703e578f5841c3dea74226818067197c6580ce7bfcfcb81447c3a575f37653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225321706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91645e4dbc97e2d108789aeb7e1016778b8ca2f43038adf288551dfb09f6f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:16 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:16 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:43:23 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:23 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:43:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:43:25 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:43:25 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:43:25 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:43:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:43:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26edaee441d298cf23f389a5e427da5a790fd6181620be11247ba9057f2bfe`  
		Last Modified: Thu, 22 Mar 2018 02:47:35 GMT  
		Size: 8.4 MB (8398410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b02bc66ff79093d90567da7d2618a54c66cd32ea4d85084ce28c9571526816`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f5c7e485319f7d1280a88acddef1b31b77a96b054f04eccf85dd14fbd94e2`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f95ce9c1428447cf81a47930245ff7601e85356ff1fd95c44420b384398b5`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab914c808f2e2d9f03263a3589dd0a1e6f48219d0a1302f67633b85a39b5e00`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8-alpine` - linux; amd64

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

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:0cffaa2981de05cec053f4aae07cb3b62c28963bac9616ffa196468192daa5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:793a39d447c550197e189e4859979daf958cb785038761423301b777f391de99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200198655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61356a09318bc873105494d0f962d83480493b7b59ea7be4a68d43e25414a036`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:39:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 11:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:12:58 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:12:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:12:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:13:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 03:38:22 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:38:22 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:39:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Apr 2018 08:10:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Apr 2018 08:10:50 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Apr 2018 08:10:50 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Apr 2018 08:10:51 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Apr 2018 08:10:52 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Apr 2018 08:10:52 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Tue, 10 Apr 2018 08:10:52 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Tue, 10 Apr 2018 08:10:53 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Apr 2018 08:11:00 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Apr 2018 08:11:00 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Apr 2018 08:11:01 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Apr 2018 08:11:01 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Apr 2018 08:11:05 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Apr 2018 08:11:05 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Apr 2018 08:11:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 10 Apr 2018 08:11:07 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 10 Apr 2018 08:11:07 GMT
USER [jetty]
# Tue, 10 Apr 2018 08:11:08 GMT
EXPOSE 8080/tcp
# Tue, 10 Apr 2018 08:11:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Apr 2018 08:11:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb899b4df216ab398fb05547f86dc371db944cf53dea7913d2f4261ed09e2be`  
		Last Modified: Wed, 14 Mar 2018 00:34:40 GMT  
		Size: 19.3 MB (19266189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9837675e69408ed38a5cd50b7bad4aceb89b943ec4d0c6547d3da7c2911ce1fa`  
		Last Modified: Wed, 14 Mar 2018 13:15:40 GMT  
		Size: 795.6 KB (795622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d602d78cf3359ca712061598d8ff56eb3242af4ca83b5d1c650e8d2e37e70fe7`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0d228baacbc3d4fd9bb4ed7dda30fee6eb4cee8a615c3c1f03215c6e2c8478`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171ed19f6416aabe363128cc92d55cf9ab0dc552903edf97bcbce2c98a824bac`  
		Last Modified: Tue, 10 Apr 2018 04:06:54 GMT  
		Size: 117.5 MB (117493710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8420048a3000b926f426107a521f4a9d57d7182af0aa868c2013c8172bd3d1a2`  
		Last Modified: Tue, 10 Apr 2018 08:14:03 GMT  
		Size: 2.2 KB (2152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32890f55a02e9143f41898e933009983b5bc0332c0cb89e96c2c0d075029d0d2`  
		Last Modified: Tue, 10 Apr 2018 08:14:03 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b81ff08524472ccb8c681d5598e9da8c38bca0300aae348fc60de14986d121c`  
		Last Modified: Tue, 10 Apr 2018 08:14:02 GMT  
		Size: 10.0 MB (10028808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ad6bf7f7ed420412273a2a37ea6d5474b965c3545bd55772782ffb5da8e4c`  
		Last Modified: Tue, 10 Apr 2018 08:14:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249ad02c7b970c04da26747a5b46022405c2fbc002b6b5bcf8acfa371d342277`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b768d87d98d3187d56bd25af76b315cb03fa31ff0f07591989a45659fd3bec4f`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758a4fc0edcb1cf79dd78ea2ebd62ae6b9106c683638ad268004b13fa0ee9d5a`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:cc7b14f6d76d384d1e42b82c3fddf1d693eb381e3817fbe618b38bb29f66888e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:b8703e578f5841c3dea74226818067197c6580ce7bfcfcb81447c3a575f37653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225321706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91645e4dbc97e2d108789aeb7e1016778b8ca2f43038adf288551dfb09f6f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:16 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:16 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:43:23 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:23 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:43:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:43:25 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:43:25 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:43:25 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:43:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:43:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26edaee441d298cf23f389a5e427da5a790fd6181620be11247ba9057f2bfe`  
		Last Modified: Thu, 22 Mar 2018 02:47:35 GMT  
		Size: 8.4 MB (8398410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b02bc66ff79093d90567da7d2618a54c66cd32ea4d85084ce28c9571526816`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f5c7e485319f7d1280a88acddef1b31b77a96b054f04eccf85dd14fbd94e2`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f95ce9c1428447cf81a47930245ff7601e85356ff1fd95c44420b384398b5`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab914c808f2e2d9f03263a3589dd0a1e6f48219d0a1302f67633b85a39b5e00`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

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

## `jetty:alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

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

## `jetty:jre7`

```console
$ docker pull jetty@sha256:0cffaa2981de05cec053f4aae07cb3b62c28963bac9616ffa196468192daa5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

```console
$ docker pull jetty@sha256:793a39d447c550197e189e4859979daf958cb785038761423301b777f391de99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200198655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61356a09318bc873105494d0f962d83480493b7b59ea7be4a68d43e25414a036`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:39:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 11:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:12:58 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:12:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:12:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:13:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 03:38:22 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:38:22 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:39:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Apr 2018 08:10:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Apr 2018 08:10:50 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Apr 2018 08:10:50 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Apr 2018 08:10:51 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Apr 2018 08:10:52 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Apr 2018 08:10:52 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Tue, 10 Apr 2018 08:10:52 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Tue, 10 Apr 2018 08:10:53 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Apr 2018 08:11:00 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Apr 2018 08:11:00 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Apr 2018 08:11:01 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Apr 2018 08:11:01 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Apr 2018 08:11:05 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Apr 2018 08:11:05 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Apr 2018 08:11:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 10 Apr 2018 08:11:07 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 10 Apr 2018 08:11:07 GMT
USER [jetty]
# Tue, 10 Apr 2018 08:11:08 GMT
EXPOSE 8080/tcp
# Tue, 10 Apr 2018 08:11:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Apr 2018 08:11:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb899b4df216ab398fb05547f86dc371db944cf53dea7913d2f4261ed09e2be`  
		Last Modified: Wed, 14 Mar 2018 00:34:40 GMT  
		Size: 19.3 MB (19266189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9837675e69408ed38a5cd50b7bad4aceb89b943ec4d0c6547d3da7c2911ce1fa`  
		Last Modified: Wed, 14 Mar 2018 13:15:40 GMT  
		Size: 795.6 KB (795622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d602d78cf3359ca712061598d8ff56eb3242af4ca83b5d1c650e8d2e37e70fe7`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0d228baacbc3d4fd9bb4ed7dda30fee6eb4cee8a615c3c1f03215c6e2c8478`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171ed19f6416aabe363128cc92d55cf9ab0dc552903edf97bcbce2c98a824bac`  
		Last Modified: Tue, 10 Apr 2018 04:06:54 GMT  
		Size: 117.5 MB (117493710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8420048a3000b926f426107a521f4a9d57d7182af0aa868c2013c8172bd3d1a2`  
		Last Modified: Tue, 10 Apr 2018 08:14:03 GMT  
		Size: 2.2 KB (2152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32890f55a02e9143f41898e933009983b5bc0332c0cb89e96c2c0d075029d0d2`  
		Last Modified: Tue, 10 Apr 2018 08:14:03 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b81ff08524472ccb8c681d5598e9da8c38bca0300aae348fc60de14986d121c`  
		Last Modified: Tue, 10 Apr 2018 08:14:02 GMT  
		Size: 10.0 MB (10028808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ad6bf7f7ed420412273a2a37ea6d5474b965c3545bd55772782ffb5da8e4c`  
		Last Modified: Tue, 10 Apr 2018 08:14:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249ad02c7b970c04da26747a5b46022405c2fbc002b6b5bcf8acfa371d342277`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b768d87d98d3187d56bd25af76b315cb03fa31ff0f07591989a45659fd3bec4f`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758a4fc0edcb1cf79dd78ea2ebd62ae6b9106c683638ad268004b13fa0ee9d5a`  
		Last Modified: Tue, 10 Apr 2018 08:14:01 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:cc7b14f6d76d384d1e42b82c3fddf1d693eb381e3817fbe618b38bb29f66888e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

```console
$ docker pull jetty@sha256:b8703e578f5841c3dea74226818067197c6580ce7bfcfcb81447c3a575f37653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225321706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91645e4dbc97e2d108789aeb7e1016778b8ca2f43038adf288551dfb09f6f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:16 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:16 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:43:23 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:23 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:43:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:43:25 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:43:25 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:43:25 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:43:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:43:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26edaee441d298cf23f389a5e427da5a790fd6181620be11247ba9057f2bfe`  
		Last Modified: Thu, 22 Mar 2018 02:47:35 GMT  
		Size: 8.4 MB (8398410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b02bc66ff79093d90567da7d2618a54c66cd32ea4d85084ce28c9571526816`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f5c7e485319f7d1280a88acddef1b31b77a96b054f04eccf85dd14fbd94e2`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f95ce9c1428447cf81a47930245ff7601e85356ff1fd95c44420b384398b5`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab914c808f2e2d9f03263a3589dd0a1e6f48219d0a1302f67633b85a39b5e00`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

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

## `jetty:latest`

```console
$ docker pull jetty@sha256:cc7b14f6d76d384d1e42b82c3fddf1d693eb381e3817fbe618b38bb29f66888e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

```console
$ docker pull jetty@sha256:b8703e578f5841c3dea74226818067197c6580ce7bfcfcb81447c3a575f37653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225321706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91645e4dbc97e2d108789aeb7e1016778b8ca2f43038adf288551dfb09f6f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 16:51:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Mar 2018 16:51:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 16:51:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Mar 2018 16:51:39 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:16 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:16 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:43:23 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:23 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:43:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:43:25 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:43:25 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:43:25 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:43:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:43:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7884228252b6cdad9d6a6ca2e4308bded172961e92d79f425598faca2b497e0e`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ec5efd5ca5ae290c49cae6bff4903155e55359f1455aa7904c58fe5478daa`  
		Last Modified: Tue, 20 Mar 2018 16:53:56 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26edaee441d298cf23f389a5e427da5a790fd6181620be11247ba9057f2bfe`  
		Last Modified: Thu, 22 Mar 2018 02:47:35 GMT  
		Size: 8.4 MB (8398410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b02bc66ff79093d90567da7d2618a54c66cd32ea4d85084ce28c9571526816`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f5c7e485319f7d1280a88acddef1b31b77a96b054f04eccf85dd14fbd94e2`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f95ce9c1428447cf81a47930245ff7601e85356ff1fd95c44420b384398b5`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab914c808f2e2d9f03263a3589dd0a1e6f48219d0a1302f67633b85a39b5e00`  
		Last Modified: Thu, 22 Mar 2018 02:47:34 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
