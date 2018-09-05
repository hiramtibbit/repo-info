## `jetty:jre7`

```console
$ docker pull jetty@sha256:eec02a9eca046128b0b7190fcef4f0ee748fb557e597304e11c23ae57795303b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `jetty:jre7` - linux; amd64

```console
$ docker pull jetty@sha256:a9e1723740b170987de46bed0306ca8dcbf5900ca7c7b903939478b3c0c2e792
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164421416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f774c1b54c13c2a743e6d57fba0b467964dd141757b23aec72ca7c46632e17ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:28:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:28:31 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:28:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:28:32 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:28:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:28:33 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 01:28:33 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 01:29:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 13:07:29 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 05 Sep 2018 13:07:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 05 Sep 2018 13:07:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 13:07:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 05 Sep 2018 13:07:31 GMT
WORKDIR /usr/local/jetty
# Wed, 05 Sep 2018 13:07:31 GMT
ENV JETTY_VERSION=9.2.25.v20180606
# Wed, 05 Sep 2018 13:07:31 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.25.v20180606/jetty-distribution-9.2.25.v20180606.tar.gz
# Wed, 05 Sep 2018 13:07:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 05 Sep 2018 13:07:35 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 05 Sep 2018 13:07:36 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 05 Sep 2018 13:07:37 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 05 Sep 2018 13:07:37 GMT
WORKDIR /var/lib/jetty
# Wed, 05 Sep 2018 13:07:41 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 05 Sep 2018 13:07:41 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 05 Sep 2018 13:07:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 05 Sep 2018 13:07:43 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 05 Sep 2018 13:07:43 GMT
USER [jetty]
# Wed, 05 Sep 2018 13:07:43 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 13:07:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:07:44 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd0da9e309152fec30f0ec7d6ae6dc9b19fd63cda2386b2bddac155eb220afb`  
		Last Modified: Wed, 05 Sep 2018 01:45:07 GMT  
		Size: 795.1 KB (795109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7768aae14ea1d8c01b2324ef50a991e6a14b142b7149509b9143b7128f65b5`  
		Last Modified: Wed, 05 Sep 2018 01:45:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2780f585e0f765770db388c55b317f1df7d9bbf660e9575322f850af9782e25`  
		Last Modified: Wed, 05 Sep 2018 01:45:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ed720afebadff2dc8a1885ccf5179e46f59afcc2cec410472b9a2549ad9829`  
		Last Modified: Wed, 05 Sep 2018 01:45:19 GMT  
		Size: 81.8 MB (81800285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb81a484200876d70022ea52e18909e1f9008d3cd49c655ed9549f8276aadc6`  
		Last Modified: Wed, 05 Sep 2018 13:10:21 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f36f0d882f285feb9352dbd23d1dfdc0d0630e4b0b5b8aa8c69b799a555328`  
		Last Modified: Wed, 05 Sep 2018 13:10:21 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a12bde7ada832ad7d1f41219147330bccda2732a7e1f8b8ea6a30c4b255b58`  
		Last Modified: Wed, 05 Sep 2018 13:10:21 GMT  
		Size: 10.0 MB (10029398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccabc138008b714d71644831456492601f110ac9238bfe4d20679d692260cf60`  
		Last Modified: Wed, 05 Sep 2018 13:10:20 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a6bd854cca9848e4a5cbf9b816aff73c24f654e5cf012c7831a02ce0b18460`  
		Last Modified: Wed, 05 Sep 2018 13:10:20 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c69276438ee1acd01ffa659bc6394de3097a6ac57c2390d3f170394fbb35faf`  
		Last Modified: Wed, 05 Sep 2018 13:10:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775ff2b6282fbd7a84bc189eac4c5ba3d8587be03e284e343f9f83f99b9c80fb`  
		Last Modified: Wed, 05 Sep 2018 13:10:20 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; arm variant v5

```console
$ docker pull jetty@sha256:82f524135c22ac7e048c1428ef364df467cb0e36574c847f1ad888cc48eb7eee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151766649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eeb69656e4ab426a41a64bb97d87ebedb9fb3d8758e77ece8c7a3648615bffb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 17 Jul 2018 08:50:04 GMT
ADD file:4f71ce5a537d5b850f449dc85c4ab5092c673eb0784e112eaeed004c1053c959 in / 
# Tue, 17 Jul 2018 08:50:05 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:41:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:47:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:47:14 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:47:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:47:16 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:47:16 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:47:17 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 12:47:17 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 12:48:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 13:54:48 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 17 Jul 2018 13:54:48 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Jul 2018 13:54:49 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 13:54:50 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 17 Jul 2018 13:54:50 GMT
WORKDIR /usr/local/jetty
# Tue, 17 Jul 2018 13:54:51 GMT
ENV JETTY_VERSION=9.2.25.v20180606
# Tue, 17 Jul 2018 13:54:51 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.25.v20180606/jetty-distribution-9.2.25.v20180606.tar.gz
# Tue, 17 Jul 2018 13:54:52 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 17 Jul 2018 13:54:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 17 Jul 2018 13:54:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Jul 2018 13:54:56 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 17 Jul 2018 13:54:57 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Jul 2018 13:55:00 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 17 Jul 2018 13:55:00 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Jul 2018 13:55:01 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 17 Jul 2018 13:55:02 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 17 Jul 2018 13:55:03 GMT
USER [jetty]
# Tue, 17 Jul 2018 13:55:03 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 13:55:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:55:04 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6517acaf0fe60ef69bfcf8dfa76c43b4a1e5b4fedea418026ded2b0fe506ac2b`  
		Last Modified: Tue, 17 Jul 2018 09:02:44 GMT  
		Size: 52.4 MB (52447839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951a82006f9a5d9219f349459f2e0e765002a1f68a81eefc081835abb73adc94`  
		Last Modified: Tue, 17 Jul 2018 11:58:23 GMT  
		Size: 17.0 MB (17028700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1f45a4b73b3984ea03f48b009cb3206fdc46bca1efd0f5b371696778e73612`  
		Last Modified: Tue, 17 Jul 2018 12:59:01 GMT  
		Size: 787.9 KB (787876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23cad01a887295809e194f1fadb35d496cbe69cba9cc5b3619c63f5e721bce18`  
		Last Modified: Tue, 17 Jul 2018 12:59:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cafa928a019d24eec93b686721a918078cb67eb84b903f3201f932f1159799`  
		Last Modified: Tue, 17 Jul 2018 12:59:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a101d02aad9766963574586ffd4ddf5fef245a5a1fe98a780b29dda1c80962`  
		Last Modified: Tue, 17 Jul 2018 12:59:15 GMT  
		Size: 71.5 MB (71466785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfa7225f13014578775f5744682865a4cc3f734d3a7bfc5a62621079f2cb01c`  
		Last Modified: Tue, 17 Jul 2018 13:58:02 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b9f0edca9010c90c6643620f75f5bc12fa4542ee5ea5c59da1267f97c0c54`  
		Last Modified: Tue, 17 Jul 2018 13:58:02 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87ee7594f925c12dd7a033697b3a63f245d61120376cd750c72c295be8e5fcf`  
		Last Modified: Tue, 17 Jul 2018 13:58:03 GMT  
		Size: 10.0 MB (10029551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12d82f62a9da079fbf9d69e1e16eb018b6d41cf95a14664bcc82a9635ae6bb8`  
		Last Modified: Tue, 17 Jul 2018 13:58:01 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16022db8740e6f2295d376aea4e1ec0c9e41666fac2dfe4adeb713964ad5377`  
		Last Modified: Tue, 17 Jul 2018 13:58:01 GMT  
		Size: 1.5 KB (1541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4ef7085bd6664876f424abbc405a2738b0161dec132a6cce1766a70878aa94`  
		Last Modified: Tue, 17 Jul 2018 13:58:02 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1e6d451b9e8e0aad9d614b6da03dcc1ef28865a5b5fabfacbf3d18be4cae8`  
		Last Modified: Tue, 17 Jul 2018 13:58:02 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; arm variant v7

```console
$ docker pull jetty@sha256:e98af7d0bb765776752ed77a06866b95eeaafa1d31ffda94a2a8f894581748a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147692660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c641bafb3f1b7f7f46b0c6ffdeab113ba23342417b2b4d7ad9d3a90eb22480d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 13:29:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:29:50 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:29:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:29:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:29:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 13:29:53 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 13:29:53 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 13:30:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 17:49:00 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 05 Sep 2018 17:49:00 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 05 Sep 2018 17:49:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 17:49:01 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 05 Sep 2018 17:49:02 GMT
WORKDIR /usr/local/jetty
# Wed, 05 Sep 2018 17:49:02 GMT
ENV JETTY_VERSION=9.2.25.v20180606
# Wed, 05 Sep 2018 17:49:02 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.25.v20180606/jetty-distribution-9.2.25.v20180606.tar.gz
# Wed, 05 Sep 2018 17:49:02 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 05 Sep 2018 17:49:05 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 05 Sep 2018 17:49:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 05 Sep 2018 17:49:06 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 05 Sep 2018 17:49:12 GMT
WORKDIR /var/lib/jetty
# Wed, 05 Sep 2018 17:49:15 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 05 Sep 2018 17:49:16 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 05 Sep 2018 17:49:17 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 05 Sep 2018 17:49:18 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 05 Sep 2018 17:49:19 GMT
USER [jetty]
# Wed, 05 Sep 2018 17:49:19 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 17:49:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 17:49:20 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002878cce7e14ca1293cd555eec033a6494913ae05e9b1b6a76701bb86dae153`  
		Last Modified: Wed, 05 Sep 2018 12:53:36 GMT  
		Size: 16.7 MB (16712872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721353007634f8e9c76f7eaf6159ece991cbe2e165560187395475b4b2f2fc6`  
		Last Modified: Wed, 05 Sep 2018 13:46:11 GMT  
		Size: 762.4 KB (762439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd479552aec0ff72f2583beeb88d1013708ef33b518259bbae606fc92e8939`  
		Last Modified: Wed, 05 Sep 2018 13:46:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b60c13815e5f595f351827aadea4acd5958789c3fce118840125bf078f7837d`  
		Last Modified: Wed, 05 Sep 2018 13:46:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24dc0ccbc7db75917be485639fe4e9028958b377e7e76b5cc43229dc48eb6b5b`  
		Last Modified: Wed, 05 Sep 2018 13:46:25 GMT  
		Size: 70.0 MB (69993464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090bc2f3067f927c026cceaafde8ab8753d34d524d7109244b684e4c609c8462`  
		Last Modified: Wed, 05 Sep 2018 17:49:42 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522aca8167205fcb8d11b38c1ace9ac22558d57ad098332282e02888a26f1e8d`  
		Last Modified: Wed, 05 Sep 2018 17:49:42 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c2946a4c2b4556301378cdcda37b0119d14fd06e89f3d5a940f6263b1e881f`  
		Last Modified: Wed, 05 Sep 2018 17:49:41 GMT  
		Size: 10.0 MB (10029595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3d520c776753464a5ad9056e1df79464ed8509cc29c76870997c42f5e69a2e`  
		Last Modified: Wed, 05 Sep 2018 17:49:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263245fd05c7d602f493f4c052355dc9667f0206866dcfb7dd43367f2df5fafd`  
		Last Modified: Wed, 05 Sep 2018 17:49:40 GMT  
		Size: 1.5 KB (1540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96447c520450724f69c5ca3eb6dd43cf62e7e202cae76e71e3d26f927263772c`  
		Last Modified: Wed, 05 Sep 2018 17:49:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6ec794fb4214bdbfe1200ea581105db2b19de052ba873f4c0638e77de76096`  
		Last Modified: Wed, 05 Sep 2018 17:49:40 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:221adbc20b9aad2ad244e114b130eb38ad3e0b4dbf3639e3ecf7687ee16ea687
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152321922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb8b585021706c13bece707d6a0392f17083e8519858b4802cdb99f57731c07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:23:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:23:13 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:23:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:23:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:23:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 09:27:47 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:27:48 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:33:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 10:23:09 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 12 Jun 2018 10:23:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 12 Jun 2018 10:23:11 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Jun 2018 10:23:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 12 Jun 2018 10:23:15 GMT
WORKDIR /usr/local/jetty
# Wed, 27 Jun 2018 09:17:28 GMT
ENV JETTY_VERSION=9.2.25.v20180606
# Wed, 27 Jun 2018 09:17:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.25.v20180606/jetty-distribution-9.2.25.v20180606.tar.gz
# Wed, 27 Jun 2018 09:17:30 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 27 Jun 2018 09:17:38 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 09:17:39 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 27 Jun 2018 09:17:42 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 27 Jun 2018 09:17:42 GMT
WORKDIR /var/lib/jetty
# Wed, 27 Jun 2018 09:17:47 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 09:17:47 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 27 Jun 2018 09:17:49 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 27 Jun 2018 09:17:51 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 27 Jun 2018 09:17:52 GMT
USER [jetty]
# Wed, 27 Jun 2018 09:17:52 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 09:17:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 09:17:54 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5a7eee17f6bef9ce5302547df05502e21dcac9b6267c7278c219ee2c708b37`  
		Last Modified: Sat, 05 May 2018 13:08:41 GMT  
		Size: 789.2 KB (789162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ce7463a7e9eae4cc97131c58d9692029eef5b8f004c62ed65742a00c70773e`  
		Last Modified: Sat, 05 May 2018 13:08:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882b9550551affc5f6b6d20713252201f4d2633d8be9a4763e11fcb60f99f1a`  
		Last Modified: Sat, 05 May 2018 13:08:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cca9fb180900266ac32872326adbd48d14c1186f2b2571fdfc703a65cd865a`  
		Last Modified: Tue, 12 Jun 2018 09:48:52 GMT  
		Size: 72.8 MB (72836916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e79b899b84a8ac261126b52391fba36a37fca59bb6bc1015c6f2a901b2efe5`  
		Last Modified: Tue, 12 Jun 2018 10:24:26 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9b381842fd30bdc8d3a546a0144a5567bfa9837103bfa7b0863992c5f7d31a6`  
		Last Modified: Tue, 12 Jun 2018 10:24:25 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e225bc6bfb97355112754217a6d2e5aae4bdbb5d3dbeca26757379961b908d50`  
		Last Modified: Wed, 27 Jun 2018 09:24:19 GMT  
		Size: 10.0 MB (10029390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c678df3d2025f456444959ec88bc93026d2ede57fd75a8a8b421191690859252`  
		Last Modified: Wed, 27 Jun 2018 09:24:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297671764b8564fb3479fabab1e69975955cbf0ff840e9f26831bea5c6bc52e4`  
		Last Modified: Wed, 27 Jun 2018 09:24:17 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a7452b19bbdfd31f21be58d22437fff2dcd0cdfc428a62101097a1db8a15ea`  
		Last Modified: Wed, 27 Jun 2018 09:24:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b993edc356c5042b3f20171ef89cf70191e2c919422569ddcd8e49984e944b4`  
		Last Modified: Wed, 27 Jun 2018 09:24:17 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; 386

```console
$ docker pull jetty@sha256:d8247bf684d94c3b90d375fae2c1f3751da1bf7628a922b7175bd3093d4cd787
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176791437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85dbdf34b5cd9dc48de57bbda08076645d9224abe8bd25493426ae0c58a7dd24`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:25:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:22:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:22:38 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:22:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:22:40 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:22:40 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:22:40 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 18:22:41 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 18:24:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 19:23:55 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 17 Jul 2018 19:23:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Jul 2018 19:23:55 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:23:56 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 17 Jul 2018 19:23:57 GMT
WORKDIR /usr/local/jetty
# Tue, 17 Jul 2018 19:23:57 GMT
ENV JETTY_VERSION=9.2.25.v20180606
# Tue, 17 Jul 2018 19:23:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.25.v20180606/jetty-distribution-9.2.25.v20180606.tar.gz
# Tue, 17 Jul 2018 19:23:57 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 17 Jul 2018 19:24:00 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 17 Jul 2018 19:24:01 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Jul 2018 19:24:02 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 17 Jul 2018 19:24:02 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Jul 2018 19:24:04 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 17 Jul 2018 19:24:04 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Jul 2018 19:24:05 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 17 Jul 2018 19:24:05 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 17 Jul 2018 19:24:06 GMT
USER [jetty]
# Tue, 17 Jul 2018 19:24:06 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 19:24:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 19:24:06 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61274d86633cfcbd74890e3b94b540ad3cdbcb6a769aa68579f642fd13a32eb1`  
		Last Modified: Tue, 17 Jul 2018 15:08:53 GMT  
		Size: 19.8 MB (19832967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa578fa39562bac19e4019a2bd931df8c55f3116666a151a1123d8d00a91114`  
		Last Modified: Tue, 17 Jul 2018 18:55:47 GMT  
		Size: 798.1 KB (798134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cdb3af6e80c82915e792502906a429eae7719e121e2b816e474c14e5a83707`  
		Last Modified: Tue, 17 Jul 2018 18:55:47 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6697cbc80da7454586efc9149de0bb7521a4291d5d23df729cd2db9fbc36ae`  
		Last Modified: Tue, 17 Jul 2018 18:55:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff9f334684485d52080f4d6b711cda74bbf08295ba845b426a5af06356c9907`  
		Last Modified: Tue, 17 Jul 2018 18:56:11 GMT  
		Size: 91.6 MB (91641963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7d780b7732421ca5b4af454128633e1d6efca583d9f07e994223eabb75000a`  
		Last Modified: Tue, 17 Jul 2018 19:29:21 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec464b822bcd0b216dd447606dc711ae99f56bbc6b41ba48db90a81e7162658`  
		Last Modified: Tue, 17 Jul 2018 19:29:21 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ee5db5f49c8e770725c4f9a43773b9a0d2f7488bc9b29e971dde17bdd74856`  
		Last Modified: Tue, 17 Jul 2018 19:29:20 GMT  
		Size: 10.0 MB (10029377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e534dae49b1dafff705d0febaf584e376a9324fc9550a0ee0d13dedd3b0a0ee7`  
		Last Modified: Tue, 17 Jul 2018 19:29:19 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d957d19982c663f7c353ad045d62c2e8e8938d7033a5d6731a6f74b1d861722`  
		Last Modified: Tue, 17 Jul 2018 19:29:18 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89d1a2e58da72d3be7dd672db9bfda2921fed1427a6ac0e01bc02204df45162`  
		Last Modified: Tue, 17 Jul 2018 19:29:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22f30fec949b3507fb633a35b4d82f2c38ac58b6d8d966180a9273003a27889`  
		Last Modified: Tue, 17 Jul 2018 19:29:18 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; ppc64le

```console
$ docker pull jetty@sha256:f1f6fd87a0472a790f42713c0aabb69860097c0dc2fdba2b5d20de613538328d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155753953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13aa6eb50fb99fb5deb196924ec24b338b5b0d710168c12102241a5bad9b3de2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:58:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 14:40:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:40:50 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:40:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:40:54 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:40:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 08:54:35 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 08:54:38 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:00:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 09:45:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 12 Jun 2018 09:45:09 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 12 Jun 2018 09:45:10 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Jun 2018 09:45:13 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 12 Jun 2018 09:45:14 GMT
WORKDIR /usr/local/jetty
# Wed, 27 Jun 2018 08:51:53 GMT
ENV JETTY_VERSION=9.2.25.v20180606
# Wed, 27 Jun 2018 08:51:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.25.v20180606/jetty-distribution-9.2.25.v20180606.tar.gz
# Wed, 27 Jun 2018 08:51:55 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 27 Jun 2018 08:52:02 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 08:52:04 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 27 Jun 2018 08:52:08 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 27 Jun 2018 08:52:09 GMT
WORKDIR /var/lib/jetty
# Wed, 27 Jun 2018 08:52:14 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 08:52:15 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 27 Jun 2018 08:52:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 27 Jun 2018 08:52:20 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 27 Jun 2018 08:52:20 GMT
USER [jetty]
# Wed, 27 Jun 2018 08:52:22 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 08:52:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 08:52:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4330bc6a5e0bcfbe95c4a5b5982f6866f41b6cdc2d95042061dac233ebb605c`  
		Last Modified: Sat, 05 May 2018 10:53:05 GMT  
		Size: 17.6 MB (17586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62808c556cbd0edb13c1bdc0672028bc333139d66cdd2f508eb98becf5d5ecd4`  
		Last Modified: Sat, 05 May 2018 15:17:37 GMT  
		Size: 791.0 KB (790978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bd439f7dc98417f8b4e0b334b6a8f3e349b1c8bd81c4af83e0344ee9f9bd0e`  
		Last Modified: Sat, 05 May 2018 15:17:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802e363d6798794314c4626d0bf023452db3024b735b510b634d6d21866d6eda`  
		Last Modified: Sat, 05 May 2018 15:17:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d4683fa5e55a3169ffd52657f1ee2158e7c4eb6143833439074d9ae4cd59f`  
		Last Modified: Tue, 12 Jun 2018 09:15:01 GMT  
		Size: 73.9 MB (73947674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b504edee9910b572ac8deebda0f5edc7037227f5b71647daf6e6d26efad90`  
		Last Modified: Tue, 12 Jun 2018 09:46:06 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e02996b21e4e6d0380a31a8a38a4c2bfbadc18f4abac1e9070f903e75e871e`  
		Last Modified: Tue, 12 Jun 2018 09:46:05 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170ec30289030d3ab89a33f70b3aa3f7b68acd44defee67385c3b26747b5ea63`  
		Last Modified: Wed, 27 Jun 2018 08:57:10 GMT  
		Size: 10.0 MB (10029572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12002ad97ba66e2ee000a0e1e6af59b4861997608706ff91fcb4b1bf6c6fe201`  
		Last Modified: Wed, 27 Jun 2018 08:57:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f9753c51d4359b8774d8b3461684287a8f988edde6e42f503682e60b55a0dd`  
		Last Modified: Wed, 27 Jun 2018 08:57:08 GMT  
		Size: 1.5 KB (1542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fbad969b57e9e37893e9fc91d72d38d2143f13286a19e87d1eb173fc043297`  
		Last Modified: Wed, 27 Jun 2018 08:57:08 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc82c61c95ef6412c35525205cddbc9524341a35ecac171790035cea68920ee8`  
		Last Modified: Wed, 27 Jun 2018 08:57:08 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; s390x

```console
$ docker pull jetty@sha256:c1636761696c7094cc3f6a0652aee78f236a118da8ea84202a95d369d70cca36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156767385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a128b8a6f822e8db326ce7f15ba10a91e0d566fed405abd4150ba1ab705042be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:30:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 13:16:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:16:57 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:16:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:16:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 11:55:55 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 11:55:55 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 11:56:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 12:22:19 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 12 Jun 2018 12:22:19 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 12 Jun 2018 12:22:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Jun 2018 12:22:20 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 12 Jun 2018 12:22:20 GMT
WORKDIR /usr/local/jetty
# Wed, 27 Jun 2018 11:56:43 GMT
ENV JETTY_VERSION=9.2.25.v20180606
# Wed, 27 Jun 2018 11:56:43 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.25.v20180606/jetty-distribution-9.2.25.v20180606.tar.gz
# Wed, 27 Jun 2018 11:56:43 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 27 Jun 2018 11:56:45 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 11:56:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 27 Jun 2018 11:56:46 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 27 Jun 2018 11:56:46 GMT
WORKDIR /var/lib/jetty
# Wed, 27 Jun 2018 11:56:48 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 11:56:49 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 27 Jun 2018 11:56:49 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 27 Jun 2018 11:56:50 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 27 Jun 2018 11:56:50 GMT
USER [jetty]
# Wed, 27 Jun 2018 11:56:50 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 11:56:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:56:50 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37be7fda6df150d239266145f4a84caa9f37d32c535a19acbb408973995140fd`  
		Last Modified: Sat, 05 May 2018 12:45:40 GMT  
		Size: 17.8 MB (17787031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ee0611e7e673e3a0c80e59f3c1428955b30858e5eeb1b9ae8f76b149e0fdaf`  
		Last Modified: Sat, 05 May 2018 13:32:33 GMT  
		Size: 804.0 KB (804004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f05e4588b7d9986cddfc7fe413479b1207d65cd974d48345294cd4a91ab26`  
		Last Modified: Sat, 05 May 2018 13:32:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dfe35e52e265c6289d75bd0d3f4d8cd4e97a2d59980978230c597277a93560`  
		Last Modified: Sat, 05 May 2018 13:32:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d2de52a9757f90b0c0901a60c17b39074186b037e07a5fd69d2a736ed9e9eb`  
		Last Modified: Tue, 12 Jun 2018 12:02:32 GMT  
		Size: 73.7 MB (73675365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f47d8c31fe847fe38c42c5c05993150cbcabe32c15c2d4470796bc8a1a3730`  
		Last Modified: Tue, 12 Jun 2018 12:22:43 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d99d1b7cc13de476fd72ce63ff54110ecf808d93c9441946b0ce0e5fdac0ed`  
		Last Modified: Tue, 12 Jun 2018 12:22:42 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39091ab4a5d086a6efe1f971c06a2cf28327d766f6f3d0491bcd1859a0f66702`  
		Last Modified: Wed, 27 Jun 2018 11:59:03 GMT  
		Size: 10.0 MB (10029369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f7f35135a3afc46c8a6eaea3cae4f5831bc49f4c3cda7ad1f06f4fa79b2e0`  
		Last Modified: Wed, 27 Jun 2018 11:59:00 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b6d020f904230f3896c836231994a4cc17931c6d25ad31241eccb477bd261d`  
		Last Modified: Wed, 27 Jun 2018 11:59:00 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fd7793bb9fc8ea1c104e9ca830671435146b13f798f2d423aae098cbdb7cc0`  
		Last Modified: Wed, 27 Jun 2018 11:59:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360f287abb670a62a6afe65419600a745161637f169dee49c1c48f01ce484f95`  
		Last Modified: Wed, 27 Jun 2018 11:59:00 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
