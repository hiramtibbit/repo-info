<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jetty`

-	[`jetty:9`](#jetty9)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.28`](#jetty9228)
-	[`jetty:9.2.28-jre7`](#jetty9228-jre7)
-	[`jetty:9.2.28-jre8`](#jetty9228-jre8)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9.3.27`](#jetty9327)
-	[`jetty:9.3.27-alpine`](#jetty9327-alpine)
-	[`jetty:9.3.27-jre8`](#jetty9327-jre8)
-	[`jetty:9.3.27-jre8-alpine`](#jetty9327-jre8-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9.4`](#jetty94)
-	[`jetty:9.4.18`](#jetty9418)
-	[`jetty:9.4.18-alpine`](#jetty9418-alpine)
-	[`jetty:9.4.18-jre11`](#jetty9418-jre11)
-	[`jetty:9.4.18-jre8`](#jetty9418-jre8)
-	[`jetty:9.4.18-jre8-alpine`](#jetty9418-jre8-alpine)
-	[`jetty:9.4-alpine`](#jetty94-alpine)
-	[`jetty:9.4-jre11`](#jetty94-jre11)
-	[`jetty:9.4-jre8`](#jetty94-jre8)
-	[`jetty:9.4-jre8-alpine`](#jetty94-jre8-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9-jre11`](#jetty9-jre11)
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
$ docker pull jetty@sha256:27229d2b1f37ccdd7c94b2e0c5e177ac8be57c44f918ca71af1e69b83eeece96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

```console
$ docker pull jetty@sha256:43265b4747c961cb72e2c6a483fa03a9262ab76cc5bee0f13d2e0fa9d848726b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192920927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f04cf81e0a92cbe2a240c1f3ef396b60f9981afaf1447e7834e947b0857b64a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:54 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:20:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:20:43 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:20:45 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:20:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:20:46 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:20:46 GMT
USER jetty
# Fri, 03 May 2019 21:20:46 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:20:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfe2ee238ffb71e5197c309f52461509843031cfdab9bffa5b8a7effef6aa2d`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 9.4 MB (9424434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3ff2e4faa736381c86b92cedf88f04de3cfb29bda03204084b0af32e0ec18b`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c5ea6f61fdbbff62ae8d7a0f59773cc5a17f2ae3cef0ab06109bb5ec0c7de4`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914e32838c42b1d135cf51d1587b850f4087810ec6d1ef56bff487620a4c5e5`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42520ba664ff5272ac3d55aa5cf3474b0334b3f1fdb8a400435fc1a5390eba9f`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:3aa8eae470f8afaa7d1d2a3c8d6d0e25b933e5b704a4e222002b272717320beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

```console
$ docker pull jetty@sha256:aa9a6aefbb9b521de25e7eac89b3de60ffd9d2f26d9d036063fdb672e3732acd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193531582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820d2997d952b684ecc038c19361b6ff5a2d7b4d718b0c969da67ec88613cb39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:43 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:44 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:46 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:46 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:47 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:47 GMT
USER jetty
# Fri, 03 May 2019 21:21:47 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1757cf4fdec2117a5013a087a3ea9f02aca2d0598a93550b415b45f0f83c7a0`  
		Last Modified: Fri, 03 May 2019 21:22:51 GMT  
		Size: 10.0 MB (10035615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015d7a4f7cb2c02667823ef3a93f33f137da36bc17152ebbfd288fae66fc8929`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062763f85eb135697e3a1071948241e581bb59b1bcc76f85db11f9bae6d5a18e`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab79ef630d15e36aecd273c5246a40c497bd399c7654e257ff620a5ede9c5b7`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbf749de9c32917aa6b8d61a426fd2e4964d10a900aba3ed3d88f9a209482ee`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.28`

```console
$ docker pull jetty@sha256:3aa8eae470f8afaa7d1d2a3c8d6d0e25b933e5b704a4e222002b272717320beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.28` - linux; amd64

```console
$ docker pull jetty@sha256:aa9a6aefbb9b521de25e7eac89b3de60ffd9d2f26d9d036063fdb672e3732acd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193531582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820d2997d952b684ecc038c19361b6ff5a2d7b4d718b0c969da67ec88613cb39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:43 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:44 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:46 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:46 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:47 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:47 GMT
USER jetty
# Fri, 03 May 2019 21:21:47 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1757cf4fdec2117a5013a087a3ea9f02aca2d0598a93550b415b45f0f83c7a0`  
		Last Modified: Fri, 03 May 2019 21:22:51 GMT  
		Size: 10.0 MB (10035615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015d7a4f7cb2c02667823ef3a93f33f137da36bc17152ebbfd288fae66fc8929`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062763f85eb135697e3a1071948241e581bb59b1bcc76f85db11f9bae6d5a18e`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab79ef630d15e36aecd273c5246a40c497bd399c7654e257ff620a5ede9c5b7`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbf749de9c32917aa6b8d61a426fd2e4964d10a900aba3ed3d88f9a209482ee`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.28-jre7`

```console
$ docker pull jetty@sha256:63da09fc67a4717791ddd42e4dcb4c9b2fa6d40eb061488ff698e082d9142c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.28-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:4796df5344cc50f0bbcc357c15e5baa63db7cd7abd18003f2cd0907527f90abe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164647005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ac44829ac2b3ffbd4e80824b4fb8f7430452aca4c77278b94735dcd6a2c57e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:59:59 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 01:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 01:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 01:00:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:37:02 GMT
ENV JAVA_VERSION=7u211
# Wed, 27 Mar 2019 23:37:02 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 27 Mar 2019 23:39:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:09:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:09:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:09:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:09:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:09:38 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:51 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Fri, 03 May 2019 21:21:52 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Fri, 03 May 2019 21:21:52 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:54 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:55 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:57 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:57 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:58 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:58 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:58 GMT
USER jetty
# Fri, 03 May 2019 21:21:58 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe5b9a5ae4df86ade5163499bec6552c354611960eabfc7f1391f9e9f57945`  
		Last Modified: Tue, 26 Mar 2019 23:30:21 GMT  
		Size: 17.5 MB (17541227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92748c09714e5ff3525426b1db779e7937b629687255e3c336882349d1b686ab`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 795.2 KB (795203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062f1282bf9c8ade4b7259d5d902417562965db5d8fb6fd3492dc251a5d9c752`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94f42f0e754f4268a5de994bfff55e50179a24e32ea026e9091b0548fbb67de`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b21701c8fcc738fdd0b65a64b928d6cbe799d227beb9293910716d00c6b7f7`  
		Last Modified: Wed, 27 Mar 2019 23:48:53 GMT  
		Size: 81.9 MB (81886254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b037a1989b5f1156ef0971c6730187b4cdaf98c41872b92f2dad843b6efbb4`  
		Last Modified: Thu, 28 Mar 2019 00:10:45 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01487e8de4c8e8d88389c43fcc6a173d8515df1b370b0ece52be72a438f3739`  
		Last Modified: Thu, 28 Mar 2019 00:10:45 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dc0b961172510752ccd0373ec9a7e7905f4bb94a58c8ad334c3d62b3a592e0`  
		Last Modified: Fri, 03 May 2019 21:22:57 GMT  
		Size: 10.0 MB (10035664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85fa592830fc8e0d9433afbe30f7169dbcc426f3c97d913482afb9a299c68`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19351be52b25233a3343078157f0a7e4c04501e361906c8362d567d5c392b802`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ff41837b92f9fa13506ffe5749c1d6bf6f174219dc34f077813b34f635ac35`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d00e0df05e97ab460d10f4fed63ae2c7aac426b0895bd4a11bfc187141527e`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.28-jre8`

```console
$ docker pull jetty@sha256:3aa8eae470f8afaa7d1d2a3c8d6d0e25b933e5b704a4e222002b272717320beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.28-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:aa9a6aefbb9b521de25e7eac89b3de60ffd9d2f26d9d036063fdb672e3732acd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193531582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820d2997d952b684ecc038c19361b6ff5a2d7b4d718b0c969da67ec88613cb39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:43 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:44 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:46 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:46 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:47 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:47 GMT
USER jetty
# Fri, 03 May 2019 21:21:47 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1757cf4fdec2117a5013a087a3ea9f02aca2d0598a93550b415b45f0f83c7a0`  
		Last Modified: Fri, 03 May 2019 21:22:51 GMT  
		Size: 10.0 MB (10035615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015d7a4f7cb2c02667823ef3a93f33f137da36bc17152ebbfd288fae66fc8929`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062763f85eb135697e3a1071948241e581bb59b1bcc76f85db11f9bae6d5a18e`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab79ef630d15e36aecd273c5246a40c497bd399c7654e257ff620a5ede9c5b7`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbf749de9c32917aa6b8d61a426fd2e4964d10a900aba3ed3d88f9a209482ee`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:63da09fc67a4717791ddd42e4dcb4c9b2fa6d40eb061488ff698e082d9142c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:4796df5344cc50f0bbcc357c15e5baa63db7cd7abd18003f2cd0907527f90abe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164647005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ac44829ac2b3ffbd4e80824b4fb8f7430452aca4c77278b94735dcd6a2c57e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:59:59 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 01:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 01:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 01:00:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:37:02 GMT
ENV JAVA_VERSION=7u211
# Wed, 27 Mar 2019 23:37:02 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 27 Mar 2019 23:39:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:09:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:09:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:09:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:09:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:09:38 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:51 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Fri, 03 May 2019 21:21:52 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Fri, 03 May 2019 21:21:52 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:54 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:55 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:57 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:57 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:58 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:58 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:58 GMT
USER jetty
# Fri, 03 May 2019 21:21:58 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe5b9a5ae4df86ade5163499bec6552c354611960eabfc7f1391f9e9f57945`  
		Last Modified: Tue, 26 Mar 2019 23:30:21 GMT  
		Size: 17.5 MB (17541227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92748c09714e5ff3525426b1db779e7937b629687255e3c336882349d1b686ab`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 795.2 KB (795203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062f1282bf9c8ade4b7259d5d902417562965db5d8fb6fd3492dc251a5d9c752`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94f42f0e754f4268a5de994bfff55e50179a24e32ea026e9091b0548fbb67de`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b21701c8fcc738fdd0b65a64b928d6cbe799d227beb9293910716d00c6b7f7`  
		Last Modified: Wed, 27 Mar 2019 23:48:53 GMT  
		Size: 81.9 MB (81886254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b037a1989b5f1156ef0971c6730187b4cdaf98c41872b92f2dad843b6efbb4`  
		Last Modified: Thu, 28 Mar 2019 00:10:45 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01487e8de4c8e8d88389c43fcc6a173d8515df1b370b0ece52be72a438f3739`  
		Last Modified: Thu, 28 Mar 2019 00:10:45 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dc0b961172510752ccd0373ec9a7e7905f4bb94a58c8ad334c3d62b3a592e0`  
		Last Modified: Fri, 03 May 2019 21:22:57 GMT  
		Size: 10.0 MB (10035664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85fa592830fc8e0d9433afbe30f7169dbcc426f3c97d913482afb9a299c68`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19351be52b25233a3343078157f0a7e4c04501e361906c8362d567d5c392b802`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ff41837b92f9fa13506ffe5749c1d6bf6f174219dc34f077813b34f635ac35`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d00e0df05e97ab460d10f4fed63ae2c7aac426b0895bd4a11bfc187141527e`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:3aa8eae470f8afaa7d1d2a3c8d6d0e25b933e5b704a4e222002b272717320beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:aa9a6aefbb9b521de25e7eac89b3de60ffd9d2f26d9d036063fdb672e3732acd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193531582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820d2997d952b684ecc038c19361b6ff5a2d7b4d718b0c969da67ec88613cb39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Fri, 03 May 2019 21:21:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:43 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:44 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:46 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:46 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:47 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:47 GMT
USER jetty
# Fri, 03 May 2019 21:21:47 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1757cf4fdec2117a5013a087a3ea9f02aca2d0598a93550b415b45f0f83c7a0`  
		Last Modified: Fri, 03 May 2019 21:22:51 GMT  
		Size: 10.0 MB (10035615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015d7a4f7cb2c02667823ef3a93f33f137da36bc17152ebbfd288fae66fc8929`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062763f85eb135697e3a1071948241e581bb59b1bcc76f85db11f9bae6d5a18e`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab79ef630d15e36aecd273c5246a40c497bd399c7654e257ff620a5ede9c5b7`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbf749de9c32917aa6b8d61a426fd2e4964d10a900aba3ed3d88f9a209482ee`  
		Last Modified: Fri, 03 May 2019 21:22:50 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:c7c25ab62c53b75260b6116c4ea7b606c19e3139945424e0fd615b5429f9ad59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

```console
$ docker pull jetty@sha256:c6c5264e5dd330e94f556faf19d51fed62c82277f58b55cb9e6c83eb0313f10b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191608681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809c5aeccfd94235db05e171fc6ce40ebcf86c2c698349131c2475a524378080`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:15 GMT
ENV JETTY_VERSION=9.3.27.v20190418
# Fri, 03 May 2019 21:21:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.27.v20190418/jetty-distribution-9.3.27.v20190418.tar.gz
# Fri, 03 May 2019 21:21:16 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:21 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:23 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:24 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:24 GMT
USER jetty
# Fri, 03 May 2019 21:21:25 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbe071d2e46064532de4e2f8b630f674a78109a7c0a68245d723655116c85cb`  
		Last Modified: Fri, 03 May 2019 21:22:39 GMT  
		Size: 8.1 MB (8112431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445dd144fa3118cc1a5a92fa7a3520d9b697c5d2d653f34dd3769281e0d4d2c7`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaff10a27aeffec1dc0095154b9e50a6d91f67a1e85495bbc5fb2b2eccb19f76`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cc0e740ebc944c2095408c34eaf2ee7f5775df5c02f4d4e3c5c6d80f79eb20`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a465b019a959e40f8789cfe74a373387b3aad326cbb48a9802bd29f77500e1f`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.27`

```console
$ docker pull jetty@sha256:c7c25ab62c53b75260b6116c4ea7b606c19e3139945424e0fd615b5429f9ad59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.27` - linux; amd64

```console
$ docker pull jetty@sha256:c6c5264e5dd330e94f556faf19d51fed62c82277f58b55cb9e6c83eb0313f10b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191608681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809c5aeccfd94235db05e171fc6ce40ebcf86c2c698349131c2475a524378080`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:15 GMT
ENV JETTY_VERSION=9.3.27.v20190418
# Fri, 03 May 2019 21:21:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.27.v20190418/jetty-distribution-9.3.27.v20190418.tar.gz
# Fri, 03 May 2019 21:21:16 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:21 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:23 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:24 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:24 GMT
USER jetty
# Fri, 03 May 2019 21:21:25 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbe071d2e46064532de4e2f8b630f674a78109a7c0a68245d723655116c85cb`  
		Last Modified: Fri, 03 May 2019 21:22:39 GMT  
		Size: 8.1 MB (8112431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445dd144fa3118cc1a5a92fa7a3520d9b697c5d2d653f34dd3769281e0d4d2c7`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaff10a27aeffec1dc0095154b9e50a6d91f67a1e85495bbc5fb2b2eccb19f76`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cc0e740ebc944c2095408c34eaf2ee7f5775df5c02f4d4e3c5c6d80f79eb20`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a465b019a959e40f8789cfe74a373387b3aad326cbb48a9802bd29f77500e1f`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.27-alpine`

```console
$ docker pull jetty@sha256:d8025352dc444ef109f6cdbc97f887b0b290e7e2616a5fea5177d2deedf947c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.27-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:121cf87179f4f58d721a82be62a3bf353952cdc82d64c0c8ffcc13d18fd3c3cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65868305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0aa259f5e200cb5a3c259614dd2824c1e7250873521f13ec6c623663ae6eaef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_VERSION=9.3.27.v20190418
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.27.v20190418/jetty-distribution-9.3.27.v20190418.tar.gz
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:32 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:33 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:34 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:35 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:36 GMT
USER jetty
# Fri, 03 May 2019 21:21:36 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c1e8b1519608f8d34fccca3ca14b6a6539f3e757028955de0044e7cd1b445`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 8.1 MB (8148880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31aea0c64fbfce6925b2edf09f526085b0d320520ee869d87899499b059b71`  
		Last Modified: Fri, 03 May 2019 21:22:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4d40a713fe6255bde5f02119c0d37316848a645b7c2e565250538e02bd7179`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 40.5 KB (40485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ef78eda03e4e3e6b62db00f42c24c8462c8db9314e877559bee418f558e657`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be256d80345e6fd1aee3d9cf0028ae050d89f4baa0a706bb34fca8e33fd2aaf`  
		Last Modified: Fri, 03 May 2019 21:22:44 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.27-jre8`

```console
$ docker pull jetty@sha256:c7c25ab62c53b75260b6116c4ea7b606c19e3139945424e0fd615b5429f9ad59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.27-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:c6c5264e5dd330e94f556faf19d51fed62c82277f58b55cb9e6c83eb0313f10b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191608681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809c5aeccfd94235db05e171fc6ce40ebcf86c2c698349131c2475a524378080`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:15 GMT
ENV JETTY_VERSION=9.3.27.v20190418
# Fri, 03 May 2019 21:21:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.27.v20190418/jetty-distribution-9.3.27.v20190418.tar.gz
# Fri, 03 May 2019 21:21:16 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:21 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:23 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:24 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:24 GMT
USER jetty
# Fri, 03 May 2019 21:21:25 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbe071d2e46064532de4e2f8b630f674a78109a7c0a68245d723655116c85cb`  
		Last Modified: Fri, 03 May 2019 21:22:39 GMT  
		Size: 8.1 MB (8112431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445dd144fa3118cc1a5a92fa7a3520d9b697c5d2d653f34dd3769281e0d4d2c7`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaff10a27aeffec1dc0095154b9e50a6d91f67a1e85495bbc5fb2b2eccb19f76`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cc0e740ebc944c2095408c34eaf2ee7f5775df5c02f4d4e3c5c6d80f79eb20`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a465b019a959e40f8789cfe74a373387b3aad326cbb48a9802bd29f77500e1f`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.27-jre8-alpine`

```console
$ docker pull jetty@sha256:d8025352dc444ef109f6cdbc97f887b0b290e7e2616a5fea5177d2deedf947c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.27-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:121cf87179f4f58d721a82be62a3bf353952cdc82d64c0c8ffcc13d18fd3c3cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65868305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0aa259f5e200cb5a3c259614dd2824c1e7250873521f13ec6c623663ae6eaef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_VERSION=9.3.27.v20190418
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.27.v20190418/jetty-distribution-9.3.27.v20190418.tar.gz
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:32 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:33 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:34 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:35 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:36 GMT
USER jetty
# Fri, 03 May 2019 21:21:36 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c1e8b1519608f8d34fccca3ca14b6a6539f3e757028955de0044e7cd1b445`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 8.1 MB (8148880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31aea0c64fbfce6925b2edf09f526085b0d320520ee869d87899499b059b71`  
		Last Modified: Fri, 03 May 2019 21:22:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4d40a713fe6255bde5f02119c0d37316848a645b7c2e565250538e02bd7179`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 40.5 KB (40485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ef78eda03e4e3e6b62db00f42c24c8462c8db9314e877559bee418f558e657`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be256d80345e6fd1aee3d9cf0028ae050d89f4baa0a706bb34fca8e33fd2aaf`  
		Last Modified: Fri, 03 May 2019 21:22:44 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:d8025352dc444ef109f6cdbc97f887b0b290e7e2616a5fea5177d2deedf947c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:121cf87179f4f58d721a82be62a3bf353952cdc82d64c0c8ffcc13d18fd3c3cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65868305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0aa259f5e200cb5a3c259614dd2824c1e7250873521f13ec6c623663ae6eaef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_VERSION=9.3.27.v20190418
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.27.v20190418/jetty-distribution-9.3.27.v20190418.tar.gz
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:32 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:33 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:34 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:35 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:36 GMT
USER jetty
# Fri, 03 May 2019 21:21:36 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c1e8b1519608f8d34fccca3ca14b6a6539f3e757028955de0044e7cd1b445`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 8.1 MB (8148880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31aea0c64fbfce6925b2edf09f526085b0d320520ee869d87899499b059b71`  
		Last Modified: Fri, 03 May 2019 21:22:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4d40a713fe6255bde5f02119c0d37316848a645b7c2e565250538e02bd7179`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 40.5 KB (40485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ef78eda03e4e3e6b62db00f42c24c8462c8db9314e877559bee418f558e657`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be256d80345e6fd1aee3d9cf0028ae050d89f4baa0a706bb34fca8e33fd2aaf`  
		Last Modified: Fri, 03 May 2019 21:22:44 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:c7c25ab62c53b75260b6116c4ea7b606c19e3139945424e0fd615b5429f9ad59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:c6c5264e5dd330e94f556faf19d51fed62c82277f58b55cb9e6c83eb0313f10b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191608681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809c5aeccfd94235db05e171fc6ce40ebcf86c2c698349131c2475a524378080`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:15 GMT
ENV JETTY_VERSION=9.3.27.v20190418
# Fri, 03 May 2019 21:21:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.27.v20190418/jetty-distribution-9.3.27.v20190418.tar.gz
# Fri, 03 May 2019 21:21:16 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:21 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:23 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:24 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:24 GMT
USER jetty
# Fri, 03 May 2019 21:21:25 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbe071d2e46064532de4e2f8b630f674a78109a7c0a68245d723655116c85cb`  
		Last Modified: Fri, 03 May 2019 21:22:39 GMT  
		Size: 8.1 MB (8112431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445dd144fa3118cc1a5a92fa7a3520d9b697c5d2d653f34dd3769281e0d4d2c7`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaff10a27aeffec1dc0095154b9e50a6d91f67a1e85495bbc5fb2b2eccb19f76`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cc0e740ebc944c2095408c34eaf2ee7f5775df5c02f4d4e3c5c6d80f79eb20`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a465b019a959e40f8789cfe74a373387b3aad326cbb48a9802bd29f77500e1f`  
		Last Modified: Fri, 03 May 2019 21:22:38 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:d8025352dc444ef109f6cdbc97f887b0b290e7e2616a5fea5177d2deedf947c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:121cf87179f4f58d721a82be62a3bf353952cdc82d64c0c8ffcc13d18fd3c3cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65868305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0aa259f5e200cb5a3c259614dd2824c1e7250873521f13ec6c623663ae6eaef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_VERSION=9.3.27.v20190418
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.27.v20190418/jetty-distribution-9.3.27.v20190418.tar.gz
# Fri, 03 May 2019 21:21:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:32 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:33 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:34 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:35 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:36 GMT
USER jetty
# Fri, 03 May 2019 21:21:36 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c1e8b1519608f8d34fccca3ca14b6a6539f3e757028955de0044e7cd1b445`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 8.1 MB (8148880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31aea0c64fbfce6925b2edf09f526085b0d320520ee869d87899499b059b71`  
		Last Modified: Fri, 03 May 2019 21:22:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4d40a713fe6255bde5f02119c0d37316848a645b7c2e565250538e02bd7179`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 40.5 KB (40485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ef78eda03e4e3e6b62db00f42c24c8462c8db9314e877559bee418f558e657`  
		Last Modified: Fri, 03 May 2019 21:22:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be256d80345e6fd1aee3d9cf0028ae050d89f4baa0a706bb34fca8e33fd2aaf`  
		Last Modified: Fri, 03 May 2019 21:22:44 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4`

```console
$ docker pull jetty@sha256:27229d2b1f37ccdd7c94b2e0c5e177ac8be57c44f918ca71af1e69b83eeece96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4` - linux; amd64

```console
$ docker pull jetty@sha256:43265b4747c961cb72e2c6a483fa03a9262ab76cc5bee0f13d2e0fa9d848726b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192920927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f04cf81e0a92cbe2a240c1f3ef396b60f9981afaf1447e7834e947b0857b64a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:54 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:20:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:20:43 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:20:45 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:20:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:20:46 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:20:46 GMT
USER jetty
# Fri, 03 May 2019 21:20:46 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:20:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfe2ee238ffb71e5197c309f52461509843031cfdab9bffa5b8a7effef6aa2d`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 9.4 MB (9424434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3ff2e4faa736381c86b92cedf88f04de3cfb29bda03204084b0af32e0ec18b`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c5ea6f61fdbbff62ae8d7a0f59773cc5a17f2ae3cef0ab06109bb5ec0c7de4`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914e32838c42b1d135cf51d1587b850f4087810ec6d1ef56bff487620a4c5e5`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42520ba664ff5272ac3d55aa5cf3474b0334b3f1fdb8a400435fc1a5390eba9f`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.18`

```console
$ docker pull jetty@sha256:27229d2b1f37ccdd7c94b2e0c5e177ac8be57c44f918ca71af1e69b83eeece96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.18` - linux; amd64

```console
$ docker pull jetty@sha256:43265b4747c961cb72e2c6a483fa03a9262ab76cc5bee0f13d2e0fa9d848726b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192920927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f04cf81e0a92cbe2a240c1f3ef396b60f9981afaf1447e7834e947b0857b64a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:54 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:20:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:20:43 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:20:45 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:20:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:20:46 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:20:46 GMT
USER jetty
# Fri, 03 May 2019 21:20:46 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:20:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfe2ee238ffb71e5197c309f52461509843031cfdab9bffa5b8a7effef6aa2d`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 9.4 MB (9424434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3ff2e4faa736381c86b92cedf88f04de3cfb29bda03204084b0af32e0ec18b`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c5ea6f61fdbbff62ae8d7a0f59773cc5a17f2ae3cef0ab06109bb5ec0c7de4`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914e32838c42b1d135cf51d1587b850f4087810ec6d1ef56bff487620a4c5e5`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42520ba664ff5272ac3d55aa5cf3474b0334b3f1fdb8a400435fc1a5390eba9f`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.18-alpine`

```console
$ docker pull jetty@sha256:669a7982ecf87fcbb3f23ccb6bc5e1cb67eb34a52f374d2027b95fdcd14d1634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.18-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:b0d35b3348621228cc5a5d249e4a939648b797c917fbb8493dab22ed5f6af451
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67142134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a0665237100ae9bdca48fe400cc636424d0d18064cb8ddf75f7c7554452220`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:20:55 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:07 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:08 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:08 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:11 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:11 GMT
USER jetty
# Fri, 03 May 2019 21:21:11 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd02f2b613afb62119e0980c7f2bbd3bbdfa48500b579addb2297f28143c57f0`  
		Last Modified: Fri, 03 May 2019 21:22:31 GMT  
		Size: 9.5 MB (9461201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c0845b7af5cd93bb92b64a8b40171bfe93f9ed35b6fe37e14c597b9d4ae62`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0fd72d57559a6d45bd39ab88af065e079319bca10064a5c60fbdd64f014d7`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9effed5d461b5b78c3d0f8836b9899a9f24688525ca01bd59e638d7775cfed`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f04af1d9ab00eeacbc6f28c2a3aeb636f83e3d7374316075b1a0e3fd754f74b`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.18-jre11`

```console
$ docker pull jetty@sha256:b00dc877790b87673e61a41112082a3d7ef47a6fc73c14ac71ac8d9e1db6ec22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.18-jre11` - linux; amd64

```console
$ docker pull jetty@sha256:2a9a3b48b96c6ca4179a7f2f7dc924fe1ea4ce554d25bb67ccf2153905079f2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202078256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ea820cbd65b9f5e7f3d90f7c43d38c2f0a0f43e3f5dc07ce4880246bbff40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:46:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:46:47 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:46:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 04 Apr 2019 22:32:25 GMT
ENV JAVA_VERSION=11.0.3
# Thu, 04 Apr 2019 22:32:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Thu, 04 Apr 2019 22:33:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 04 Apr 2019 22:57:48 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 04 Apr 2019 22:57:49 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 04 Apr 2019 22:57:49 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 22:57:50 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 04 Apr 2019 22:57:50 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:41 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:19:45 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:19:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:19:46 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:19:46 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:19:48 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:19:48 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:19:49 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:19:49 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:19:49 GMT
USER jetty
# Fri, 03 May 2019 21:19:49 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:19:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:19:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce08128c662b0d9d0f3d9f86364c56f7b387111dd0602f2116e7fefb7bf3322`  
		Last Modified: Wed, 27 Mar 2019 01:08:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b0cf80b370dc3011ff521f948fb212324f4b709f978ce5108193882a1a5a2f`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bd533f444d12d7c517d33e97d3ac0d27d31b2fbf6582dba416e47fcde1efc6`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39d9fa4825b3e38ef3d8955df3f71e2f5f591c7e57d82e8a09dbc48dfc890d7`  
		Last Modified: Thu, 04 Apr 2019 22:37:15 GMT  
		Size: 131.3 MB (131330150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b59a7c769fe2b99eb34b8771aa5088ec91842ff115bc855363333d930c2332`  
		Last Modified: Thu, 04 Apr 2019 22:58:32 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658f208c52bbb452629dd6fe6303e3159625d8d208be74ab1f6295c8730e1ca`  
		Last Modified: Thu, 04 Apr 2019 22:58:31 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5195f7921aef763913cf96fd38b5ce24d41d54d4e1b0aa29a5bb758223ced3b1`  
		Last Modified: Fri, 03 May 2019 21:22:16 GMT  
		Size: 9.4 MB (9424439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc81d082f343fa1043c66da897ad809bbbb2460cad6f01290bba332d77810782`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621e103b4a3dba2bfece700c39942270592106fa100c43cb7437051334f022bb`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e2fd573ecf672bfb0c6b89d69565eb873cee79d7dd516a88adf6fdfd32206e`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522dffa060c161a5c79fe39863c2f900bf745856935f0e4bda365c279a362bc5`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.18-jre8`

```console
$ docker pull jetty@sha256:27229d2b1f37ccdd7c94b2e0c5e177ac8be57c44f918ca71af1e69b83eeece96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.18-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:43265b4747c961cb72e2c6a483fa03a9262ab76cc5bee0f13d2e0fa9d848726b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192920927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f04cf81e0a92cbe2a240c1f3ef396b60f9981afaf1447e7834e947b0857b64a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:54 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:20:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:20:43 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:20:45 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:20:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:20:46 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:20:46 GMT
USER jetty
# Fri, 03 May 2019 21:20:46 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:20:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfe2ee238ffb71e5197c309f52461509843031cfdab9bffa5b8a7effef6aa2d`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 9.4 MB (9424434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3ff2e4faa736381c86b92cedf88f04de3cfb29bda03204084b0af32e0ec18b`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c5ea6f61fdbbff62ae8d7a0f59773cc5a17f2ae3cef0ab06109bb5ec0c7de4`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914e32838c42b1d135cf51d1587b850f4087810ec6d1ef56bff487620a4c5e5`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42520ba664ff5272ac3d55aa5cf3474b0334b3f1fdb8a400435fc1a5390eba9f`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.18-jre8-alpine`

```console
$ docker pull jetty@sha256:669a7982ecf87fcbb3f23ccb6bc5e1cb67eb34a52f374d2027b95fdcd14d1634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.18-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:b0d35b3348621228cc5a5d249e4a939648b797c917fbb8493dab22ed5f6af451
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67142134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a0665237100ae9bdca48fe400cc636424d0d18064cb8ddf75f7c7554452220`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:20:55 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:07 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:08 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:08 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:11 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:11 GMT
USER jetty
# Fri, 03 May 2019 21:21:11 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd02f2b613afb62119e0980c7f2bbd3bbdfa48500b579addb2297f28143c57f0`  
		Last Modified: Fri, 03 May 2019 21:22:31 GMT  
		Size: 9.5 MB (9461201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c0845b7af5cd93bb92b64a8b40171bfe93f9ed35b6fe37e14c597b9d4ae62`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0fd72d57559a6d45bd39ab88af065e079319bca10064a5c60fbdd64f014d7`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9effed5d461b5b78c3d0f8836b9899a9f24688525ca01bd59e638d7775cfed`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f04af1d9ab00eeacbc6f28c2a3aeb636f83e3d7374316075b1a0e3fd754f74b`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-alpine`

```console
$ docker pull jetty@sha256:669a7982ecf87fcbb3f23ccb6bc5e1cb67eb34a52f374d2027b95fdcd14d1634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:b0d35b3348621228cc5a5d249e4a939648b797c917fbb8493dab22ed5f6af451
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67142134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a0665237100ae9bdca48fe400cc636424d0d18064cb8ddf75f7c7554452220`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:20:55 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:07 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:08 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:08 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:11 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:11 GMT
USER jetty
# Fri, 03 May 2019 21:21:11 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd02f2b613afb62119e0980c7f2bbd3bbdfa48500b579addb2297f28143c57f0`  
		Last Modified: Fri, 03 May 2019 21:22:31 GMT  
		Size: 9.5 MB (9461201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c0845b7af5cd93bb92b64a8b40171bfe93f9ed35b6fe37e14c597b9d4ae62`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0fd72d57559a6d45bd39ab88af065e079319bca10064a5c60fbdd64f014d7`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9effed5d461b5b78c3d0f8836b9899a9f24688525ca01bd59e638d7775cfed`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f04af1d9ab00eeacbc6f28c2a3aeb636f83e3d7374316075b1a0e3fd754f74b`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre11`

```console
$ docker pull jetty@sha256:b00dc877790b87673e61a41112082a3d7ef47a6fc73c14ac71ac8d9e1db6ec22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre11` - linux; amd64

```console
$ docker pull jetty@sha256:2a9a3b48b96c6ca4179a7f2f7dc924fe1ea4ce554d25bb67ccf2153905079f2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202078256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ea820cbd65b9f5e7f3d90f7c43d38c2f0a0f43e3f5dc07ce4880246bbff40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:46:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:46:47 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:46:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 04 Apr 2019 22:32:25 GMT
ENV JAVA_VERSION=11.0.3
# Thu, 04 Apr 2019 22:32:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Thu, 04 Apr 2019 22:33:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 04 Apr 2019 22:57:48 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 04 Apr 2019 22:57:49 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 04 Apr 2019 22:57:49 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 22:57:50 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 04 Apr 2019 22:57:50 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:41 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:19:45 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:19:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:19:46 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:19:46 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:19:48 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:19:48 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:19:49 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:19:49 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:19:49 GMT
USER jetty
# Fri, 03 May 2019 21:19:49 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:19:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:19:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce08128c662b0d9d0f3d9f86364c56f7b387111dd0602f2116e7fefb7bf3322`  
		Last Modified: Wed, 27 Mar 2019 01:08:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b0cf80b370dc3011ff521f948fb212324f4b709f978ce5108193882a1a5a2f`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bd533f444d12d7c517d33e97d3ac0d27d31b2fbf6582dba416e47fcde1efc6`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39d9fa4825b3e38ef3d8955df3f71e2f5f591c7e57d82e8a09dbc48dfc890d7`  
		Last Modified: Thu, 04 Apr 2019 22:37:15 GMT  
		Size: 131.3 MB (131330150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b59a7c769fe2b99eb34b8771aa5088ec91842ff115bc855363333d930c2332`  
		Last Modified: Thu, 04 Apr 2019 22:58:32 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658f208c52bbb452629dd6fe6303e3159625d8d208be74ab1f6295c8730e1ca`  
		Last Modified: Thu, 04 Apr 2019 22:58:31 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5195f7921aef763913cf96fd38b5ce24d41d54d4e1b0aa29a5bb758223ced3b1`  
		Last Modified: Fri, 03 May 2019 21:22:16 GMT  
		Size: 9.4 MB (9424439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc81d082f343fa1043c66da897ad809bbbb2460cad6f01290bba332d77810782`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621e103b4a3dba2bfece700c39942270592106fa100c43cb7437051334f022bb`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e2fd573ecf672bfb0c6b89d69565eb873cee79d7dd516a88adf6fdfd32206e`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522dffa060c161a5c79fe39863c2f900bf745856935f0e4bda365c279a362bc5`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8`

```console
$ docker pull jetty@sha256:27229d2b1f37ccdd7c94b2e0c5e177ac8be57c44f918ca71af1e69b83eeece96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:43265b4747c961cb72e2c6a483fa03a9262ab76cc5bee0f13d2e0fa9d848726b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192920927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f04cf81e0a92cbe2a240c1f3ef396b60f9981afaf1447e7834e947b0857b64a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:54 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:20:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:20:43 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:20:45 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:20:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:20:46 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:20:46 GMT
USER jetty
# Fri, 03 May 2019 21:20:46 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:20:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfe2ee238ffb71e5197c309f52461509843031cfdab9bffa5b8a7effef6aa2d`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 9.4 MB (9424434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3ff2e4faa736381c86b92cedf88f04de3cfb29bda03204084b0af32e0ec18b`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c5ea6f61fdbbff62ae8d7a0f59773cc5a17f2ae3cef0ab06109bb5ec0c7de4`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914e32838c42b1d135cf51d1587b850f4087810ec6d1ef56bff487620a4c5e5`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42520ba664ff5272ac3d55aa5cf3474b0334b3f1fdb8a400435fc1a5390eba9f`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8-alpine`

```console
$ docker pull jetty@sha256:669a7982ecf87fcbb3f23ccb6bc5e1cb67eb34a52f374d2027b95fdcd14d1634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:b0d35b3348621228cc5a5d249e4a939648b797c917fbb8493dab22ed5f6af451
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67142134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a0665237100ae9bdca48fe400cc636424d0d18064cb8ddf75f7c7554452220`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:20:55 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:07 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:08 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:08 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:11 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:11 GMT
USER jetty
# Fri, 03 May 2019 21:21:11 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd02f2b613afb62119e0980c7f2bbd3bbdfa48500b579addb2297f28143c57f0`  
		Last Modified: Fri, 03 May 2019 21:22:31 GMT  
		Size: 9.5 MB (9461201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c0845b7af5cd93bb92b64a8b40171bfe93f9ed35b6fe37e14c597b9d4ae62`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0fd72d57559a6d45bd39ab88af065e079319bca10064a5c60fbdd64f014d7`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9effed5d461b5b78c3d0f8836b9899a9f24688525ca01bd59e638d7775cfed`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f04af1d9ab00eeacbc6f28c2a3aeb636f83e3d7374316075b1a0e3fd754f74b`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:669a7982ecf87fcbb3f23ccb6bc5e1cb67eb34a52f374d2027b95fdcd14d1634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:b0d35b3348621228cc5a5d249e4a939648b797c917fbb8493dab22ed5f6af451
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67142134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a0665237100ae9bdca48fe400cc636424d0d18064cb8ddf75f7c7554452220`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:20:55 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:07 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:08 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:08 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:11 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:11 GMT
USER jetty
# Fri, 03 May 2019 21:21:11 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd02f2b613afb62119e0980c7f2bbd3bbdfa48500b579addb2297f28143c57f0`  
		Last Modified: Fri, 03 May 2019 21:22:31 GMT  
		Size: 9.5 MB (9461201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c0845b7af5cd93bb92b64a8b40171bfe93f9ed35b6fe37e14c597b9d4ae62`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0fd72d57559a6d45bd39ab88af065e079319bca10064a5c60fbdd64f014d7`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9effed5d461b5b78c3d0f8836b9899a9f24688525ca01bd59e638d7775cfed`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f04af1d9ab00eeacbc6f28c2a3aeb636f83e3d7374316075b1a0e3fd754f74b`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre11`

```console
$ docker pull jetty@sha256:b00dc877790b87673e61a41112082a3d7ef47a6fc73c14ac71ac8d9e1db6ec22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre11` - linux; amd64

```console
$ docker pull jetty@sha256:2a9a3b48b96c6ca4179a7f2f7dc924fe1ea4ce554d25bb67ccf2153905079f2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202078256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ea820cbd65b9f5e7f3d90f7c43d38c2f0a0f43e3f5dc07ce4880246bbff40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:46:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:46:47 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:46:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 04 Apr 2019 22:32:25 GMT
ENV JAVA_VERSION=11.0.3
# Thu, 04 Apr 2019 22:32:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Thu, 04 Apr 2019 22:33:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 04 Apr 2019 22:57:48 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 04 Apr 2019 22:57:49 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 04 Apr 2019 22:57:49 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 22:57:50 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 04 Apr 2019 22:57:50 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:41 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:19:45 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:19:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:19:46 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:19:46 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:19:48 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:19:48 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:19:49 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:19:49 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:19:49 GMT
USER jetty
# Fri, 03 May 2019 21:19:49 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:19:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:19:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce08128c662b0d9d0f3d9f86364c56f7b387111dd0602f2116e7fefb7bf3322`  
		Last Modified: Wed, 27 Mar 2019 01:08:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b0cf80b370dc3011ff521f948fb212324f4b709f978ce5108193882a1a5a2f`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bd533f444d12d7c517d33e97d3ac0d27d31b2fbf6582dba416e47fcde1efc6`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39d9fa4825b3e38ef3d8955df3f71e2f5f591c7e57d82e8a09dbc48dfc890d7`  
		Last Modified: Thu, 04 Apr 2019 22:37:15 GMT  
		Size: 131.3 MB (131330150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b59a7c769fe2b99eb34b8771aa5088ec91842ff115bc855363333d930c2332`  
		Last Modified: Thu, 04 Apr 2019 22:58:32 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658f208c52bbb452629dd6fe6303e3159625d8d208be74ab1f6295c8730e1ca`  
		Last Modified: Thu, 04 Apr 2019 22:58:31 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5195f7921aef763913cf96fd38b5ce24d41d54d4e1b0aa29a5bb758223ced3b1`  
		Last Modified: Fri, 03 May 2019 21:22:16 GMT  
		Size: 9.4 MB (9424439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc81d082f343fa1043c66da897ad809bbbb2460cad6f01290bba332d77810782`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621e103b4a3dba2bfece700c39942270592106fa100c43cb7437051334f022bb`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e2fd573ecf672bfb0c6b89d69565eb873cee79d7dd516a88adf6fdfd32206e`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522dffa060c161a5c79fe39863c2f900bf745856935f0e4bda365c279a362bc5`  
		Last Modified: Fri, 03 May 2019 21:22:14 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:63da09fc67a4717791ddd42e4dcb4c9b2fa6d40eb061488ff698e082d9142c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:4796df5344cc50f0bbcc357c15e5baa63db7cd7abd18003f2cd0907527f90abe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164647005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ac44829ac2b3ffbd4e80824b4fb8f7430452aca4c77278b94735dcd6a2c57e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:59:59 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 01:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 01:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 01:00:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:37:02 GMT
ENV JAVA_VERSION=7u211
# Wed, 27 Mar 2019 23:37:02 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 27 Mar 2019 23:39:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:09:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:09:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:09:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:09:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:09:38 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:51 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Fri, 03 May 2019 21:21:52 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Fri, 03 May 2019 21:21:52 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:54 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:55 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:57 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:57 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:58 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:58 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:58 GMT
USER jetty
# Fri, 03 May 2019 21:21:58 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe5b9a5ae4df86ade5163499bec6552c354611960eabfc7f1391f9e9f57945`  
		Last Modified: Tue, 26 Mar 2019 23:30:21 GMT  
		Size: 17.5 MB (17541227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92748c09714e5ff3525426b1db779e7937b629687255e3c336882349d1b686ab`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 795.2 KB (795203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062f1282bf9c8ade4b7259d5d902417562965db5d8fb6fd3492dc251a5d9c752`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94f42f0e754f4268a5de994bfff55e50179a24e32ea026e9091b0548fbb67de`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b21701c8fcc738fdd0b65a64b928d6cbe799d227beb9293910716d00c6b7f7`  
		Last Modified: Wed, 27 Mar 2019 23:48:53 GMT  
		Size: 81.9 MB (81886254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b037a1989b5f1156ef0971c6730187b4cdaf98c41872b92f2dad843b6efbb4`  
		Last Modified: Thu, 28 Mar 2019 00:10:45 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01487e8de4c8e8d88389c43fcc6a173d8515df1b370b0ece52be72a438f3739`  
		Last Modified: Thu, 28 Mar 2019 00:10:45 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dc0b961172510752ccd0373ec9a7e7905f4bb94a58c8ad334c3d62b3a592e0`  
		Last Modified: Fri, 03 May 2019 21:22:57 GMT  
		Size: 10.0 MB (10035664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85fa592830fc8e0d9433afbe30f7169dbcc426f3c97d913482afb9a299c68`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19351be52b25233a3343078157f0a7e4c04501e361906c8362d567d5c392b802`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ff41837b92f9fa13506ffe5749c1d6bf6f174219dc34f077813b34f635ac35`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d00e0df05e97ab460d10f4fed63ae2c7aac426b0895bd4a11bfc187141527e`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:27229d2b1f37ccdd7c94b2e0c5e177ac8be57c44f918ca71af1e69b83eeece96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:43265b4747c961cb72e2c6a483fa03a9262ab76cc5bee0f13d2e0fa9d848726b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192920927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f04cf81e0a92cbe2a240c1f3ef396b60f9981afaf1447e7834e947b0857b64a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:54 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:20:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:20:43 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:20:45 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:20:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:20:46 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:20:46 GMT
USER jetty
# Fri, 03 May 2019 21:20:46 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:20:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfe2ee238ffb71e5197c309f52461509843031cfdab9bffa5b8a7effef6aa2d`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 9.4 MB (9424434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3ff2e4faa736381c86b92cedf88f04de3cfb29bda03204084b0af32e0ec18b`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c5ea6f61fdbbff62ae8d7a0f59773cc5a17f2ae3cef0ab06109bb5ec0c7de4`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914e32838c42b1d135cf51d1587b850f4087810ec6d1ef56bff487620a4c5e5`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42520ba664ff5272ac3d55aa5cf3474b0334b3f1fdb8a400435fc1a5390eba9f`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:669a7982ecf87fcbb3f23ccb6bc5e1cb67eb34a52f374d2027b95fdcd14d1634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:b0d35b3348621228cc5a5d249e4a939648b797c917fbb8493dab22ed5f6af451
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67142134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a0665237100ae9bdca48fe400cc636424d0d18064cb8ddf75f7c7554452220`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:20:55 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:07 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:08 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:08 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:11 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:11 GMT
USER jetty
# Fri, 03 May 2019 21:21:11 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd02f2b613afb62119e0980c7f2bbd3bbdfa48500b579addb2297f28143c57f0`  
		Last Modified: Fri, 03 May 2019 21:22:31 GMT  
		Size: 9.5 MB (9461201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c0845b7af5cd93bb92b64a8b40171bfe93f9ed35b6fe37e14c597b9d4ae62`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0fd72d57559a6d45bd39ab88af065e079319bca10064a5c60fbdd64f014d7`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9effed5d461b5b78c3d0f8836b9899a9f24688525ca01bd59e638d7775cfed`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f04af1d9ab00eeacbc6f28c2a3aeb636f83e3d7374316075b1a0e3fd754f74b`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:669a7982ecf87fcbb3f23ccb6bc5e1cb67eb34a52f374d2027b95fdcd14d1634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

```console
$ docker pull jetty@sha256:b0d35b3348621228cc5a5d249e4a939648b797c917fbb8493dab22ed5f6af451
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67142134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a0665237100ae9bdca48fe400cc636424d0d18064cb8ddf75f7c7554452220`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:20:55 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:07 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:08 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:08 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:11 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:11 GMT
USER jetty
# Fri, 03 May 2019 21:21:11 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd02f2b613afb62119e0980c7f2bbd3bbdfa48500b579addb2297f28143c57f0`  
		Last Modified: Fri, 03 May 2019 21:22:31 GMT  
		Size: 9.5 MB (9461201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c0845b7af5cd93bb92b64a8b40171bfe93f9ed35b6fe37e14c597b9d4ae62`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0fd72d57559a6d45bd39ab88af065e079319bca10064a5c60fbdd64f014d7`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9effed5d461b5b78c3d0f8836b9899a9f24688525ca01bd59e638d7775cfed`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f04af1d9ab00eeacbc6f28c2a3aeb636f83e3d7374316075b1a0e3fd754f74b`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:63da09fc67a4717791ddd42e4dcb4c9b2fa6d40eb061488ff698e082d9142c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

```console
$ docker pull jetty@sha256:4796df5344cc50f0bbcc357c15e5baa63db7cd7abd18003f2cd0907527f90abe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164647005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ac44829ac2b3ffbd4e80824b4fb8f7430452aca4c77278b94735dcd6a2c57e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:59:59 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 01:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 01:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 01:00:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:37:02 GMT
ENV JAVA_VERSION=7u211
# Wed, 27 Mar 2019 23:37:02 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 27 Mar 2019 23:39:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:09:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:09:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:09:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:09:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:09:38 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:21:51 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Fri, 03 May 2019 21:21:52 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Fri, 03 May 2019 21:21:52 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:21:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:54 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:55 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:57 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:57 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:58 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:58 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:58 GMT
USER jetty
# Fri, 03 May 2019 21:21:58 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe5b9a5ae4df86ade5163499bec6552c354611960eabfc7f1391f9e9f57945`  
		Last Modified: Tue, 26 Mar 2019 23:30:21 GMT  
		Size: 17.5 MB (17541227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92748c09714e5ff3525426b1db779e7937b629687255e3c336882349d1b686ab`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 795.2 KB (795203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062f1282bf9c8ade4b7259d5d902417562965db5d8fb6fd3492dc251a5d9c752`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94f42f0e754f4268a5de994bfff55e50179a24e32ea026e9091b0548fbb67de`  
		Last Modified: Wed, 27 Mar 2019 01:10:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b21701c8fcc738fdd0b65a64b928d6cbe799d227beb9293910716d00c6b7f7`  
		Last Modified: Wed, 27 Mar 2019 23:48:53 GMT  
		Size: 81.9 MB (81886254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b037a1989b5f1156ef0971c6730187b4cdaf98c41872b92f2dad843b6efbb4`  
		Last Modified: Thu, 28 Mar 2019 00:10:45 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01487e8de4c8e8d88389c43fcc6a173d8515df1b370b0ece52be72a438f3739`  
		Last Modified: Thu, 28 Mar 2019 00:10:45 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dc0b961172510752ccd0373ec9a7e7905f4bb94a58c8ad334c3d62b3a592e0`  
		Last Modified: Fri, 03 May 2019 21:22:57 GMT  
		Size: 10.0 MB (10035664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85fa592830fc8e0d9433afbe30f7169dbcc426f3c97d913482afb9a299c68`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19351be52b25233a3343078157f0a7e4c04501e361906c8362d567d5c392b802`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ff41837b92f9fa13506ffe5749c1d6bf6f174219dc34f077813b34f635ac35`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d00e0df05e97ab460d10f4fed63ae2c7aac426b0895bd4a11bfc187141527e`  
		Last Modified: Fri, 03 May 2019 21:22:56 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:27229d2b1f37ccdd7c94b2e0c5e177ac8be57c44f918ca71af1e69b83eeece96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

```console
$ docker pull jetty@sha256:43265b4747c961cb72e2c6a483fa03a9262ab76cc5bee0f13d2e0fa9d848726b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192920927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f04cf81e0a92cbe2a240c1f3ef396b60f9981afaf1447e7834e947b0857b64a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:54 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:20:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:20:43 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:20:45 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:20:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:20:46 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:20:46 GMT
USER jetty
# Fri, 03 May 2019 21:20:46 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:20:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfe2ee238ffb71e5197c309f52461509843031cfdab9bffa5b8a7effef6aa2d`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 9.4 MB (9424434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3ff2e4faa736381c86b92cedf88f04de3cfb29bda03204084b0af32e0ec18b`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c5ea6f61fdbbff62ae8d7a0f59773cc5a17f2ae3cef0ab06109bb5ec0c7de4`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914e32838c42b1d135cf51d1587b850f4087810ec6d1ef56bff487620a4c5e5`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42520ba664ff5272ac3d55aa5cf3474b0334b3f1fdb8a400435fc1a5390eba9f`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:669a7982ecf87fcbb3f23ccb6bc5e1cb67eb34a52f374d2027b95fdcd14d1634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:b0d35b3348621228cc5a5d249e4a939648b797c917fbb8493dab22ed5f6af451
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67142134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a0665237100ae9bdca48fe400cc636424d0d18064cb8ddf75f7c7554452220`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Apr 2019 03:12:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Apr 2019 03:12:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Apr 2019 03:12:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:12:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Apr 2019 03:12:18 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:20:55 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:20:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:07 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:21:08 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:21:08 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:21:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:21:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:21:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:21:11 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:21:11 GMT
USER jetty
# Fri, 03 May 2019 21:21:11 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:489f953ac4f84682ad80c1afc90992a694920190041bca2c9d3d08a6a60c4ab0`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344b9b3e6a1d0c4f158ecc059e91ab1df4edfd0f6b156bfed81740f95e8ea23`  
		Last Modified: Wed, 10 Apr 2019 03:13:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd02f2b613afb62119e0980c7f2bbd3bbdfa48500b579addb2297f28143c57f0`  
		Last Modified: Fri, 03 May 2019 21:22:31 GMT  
		Size: 9.5 MB (9461201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c0845b7af5cd93bb92b64a8b40171bfe93f9ed35b6fe37e14c597b9d4ae62`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0fd72d57559a6d45bd39ab88af065e079319bca10064a5c60fbdd64f014d7`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9effed5d461b5b78c3d0f8836b9899a9f24688525ca01bd59e638d7775cfed`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f04af1d9ab00eeacbc6f28c2a3aeb636f83e3d7374316075b1a0e3fd754f74b`  
		Last Modified: Fri, 03 May 2019 21:22:30 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:27229d2b1f37ccdd7c94b2e0c5e177ac8be57c44f918ca71af1e69b83eeece96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

```console
$ docker pull jetty@sha256:43265b4747c961cb72e2c6a483fa03a9262ab76cc5bee0f13d2e0fa9d848726b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192920927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f04cf81e0a92cbe2a240c1f3ef396b60f9981afaf1447e7834e947b0857b64a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:08:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:08:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:34 GMT
WORKDIR /usr/local/jetty
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Fri, 03 May 2019 21:19:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Fri, 03 May 2019 21:19:54 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 03 May 2019 21:20:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 03 May 2019 21:20:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 03 May 2019 21:20:43 GMT
WORKDIR /var/lib/jetty
# Fri, 03 May 2019 21:20:45 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 03 May 2019 21:20:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 03 May 2019 21:20:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 03 May 2019 21:20:46 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 03 May 2019 21:20:46 GMT
USER jetty
# Fri, 03 May 2019 21:20:46 GMT
EXPOSE 8080
# Fri, 03 May 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 May 2019 21:20:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d3f6c8661067ec2bdc7640b4d71a792f1781c92d4565772688585c9d059c3`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1547580792a3007b5aace2a86c2e9fa8964b011f317d07daef3a40faae6aff84`  
		Last Modified: Thu, 28 Mar 2019 00:10:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfe2ee238ffb71e5197c309f52461509843031cfdab9bffa5b8a7effef6aa2d`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 9.4 MB (9424434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3ff2e4faa736381c86b92cedf88f04de3cfb29bda03204084b0af32e0ec18b`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c5ea6f61fdbbff62ae8d7a0f59773cc5a17f2ae3cef0ab06109bb5ec0c7de4`  
		Last Modified: Fri, 03 May 2019 21:22:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914e32838c42b1d135cf51d1587b850f4087810ec6d1ef56bff487620a4c5e5`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42520ba664ff5272ac3d55aa5cf3474b0334b3f1fdb8a400435fc1a5390eba9f`  
		Last Modified: Fri, 03 May 2019 21:22:20 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
