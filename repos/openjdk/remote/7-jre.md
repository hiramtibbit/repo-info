## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:0cf627606452f6f070b05982c841e947437e11f9e2e6c2ba24a3f181cc309423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:2574c2cd2fc3f63640c29f0bd50f24b1e1fe223ea563098ce82e5abe315affd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154540212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab0255cc364fb4423d68b88c385e0aa0b3396886dcfb0ce05e584b5d72b6578`
-	Default Command: `["bash"]`

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

### `openjdk:7-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:3993602a8f6feb266d4183b26bd0635af9f31f33a01ba81d7764958a44f6e8cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142332142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9f8d8c5509b4789f70bd859f749a186afc52e8ee77b94e9a223acea758b3bc9`
-	Default Command: `["bash"]`

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

### `openjdk:7-jre` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:7d7ca872aa6708e2790ed6b060eec98b7dc2e0c7af926aa921b5bf694102901c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137789330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827c29ee2fe488f31a7ce7fc7235773f7fc7a222900613766f72b8303b436b8f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:11 GMT
ADD file:01b62bfbd45f1e17ef9559bc94ada32cdd52fbf49c22cf9240e225e6291ce59f in / 
# Sat, 29 Dec 2018 12:59:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:35:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:35:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 15:41:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:41:45 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 15:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 15:41:48 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 15:41:48 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 15:41:49 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 15:41:49 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 15:43:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:40b7080c29fdee0d573b842a38b8b4678dd34588fed78cb13c1be48cbeb5641a`  
		Last Modified: Sat, 29 Dec 2018 13:09:32 GMT  
		Size: 50.3 MB (50294191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e27fe2fedafcc8ab2f5ecd1d2ed1207427909474213be3c86adea22ffea9d1`  
		Last Modified: Sat, 29 Dec 2018 14:02:09 GMT  
		Size: 16.7 MB (16713166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2441243a0007cdd9109d8c87136096625c0424dbebc127d8294d7ee7b5cf6007`  
		Last Modified: Sat, 29 Dec 2018 15:51:18 GMT  
		Size: 762.5 KB (762487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0542f4f55bb86d4e4c1c2fbe602a548006c324d6a284e6a8cb571c7b60bc26c2`  
		Last Modified: Sat, 29 Dec 2018 15:51:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b23c00fdf14f881d69317c8a956d9c90144e97ef8cf46de884fc46bc09bbea`  
		Last Modified: Sat, 29 Dec 2018 15:51:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ce7e6bdf74be0198d2f94008cb244b8b2ec19f6ef28f36a9ec9b6c5338fb97`  
		Last Modified: Sat, 29 Dec 2018 15:51:32 GMT  
		Size: 70.0 MB (70019108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre` - linux; 386

```console
$ docker pull openjdk@sha256:e9bec4e47699fda2ab9cd42c0696c2cf889fac0c541e7dfa71961b0f277d0bfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166923573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde7a3c6a735f23fae59c89f2c161c121a174122354042468ed232bb752e0d2c`
-	Default Command: `["bash"]`

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
