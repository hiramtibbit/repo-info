## `openjdk:7u151-jdk-slim`

```console
$ docker pull openjdk@sha256:b0fe48b4a609649025732eb9502469b9d06067f5b92063e0d65b8080c6d7b63c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7u151-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:9cc43325175aae421d4601413f3aec5a0f8425b9a4ee33e8e68ae71b1d9b4314
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148792851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f31b21cb81e7956165f937e54af794f2968731a7b0a31672ba6374c3c5f804`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:15:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:15:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:15:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:15:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:29:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 11:29:22 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 11:29:22 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 11:30:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb9677eb5994c545214796f8413ba73dbf4626fbb577aad1372c07946932a67`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 463.7 KB (463726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c48310f4a16bd94a053595d920462410c502a4e31aa3921d14efb305625adbd`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5aab639445cc92fdb05b5bf2216d779f1e5f2518e30633e6e0605860b980e5`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1693ee4449ddacdaef268843ebc0571918978e2ce9067e390a916debbb8bf9`  
		Last Modified: Wed, 14 Mar 2018 13:42:06 GMT  
		Size: 118.2 MB (118206345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jdk-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:559452a75c72d5394fe1bf502c428482844ac088550829501938059b540e408e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121619997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c254cca8235096e294ff93f20dc9d7e1dc5c232d66f5d5a96d0e5b65b3ec3b30`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:56:16 GMT
ADD file:ad47a4b810086b191c8c574897e3b299d645a336566cb3c716b17f3e35fbf87d in / 
# Wed, 14 Mar 2018 19:56:16 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:54:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:54:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:54:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:54:20 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:57:38 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 22:57:38 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 22:57:39 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 22:59:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:16d1ef8f2728e0194f717016e924d03797379be56a8cd4bbdea8d983641afa9a`  
		Last Modified: Wed, 14 Mar 2018 20:07:34 GMT  
		Size: 28.4 MB (28430822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e708deb3ef62f87e9ef8e9485cc96aeecef0b6e4b796009348a8c2598f794fd`  
		Last Modified: Wed, 14 Mar 2018 23:19:45 GMT  
		Size: 456.4 KB (456438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0974e5bd713b55c1470225086a1c1601f68198727c0fec5a0ab0f11a90e38d60`  
		Last Modified: Wed, 14 Mar 2018 23:19:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8016da5a00481f784e9092f68cd74a70d26553cc27ce2eda6d2bd8fb8922dd`  
		Last Modified: Wed, 14 Mar 2018 23:19:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d5c26b9727dd5f717b80457917cb927cef02631692ef554d3382f839c65afd`  
		Last Modified: Wed, 14 Mar 2018 23:22:46 GMT  
		Size: 92.7 MB (92732359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jdk-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:9779f700824ee8e3600fa06948ea2a761291bb82aa3de9a40dec69ac1a3e311d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127197362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260350dd03ea4c837fd7d10ab63f233ecaf14c6df7b832daeff750af94d103fd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 14:11:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 14:11:16 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 14:11:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 14:11:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 14:14:54 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 14:14:55 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 14:14:55 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 14:16:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b5b51682b5721472ebae1c157daa42a439c1c7350098b17dc2a72c0c9c5ed3`  
		Last Modified: Wed, 14 Mar 2018 14:43:02 GMT  
		Size: 432.3 KB (432306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ad124330a918a6ddc3a11579dddc558a2ea7385fc78e0865636207d63c7764`  
		Last Modified: Wed, 14 Mar 2018 14:43:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37eea2a8b3cd6a4e861b8e29320fcc0a1af517e5c183288696dfd04a696c13cb`  
		Last Modified: Wed, 14 Mar 2018 14:43:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab5535c3aee2d4d761404a887b6630e595db25acb28e8eb9ac7d47b4348352b`  
		Last Modified: Wed, 14 Mar 2018 14:46:19 GMT  
		Size: 100.5 MB (100474395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jdk-slim` - linux; 386

```console
$ docker pull openjdk@sha256:2f59a75c489ac8b36c17c44b904715b3335d69dae22558671c2dbd5260298a6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161865987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c4d0a662a33e3e427bdebdd05cd3a577dd54ee60226e840f8124a6950f15774`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 05:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 30 Mar 2018 05:38:32 GMT
ENV LANG=C.UTF-8
# Fri, 30 Mar 2018 05:38:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 30 Mar 2018 05:38:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 30 Mar 2018 05:57:01 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 30 Mar 2018 05:57:01 GMT
ENV JAVA_VERSION=7u151
# Fri, 30 Mar 2018 05:57:01 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Fri, 30 Mar 2018 05:58:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04a27e96ce23b95c48964629de8b12ae62c6016cd048835400412b6d057d57d`  
		Last Modified: Fri, 30 Mar 2018 17:28:19 GMT  
		Size: 466.3 KB (466282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10b9a12e3db3f5b178c9d0bf664dcabb949cc035de72588be6aae00fa5d4dd6`  
		Last Modified: Fri, 30 Mar 2018 17:28:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eeeb88a2160740e5578513d3081daf0985ebebf9d35566d937e62cdbde6666`  
		Last Modified: Fri, 30 Mar 2018 17:28:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d78738e19cfaef0f49a2e75f4839a66f9cdc463b894fbddd3e98b899628cc6`  
		Last Modified: Fri, 30 Mar 2018 18:05:27 GMT  
		Size: 131.1 MB (131126130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jdk-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:3840944f0ae1b32792a70b4c1411ffcf9111dfaa3f1af7f66136921ff95720af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125011880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3203512b03eb94999282d8d6c1d2347e7115a1d7466eef78607a4239a1b32d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:43 GMT
ADD file:27ae8e2821fa9503c72fac99c983a370df91d52d7a5b3423149597f1e7809a7a in / 
# Wed, 14 Mar 2018 00:32:44 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:25:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:25:53 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 05:25:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 05:26:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 05:45:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Mar 2018 05:45:34 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Mar 2018 05:45:36 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Mar 2018 05:57:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5853f0e07e55a691985bbc1b5abe444cd0a1293cf6b5356cbc6b27b3cbd790ef`  
		Last Modified: Wed, 14 Mar 2018 00:39:27 GMT  
		Size: 29.3 MB (29311797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a23d0d988d639cb2abed3fbe682af7bc919fac598a0cb4258398705b86dec85`  
		Last Modified: Thu, 15 Mar 2018 06:11:35 GMT  
		Size: 460.2 KB (460246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bb6680cccebe9a737c4c87a3e289c930abf7d89966374066bd85cfa50912a2`  
		Last Modified: Thu, 15 Mar 2018 06:11:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704e8a024ee8d914c5eaf0ff6890773888432ad7f97a1f4ca0d87affdc53c0f1`  
		Last Modified: Thu, 15 Mar 2018 06:11:34 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce162ae05ca55e2d25a37738a5bf539b7b29d0c1af31499c1bbe1e272064b5cf`  
		Last Modified: Thu, 15 Mar 2018 06:13:44 GMT  
		Size: 95.2 MB (95239457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jdk-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:44b132edf644fd2e8c71cfe499556267a676d908c47b11b12f14884aaa639fc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125862673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cfe3c1ed5e991137f4a60b3a27a23287a916b6305dd3eecd770f6683f94d0e0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:12 GMT
ADD file:5cd4239ce601f059eb8656abcae1c4827d7d75823a0e5e1a60bb2704635bde19 in / 
# Wed, 14 Mar 2018 05:22:12 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:44:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:44:19 GMT
ENV LANG=C.UTF-8
# Fri, 16 Mar 2018 05:44:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Mar 2018 05:44:21 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Mar 2018 05:45:14 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 05:45:15 GMT
ENV JAVA_VERSION=7u151
# Fri, 16 Mar 2018 05:45:15 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Fri, 16 Mar 2018 05:46:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:73a91a9f561cad48038a81f8d9c37a90e39c3d0c806aaedb15f2f77092870ce4`  
		Last Modified: Wed, 14 Mar 2018 05:26:42 GMT  
		Size: 30.3 MB (30301960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5a370e5b79737d84b7be8a7213874e303146d0326051fd88addd473f6724d6`  
		Last Modified: Fri, 16 Mar 2018 05:46:53 GMT  
		Size: 473.2 KB (473183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f957e9ed01fd570a4cbc1c51faf84b1b3c5dc82d78ae1f1010d5e3711369b82`  
		Last Modified: Fri, 16 Mar 2018 05:46:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a42278e1243d4555fb09cbba36ebc1f8288edff05700405a7e1af08928f10e`  
		Last Modified: Fri, 16 Mar 2018 05:46:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d7acdce8d6ed1100b02069ffec48cf75ec13d45d271d9216349947c7ae1fa`  
		Last Modified: Fri, 16 Mar 2018 05:47:35 GMT  
		Size: 95.1 MB (95087149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
