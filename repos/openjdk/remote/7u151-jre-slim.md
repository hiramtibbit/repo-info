## `openjdk:7u151-jre-slim`

```console
$ docker pull openjdk@sha256:a2eac8a3229c5831a4055cad8788f8d770cf10c2df8bce251966fe7052e07420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7u151-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:3f4ab9b2b807235d2286c0d866db84ff4bfc05e5962ca864f6b291156735ef83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104337690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff05135139aff9826c11a298d0ea6633952d1fa72842dff844514062f3ebde18`
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
# Wed, 14 Mar 2018 11:15:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 11:15:34 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 11:15:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 11:16:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:ffb819f359900ca149e60117d0ad7331f8b77c33227870e204aa5127c4abf52f`  
		Last Modified: Wed, 14 Mar 2018 13:18:38 GMT  
		Size: 73.8 MB (73751184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:d42dd68d0dc6ff8907675843d5da2c1ef8c1c7768d935846f9191b75bc90f2bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92269079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b53e7344933809020a960d0466ceb007053ca0defa32babe8d05b5c757fb4c`
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
# Wed, 14 Mar 2018 22:54:20 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 22:54:21 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 22:54:21 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 22:55:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:3c9a209108841eee705526cefec4875cd306a8dccdad1f646e7a07c6f93339d4`  
		Last Modified: Wed, 14 Mar 2018 23:19:59 GMT  
		Size: 63.4 MB (63381441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:96b35f0e48ff6d549c29ae9d476513b23b7faf8576e59ac3983e9c586261ff89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88651158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcbacd34caa14270023d45366e36cf80e6dcec6629a8a9c3a12e370b49669ddf`
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
# Wed, 14 Mar 2018 14:11:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 14:11:19 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 14:11:20 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 14:12:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:0306c488cb36afa8f9c50f672cd7c1560a341082b335d838fdc01a96bdde3eb0`  
		Last Modified: Wed, 14 Mar 2018 14:43:15 GMT  
		Size: 61.9 MB (61928191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:c4979896c524af6f9f944090eb97cfcc070351ece9a4406b320c77ca15db8105
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115657985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c04ed8dc75d0a407dee6b35123f6fdb3c5327956ac549cfb4105d62ac0d6ba`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 18:25:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 18:25:36 GMT
ENV LANG=C.UTF-8
# Tue, 20 Feb 2018 18:25:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Feb 2018 18:25:38 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 20 Feb 2018 18:25:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Feb 2018 18:25:38 GMT
ENV JAVA_VERSION=7u151
# Tue, 20 Feb 2018 18:25:38 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 20 Feb 2018 18:26:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe72695ccd31f30828386b3ba66e6290897928443a839921d0967c858ee6d9e`  
		Last Modified: Tue, 20 Feb 2018 19:52:53 GMT  
		Size: 466.3 KB (466262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0208f6d1f56f7bb80ff83ea1deeb0f8fe082197efc24327a521bac4045cc17fa`  
		Last Modified: Tue, 20 Feb 2018 19:52:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e63e79c2a3da37d1b5631656ad834ec23e15fb5f445c8567835377c37286f9`  
		Last Modified: Tue, 20 Feb 2018 19:52:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e262824c1630d406df9e37310fa516f7ffb17d4377411bc16268bfcacec327a`  
		Last Modified: Tue, 20 Feb 2018 19:53:17 GMT  
		Size: 84.9 MB (84918147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:b20b61b0db232c7abb6c59bc0920c19eb65aee4893c295ca1df5cf81ec458039
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95185007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66de826c06638ae58b2a535f459a874a80f5fb03eccb949fe146c67b374ef4a5`
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
# Thu, 15 Mar 2018 05:26:07 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Mar 2018 05:26:10 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Mar 2018 05:26:14 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Mar 2018 05:34:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:d59acf8b32c808c38fdd38cab8db0c08325620225d6ee8b8e29fd66db99e663f`  
		Last Modified: Thu, 15 Mar 2018 06:11:47 GMT  
		Size: 65.4 MB (65412584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:e020b81723309f6de404ced64f9772751760c8430e30722e44ff021cd5e3b841
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96275925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede23a63a9598b465ea8738dc634085d796b6cc200947757f0e4039e0f301956`
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
# Fri, 16 Mar 2018 05:44:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Mar 2018 05:44:21 GMT
ENV JAVA_VERSION=7u151
# Fri, 16 Mar 2018 05:44:21 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Fri, 16 Mar 2018 05:44:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:ea6a537cc24f11c0fb781e2fed9009924221fc5d79a36bb1980a0b7421f7b244`  
		Last Modified: Fri, 16 Mar 2018 05:47:02 GMT  
		Size: 65.5 MB (65500401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
