## `jetty:jre7`

```console
$ docker pull jetty@sha256:b7525eb2145c92c24b2204d7bff4fdceb4d559d5dc7b9fde8a62730c91ad9bfd
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
$ docker pull jetty@sha256:7db82d240de28ec14b2ff66a9f20ea50ec0c16bf3e5b132df4311ca6633b5f50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164575279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7388b7c7937ba0bc6cc509a06dbcaf1b2a85b2d14c46427cdf21f5f74fe64c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 03:13:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 03:13:31 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 03:13:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 03:13:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 03:13:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 03:13:33 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 03:13:33 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 03:16:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:27:09 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 29 Dec 2018 12:27:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 29 Dec 2018 12:27:10 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 12:27:10 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 29 Dec 2018 12:27:11 GMT
WORKDIR /usr/local/jetty
# Sat, 29 Dec 2018 12:27:11 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Sat, 29 Dec 2018 12:27:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Sat, 29 Dec 2018 12:27:11 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 29 Dec 2018 12:27:13 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 29 Dec 2018 12:27:13 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 29 Dec 2018 12:27:14 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 29 Dec 2018 12:27:14 GMT
WORKDIR /var/lib/jetty
# Sat, 29 Dec 2018 12:27:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 29 Dec 2018 12:27:17 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 29 Dec 2018 12:27:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 29 Dec 2018 12:27:19 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Sat, 29 Dec 2018 12:27:19 GMT
USER jetty
# Sat, 29 Dec 2018 12:27:19 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 12:27:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 12:27:20 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c585ab63309a7757bdc035b4f49c113d264f4a536484e4be1fcf5a81e453e4fa`  
		Last Modified: Sat, 29 Dec 2018 03:27:28 GMT  
		Size: 795.1 KB (795121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe89d15f060ecce88605162ab580db9180ab4a8523dd1f1cc8b105ab09d76ca2`  
		Last Modified: Sat, 29 Dec 2018 03:27:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68182016c931bdc85672c27d0290efc7326434807900f78723021f4952b3b6fe`  
		Last Modified: Sat, 29 Dec 2018 03:27:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18feebf96d82debe74d5aa2a2b9bb5731baa1ec9ba094e2812ffd3b92d946b2`  
		Last Modified: Sat, 29 Dec 2018 03:27:42 GMT  
		Size: 81.8 MB (81818581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c2b1c811c336602aa1b84548689202231d6187e895e3872c085043d751bb4`  
		Last Modified: Sat, 29 Dec 2018 12:28:13 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee0256e5d0d56f1c62a256f3f0ce97d66903905010cf732bcd9d2a592284f22`  
		Last Modified: Sat, 29 Dec 2018 12:28:12 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b3283ece54a0d4675e54ba22f5bd5553280ccfa8cb3a0b6cc4b71fb972fb71`  
		Last Modified: Sat, 29 Dec 2018 12:28:13 GMT  
		Size: 10.0 MB (10029704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d0e7df26173f2208b5a752bedb8e685d7b0897e1d3ff3bd08f40ef9031520b`  
		Last Modified: Sat, 29 Dec 2018 12:28:11 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37379d184992b1f0e4e9662d63823439dc4720a4afbc993caaf758c94a24f61e`  
		Last Modified: Sat, 29 Dec 2018 12:28:11 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f90ad1e41913e8131a962f207185efe19d7145f67398e7a503cb9bb773ca8`  
		Last Modified: Sat, 29 Dec 2018 12:28:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ec2d7c3aac526deb2d39095dc36b45bd24ce4a959ee52f39eaf6fbd5652bd`  
		Last Modified: Sat, 29 Dec 2018 12:28:11 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; arm variant v5

```console
$ docker pull jetty@sha256:ceeb505c26f97d986d320dd79e17c449054e924218cc6a0dd107178f28dfa87d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152367578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d312a1dc5bbac8890e9cf27f04b466825f3adfc6c5f9e2063696bfc2c388a60`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 29 Dec 2018 09:50:08 GMT
ADD file:3321122b920f6f483dcafe715cd2a4e1da54e69c43820472bdc96463c1491ddb in / 
# Sat, 29 Dec 2018 09:50:09 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:25:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 09 Jan 2019 11:35:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:35:24 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 11:35:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 09 Jan 2019 11:35:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 09 Jan 2019 11:35:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 09 Jan 2019 11:35:29 GMT
ENV JAVA_VERSION=7u181
# Wed, 09 Jan 2019 11:35:29 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 09 Jan 2019 11:37:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 09 Jan 2019 11:59:34 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 09 Jan 2019 11:59:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 09 Jan 2019 11:59:36 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Jan 2019 11:59:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 09 Jan 2019 11:59:40 GMT
WORKDIR /usr/local/jetty
# Wed, 09 Jan 2019 11:59:41 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Wed, 09 Jan 2019 11:59:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Wed, 09 Jan 2019 11:59:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 09 Jan 2019 11:59:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 09 Jan 2019 11:59:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 09 Jan 2019 11:59:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 09 Jan 2019 11:59:48 GMT
WORKDIR /var/lib/jetty
# Wed, 09 Jan 2019 11:59:51 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 09 Jan 2019 11:59:51 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 09 Jan 2019 11:59:53 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 09 Jan 2019 11:59:53 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 09 Jan 2019 11:59:54 GMT
USER jetty
# Wed, 09 Jan 2019 11:59:54 GMT
EXPOSE 8080
# Wed, 09 Jan 2019 11:59:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Jan 2019 11:59:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:a204ee9ae7b96e1c5b1ab95dc720bd4653fef7c1851fb0d4e498e354f21c944a`  
		Last Modified: Sat, 29 Dec 2018 09:59:57 GMT  
		Size: 52.6 MB (52578785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7788beb019e44a341e431a392c618c04379b201dc0ac3a31c9b315e2e7aefe21`  
		Last Modified: Sat, 29 Dec 2018 10:41:15 GMT  
		Size: 17.0 MB (17030374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d578209307cc3a73ac2227a75a3135734b15ed1c7d298dc2fae5104e373aac`  
		Last Modified: Wed, 09 Jan 2019 11:38:51 GMT  
		Size: 787.9 KB (787946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3720b869c0dec599372a3596a61de5a6a0114b9c222db7edd50462bdb9924be4`  
		Last Modified: Wed, 09 Jan 2019 11:38:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb36855788a33d884f5ca47520e992c75435d3593a9181684749be1bf77b9b9`  
		Last Modified: Wed, 09 Jan 2019 11:38:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db623d3819edb72b540bd939a7b512c3d71197f4a91ca8b8400839b57ebf5fc`  
		Last Modified: Wed, 09 Jan 2019 11:39:07 GMT  
		Size: 71.9 MB (71934658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583fa961c6a9cc4d86ac6fd624a5e8044e46076818c66f59ff26260f6d6ce58`  
		Last Modified: Wed, 09 Jan 2019 12:00:31 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7954173be878cd7478c3e2ab856c0a96803a1ef667eb3a1ae8ab473fe434ff`  
		Last Modified: Wed, 09 Jan 2019 12:00:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d462b8d87633d9d713ec7e92297655e9d81b15bddc94b9e63b532d6d8571051`  
		Last Modified: Wed, 09 Jan 2019 12:00:31 GMT  
		Size: 10.0 MB (10029901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e7abf8689109dc43d4a487c9536d2945a0be53f36ad8da7544e2ac56bd256`  
		Last Modified: Wed, 09 Jan 2019 12:00:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707fa6d9aa3c10594738d74308e1ba5774034b06efe1875bba64fbf2c69d6d40`  
		Last Modified: Wed, 09 Jan 2019 12:00:30 GMT  
		Size: 1.5 KB (1540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5a43ac2345008a53bf9ca91e37178bb56e0ba8e830158732efe6bbca83830`  
		Last Modified: Wed, 09 Jan 2019 12:00:30 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92847637280c7d918b9809f7df42ab27ed211a004da3b7975ccb6a53272d8322`  
		Last Modified: Wed, 09 Jan 2019 12:00:30 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; arm variant v7

```console
$ docker pull jetty@sha256:a82fd92bf1b06d741cbd63ddc330d8c5c3cac8a54161205b9509fbdb8946a04b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147807161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f4a7744ad4d55fb639d24556377f16cd1d753755d105b1955df78d5b0850fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:11 GMT
ADD file:9c7cee46635f83a6649a59dfa973c45dbfcb18294c4e9929937b51ca89af3242 in / 
# Fri, 16 Nov 2018 13:02:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:09:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:09:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:41:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:41:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:42:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:42:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 19:42:01 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 13:27:14 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 13:28:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 29 Nov 2018 14:00:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 29 Nov 2018 14:00:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Nov 2018 14:00:14 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Nov 2018 14:00:15 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Nov 2018 14:00:16 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Nov 2018 14:00:16 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Thu, 29 Nov 2018 14:00:17 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Thu, 29 Nov 2018 14:00:17 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Nov 2018 14:00:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Nov 2018 14:00:21 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Nov 2018 14:00:22 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Nov 2018 14:00:23 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Nov 2018 14:00:25 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Nov 2018 14:00:26 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Nov 2018 14:00:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Nov 2018 14:00:33 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 29 Nov 2018 14:00:33 GMT
USER [jetty]
# Thu, 29 Nov 2018 14:00:34 GMT
EXPOSE 8080/tcp
# Thu, 29 Nov 2018 14:00:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Nov 2018 14:00:34 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2a662743dee4e609927ac10eb7f6457acb061af79addbda5a70c40f873a43c93`  
		Last Modified: Fri, 16 Nov 2018 13:15:12 GMT  
		Size: 50.3 MB (50279570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cbf9b0332806ff18413498271ad3f71f9c770f17fd6365db6bd350a47af07`  
		Last Modified: Fri, 16 Nov 2018 18:27:49 GMT  
		Size: 16.7 MB (16712873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777cfe250349ea5b17bc2ce41cf5c89d3fd63cd6262a340aba84cf0797f9610`  
		Last Modified: Fri, 16 Nov 2018 20:06:50 GMT  
		Size: 762.5 KB (762451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696327fb6998d2aaaa73eab38262dc5b4eb617c040eb3f832615b002647988ea`  
		Last Modified: Fri, 16 Nov 2018 20:06:49 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9c50af1ac6255f6fc0ab75205b7dcf6fa122f0feb09b16f740ca1b1793ebe1`  
		Last Modified: Fri, 16 Nov 2018 20:06:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83fc8c65d7056fa8011f0b6b4af72eee34034eb8d8a9671d1eae9ddf84c10`  
		Last Modified: Thu, 29 Nov 2018 13:34:35 GMT  
		Size: 70.0 MB (70016477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a98cb8518eb1731b3360259fed4e2fb982bf86812230cc28080785274574c38`  
		Last Modified: Thu, 29 Nov 2018 14:01:07 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7951d00e4965e76443e09ee9a1e64700bee851bf976a721a8c9b50b329637e2`  
		Last Modified: Thu, 29 Nov 2018 14:01:03 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b7c67490b134e27fccf3b61da8d359ae6920090f645920159e49ec0e4074c8`  
		Last Modified: Thu, 29 Nov 2018 14:01:07 GMT  
		Size: 10.0 MB (10029896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b039049aa99ce79a1f5b6823e2d8b73366804ccdb235b51a9720b8810fd7cf53`  
		Last Modified: Thu, 29 Nov 2018 14:01:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7c92a0066708ada5c98b84fa7b411e68551e8c0877cc720329c5e400bfeabf`  
		Last Modified: Thu, 29 Nov 2018 14:01:02 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5a73d787c7d1e6cf2ee8d650275336cc25e422ddc9ad2edf837c4bc3f4b77c`  
		Last Modified: Thu, 29 Nov 2018 14:01:02 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ca9968622361875be89b7e21b13817406c0e63ac0b99a33a2ec6b05c1dc9ab`  
		Last Modified: Thu, 29 Nov 2018 14:01:02 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:f5742d128b6b9a8b808514620a1e589bd886c59de7d37c386fb05f578e6ec693
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152322233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1dec8226178ff24cd87c18828eea7bbf3a2bb76c79af2cecde82ad06a586bb3`
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
# Sat, 15 Sep 2018 09:40:46 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Sat, 15 Sep 2018 09:40:47 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Sat, 15 Sep 2018 09:40:48 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 15 Sep 2018 09:40:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 15 Sep 2018 09:40:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 15 Sep 2018 09:40:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 15 Sep 2018 09:40:58 GMT
WORKDIR /var/lib/jetty
# Sat, 15 Sep 2018 09:41:03 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 15 Sep 2018 09:41:04 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 15 Sep 2018 09:41:07 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 15 Sep 2018 09:41:08 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Sat, 15 Sep 2018 09:41:09 GMT
USER [jetty]
# Sat, 15 Sep 2018 09:41:10 GMT
EXPOSE 8080/tcp
# Sat, 15 Sep 2018 09:41:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 09:41:12 GMT
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
	-	`sha256:a5b302088595bf5f17d42f6666a8b0acfd2a2c975241054cb086fba1a77f208e`  
		Last Modified: Sat, 15 Sep 2018 09:45:28 GMT  
		Size: 10.0 MB (10029702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69ef3f2adb6ca5a1e7f6d70324baa47ab88c5a91ec178d092a8c34ab5f7879`  
		Last Modified: Sat, 15 Sep 2018 09:45:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dda64b0675815a37e674cd6a681d6fc549091407b86d29ee609c38f102b8d45`  
		Last Modified: Sat, 15 Sep 2018 09:45:27 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5fd30bb0299c240e1666f7ef4bc705f547df5c29120a34ade4139668a89caf`  
		Last Modified: Sat, 15 Sep 2018 09:45:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb67596db0b458b96929a9222beed35685833687d02411c11d06d1580414618`  
		Last Modified: Sat, 15 Sep 2018 09:45:26 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; 386

```console
$ docker pull jetty@sha256:7ddb3124b0cd6e51619a6437bdc65f0db4ef1af25ee77eda382b109843bb86ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176958661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25f49390d5f7e5b3be81b86e1f202edcdfdfbb0e851b0a86faef3ae9323a600`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 29 Dec 2018 11:43:08 GMT
ADD file:adf73be380796d1d6e5cc54acbe9ed13483e492d18379f8f92b0ca4a3aa2d0c7 in / 
# Sat, 29 Dec 2018 11:43:08 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:47:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:47:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 21:11:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:11:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 21:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 21:11:32 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 21:11:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 21:11:32 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 21:11:32 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 21:14:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 06:54:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sun, 30 Dec 2018 06:54:52 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sun, 30 Dec 2018 06:54:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 06:54:53 GMT
RUN mkdir -p "$JETTY_HOME"
# Sun, 30 Dec 2018 06:54:54 GMT
WORKDIR /usr/local/jetty
# Sun, 30 Dec 2018 06:54:54 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Sun, 30 Dec 2018 06:54:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Sun, 30 Dec 2018 06:54:54 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sun, 30 Dec 2018 06:54:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sun, 30 Dec 2018 06:54:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sun, 30 Dec 2018 06:54:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Sun, 30 Dec 2018 06:54:57 GMT
WORKDIR /var/lib/jetty
# Sun, 30 Dec 2018 06:54:58 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sun, 30 Dec 2018 06:54:59 GMT
ENV TMPDIR=/tmp/jetty
# Sun, 30 Dec 2018 06:54:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sun, 30 Dec 2018 06:54:59 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Sun, 30 Dec 2018 06:55:00 GMT
USER jetty
# Sun, 30 Dec 2018 06:55:00 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 06:55:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 06:55:00 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:328db1dfc8fd581487e81b7e2b308b614ea0ef326ebf067f940b5fcdd3cda762`  
		Last Modified: Sat, 29 Dec 2018 12:06:12 GMT  
		Size: 54.6 MB (54604272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5086b16317513f803d1684cc7aa95daa8ee77fffa17db71c1ef7ab9f10a8f6`  
		Last Modified: Sat, 29 Dec 2018 13:24:40 GMT  
		Size: 19.8 MB (19846680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3972384dd34b3a2349b5c7524b889b2cec5e3efa1d623e0d39b2be02ff8aaf14`  
		Last Modified: Sat, 29 Dec 2018 21:25:10 GMT  
		Size: 798.1 KB (798141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0eb587ddabc98dfd91b6552b417d8a488b41b75cb9902760cf95a9bf517b9c5`  
		Last Modified: Sat, 29 Dec 2018 21:25:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a970bf44af11e815519a0d67b1d6763bff56ea189ec574bd83fd41d0f55a2d`  
		Last Modified: Sat, 29 Dec 2018 21:25:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3c9496e30f9e6cc059308198cfeeb91d99ecec0875db78af132a73ac5fa0b6`  
		Last Modified: Sat, 29 Dec 2018 21:25:25 GMT  
		Size: 91.7 MB (91674102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edde8a571403276303e140cd2ae2a1cf15566ba95074224a58db889b50d38b95`  
		Last Modified: Sun, 30 Dec 2018 06:55:30 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efede704a7b4f07a1c16476a9e43d6e475fbf5eacbe361f62c43ee688602d19`  
		Last Modified: Sun, 30 Dec 2018 06:55:29 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7810420924fc0db7ba4c567c84fc31c7de403e6fbffb6118ead5b0d37d03d024`  
		Last Modified: Sun, 30 Dec 2018 06:55:29 GMT  
		Size: 10.0 MB (10029733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86497259f336b972a0f6172b0e9fca0e3fcf404f78d36ee255d3112219142215`  
		Last Modified: Sun, 30 Dec 2018 06:55:28 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa247cde8baef0dc2e79d12db56c2fe4d2d71e13991d95f97402698f5d639e2`  
		Last Modified: Sun, 30 Dec 2018 06:55:28 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701170f2a1ccba9473741a1de011de49ea62f3f9ae0a13bbf171076f0aea6fb0`  
		Last Modified: Sun, 30 Dec 2018 06:55:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62633a2d0e2315ae037f9733c11eea8c287c29dbc664525178aecc035787239c`  
		Last Modified: Sun, 30 Dec 2018 06:55:28 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; ppc64le

```console
$ docker pull jetty@sha256:22cefb2d23186fa8be1105e0bec87ac18d6fbecc9d729bdde0e42a040bd42899
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155754280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9855cdd2f7c3ce73ecf8a21eaec392b170b4f063b87f4dc187c5e5ac2480e631`
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
# Fri, 14 Sep 2018 08:20:32 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Fri, 14 Sep 2018 08:20:33 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Fri, 14 Sep 2018 08:20:34 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 14 Sep 2018 08:20:41 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 08:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 14 Sep 2018 08:20:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 14 Sep 2018 08:20:45 GMT
WORKDIR /var/lib/jetty
# Fri, 14 Sep 2018 08:20:58 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 08:20:58 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 14 Sep 2018 08:21:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 28 Dec 2018 11:00:22 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 28 Dec 2018 11:00:24 GMT
USER jetty
# Fri, 28 Dec 2018 11:00:27 GMT
EXPOSE 8080
# Fri, 28 Dec 2018 11:00:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:00:31 GMT
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
	-	`sha256:e2ca0d449b71f6f7329724dddc79364b96bf42a4a5f7fd048360d601747dd68d`  
		Last Modified: Fri, 14 Sep 2018 08:26:30 GMT  
		Size: 10.0 MB (10029907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9a0249e6180f010d4ce2c8f9aa609120f2424ec4bbf0faee31bf98c7d95eb0`  
		Last Modified: Fri, 14 Sep 2018 08:26:28 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7d0d2e7fb0384d80089228d539c35410a918ff44d92e3914f89771c9b3049`  
		Last Modified: Fri, 14 Sep 2018 08:26:28 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1c96f7f67602093bebddddebcce2bac1027b4415b22c1c7446c9b8513f9e4b`  
		Last Modified: Fri, 14 Sep 2018 08:26:28 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87501c402334c8164bdea51a50b6b8fb2ae1db65319627447ac166af73c7a92a`  
		Last Modified: Fri, 28 Dec 2018 11:01:00 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; s390x

```console
$ docker pull jetty@sha256:dde89e91aa02abb60958dc24acd1f9823907867b3718f7a2bc7ca68e7f0ca384
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156767717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cddf53700744c2c63340ea0a499e3f882d6a41e0fc6746622a29634010dd291`
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
# Fri, 14 Sep 2018 11:48:11 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Fri, 14 Sep 2018 11:48:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Fri, 14 Sep 2018 11:48:12 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 14 Sep 2018 11:48:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 11:48:18 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 14 Sep 2018 11:48:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 14 Sep 2018 11:48:19 GMT
WORKDIR /var/lib/jetty
# Fri, 14 Sep 2018 11:48:26 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 11:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 14 Sep 2018 11:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 14 Sep 2018 11:48:27 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 14 Sep 2018 11:48:27 GMT
USER [jetty]
# Fri, 14 Sep 2018 11:48:27 GMT
EXPOSE 8080/tcp
# Fri, 14 Sep 2018 11:48:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Sep 2018 11:48:28 GMT
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
	-	`sha256:d26a00369e443a10e051b106b06a2c8b87d28d8d9c4b802a6529c7da45e31ee7`  
		Last Modified: Fri, 14 Sep 2018 11:52:18 GMT  
		Size: 10.0 MB (10029707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b4d2850b80578df4827a9b7f03f3c4f18621c5cf47bbe0a218e823f77246ad`  
		Last Modified: Fri, 14 Sep 2018 11:52:18 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2395ca871884622ae889f6f794196059827d8058d33d0b71e69c8cb45f740116`  
		Last Modified: Fri, 14 Sep 2018 11:52:17 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddf7452c910caa16a4b802df10eddaaf14c103e451eee434abbb4774e513bef`  
		Last Modified: Fri, 14 Sep 2018 11:52:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4831f5a470a9fddfe0845df68249d6a84712a3cb335e7d73e51052add582c68`  
		Last Modified: Fri, 14 Sep 2018 11:52:17 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
