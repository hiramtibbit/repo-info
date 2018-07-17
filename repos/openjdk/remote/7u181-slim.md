## `openjdk:7u181-slim`

```console
$ docker pull openjdk@sha256:eb31ab2c06eb216dd3cbc6248fdb24f721cefb01b9ab9c978a323337c6d11132
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

### `openjdk:7u181-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:760b961edcc9b86f4938e00c5bab02e93a51dddd34755c2bff98809de1cb4d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115789013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1c6e59dfa209bca2cc5db0e5f46f5c33990ffaa49dfe92be52ac06f96d0cab`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:23:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:23:46 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:23:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:23:47 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:23:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:23:48 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:23:48 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:24:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83aaae4a41047243bc7114b57d6abbf93493ca7760a12f1bcb11f7796e792a3f`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 463.7 KB (463742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77071b36c9a8bf79837590aee3dcf02df92603573b10a2f99b154d05a80ed68b`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44de20d9dd075cf58bc5c1696f04dd15b9aa035f0f8a86eda6ded43da087c3d1`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d0778610e273b04cce9ce5904c7681be1e8b0a5eeae03f65419fbdf0f13dc2`  
		Last Modified: Tue, 17 Jul 2018 07:14:27 GMT  
		Size: 85.2 MB (85204729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:2e814588aac03b4d671595f624c51a504df234833f9af83a605d6ac5f5d62ce5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101068698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515a769d34e9f93a48e26f83e9752d79f821742d77bba1e1404067bbb208b456`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:50:57 GMT
ADD file:e303ac4cacd7ac2a0a69960e76235ca4a7305f8db9cfae9f97c5dafe0cb57c9c in / 
# Tue, 17 Jul 2018 08:50:59 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:21:22 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:21:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:21:23 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:21:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 09:21:24 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 09:21:24 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 09:23:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:669d043a9b2bd51eea9e767c0315e0ad02bd9f56f1ef5f6172fa53d78285ac5a`  
		Last Modified: Tue, 17 Jul 2018 09:03:26 GMT  
		Size: 28.4 MB (28430654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c284edd78c5a0cec0dabc2d10500872e2acfb829d77dd47be7bc8901de22b7`  
		Last Modified: Tue, 17 Jul 2018 09:34:38 GMT  
		Size: 456.5 KB (456467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb7a4e02c9453c20bf5f6c4b61f86382c39d0cc51055486accedc5bd8e136d2`  
		Last Modified: Tue, 17 Jul 2018 09:34:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b322e91969e8bed0ecb1c9ed5354b0e1c1c150f2fa66e6bc978dc26b66b1bdab`  
		Last Modified: Tue, 17 Jul 2018 09:34:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ac8347e393f334906f3ce508632ebe7400ba9c66d888e8f78bf056d37cee59`  
		Last Modified: Tue, 17 Jul 2018 09:34:53 GMT  
		Size: 72.2 MB (72181201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:6b6257f1b54d15060c5b5ffc1d4b08f85ddce3048d16b897cdf39d344ede7063
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97307579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e554b2cd46f6f5afede7b88c90b9aeebebaa4b3e301d18c93607d9494fc9720f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:36:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:36:20 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:36:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:36:27 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:36:28 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 15:36:28 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 15:36:28 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 15:37:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b343c93eb35a5e886b173446a6458741c5c87f902294f250126b23259952bdc`  
		Last Modified: Wed, 27 Jun 2018 15:44:08 GMT  
		Size: 432.3 KB (432310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a974d8d35792e7b59b655ba3b252d90fd0fb0d0eb7224804cfccbac6d3bd7c3`  
		Last Modified: Wed, 27 Jun 2018 15:44:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546f6bc13ab53f407541154b4a917687e37c720306ea9dabd0c676ab4bd81296`  
		Last Modified: Wed, 27 Jun 2018 15:44:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d55aa68205cd20161db79fa20cb74faa63f90b855dbff878c0d02bba9e9692e`  
		Last Modified: Wed, 27 Jun 2018 15:44:18 GMT  
		Size: 70.6 MB (70588085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6be42fc99b2ff22ac008584da45a4644d103ddcea9dd77baee111fcdb3f6a726
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101462568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be82c0d44b6aa930333517982f8683b51ede72bb77cfe77284627ff673a43c98`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Tue, 01 May 2018 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 11:19:37 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 11:19:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 11:19:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 11:34:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 09:21:58 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:21:59 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:27:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c67f48d3f95f879f0a16939897151d838aeae71743f184d41d557ba719f896`  
		Last Modified: Tue, 01 May 2018 11:59:05 GMT  
		Size: 457.9 KB (457930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4f5df17d67da29d0f5e8846dfb76e7f541e3c84f16d804a52313cf3f2d755`  
		Last Modified: Tue, 01 May 2018 11:59:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825cf0a868d42f586b37204e4c5bbc1ab2668b7d1d01156e2be933557a5fe1fd`  
		Last Modified: Tue, 01 May 2018 11:59:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e2c4c4b21efe92a0380106b96fab3888f3e6dffc7b85718b47a1b5a5fb0817`  
		Last Modified: Tue, 12 Jun 2018 09:47:36 GMT  
		Size: 73.5 MB (73509670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim` - linux; 386

```console
$ docker pull openjdk@sha256:51d017512c053034f4c478de352d590d79275250295c2b94e5d603270bab91c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127931486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a2f85341abe8a2b9a6e2e59f131d86723f54cc2dd94b9e98c143c1957a7dcf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:20:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:20:03 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:20:05 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:20:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 15:20:06 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 15:20:06 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 15:21:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ecc1d61c7e4f9d92c42aa04c2c34df4a177075b5e03757cd2e9763398cdfeb`  
		Last Modified: Wed, 27 Jun 2018 15:34:05 GMT  
		Size: 466.3 KB (466301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c7e2782264f446bd837b4d66b7a139ab8eaa08fc2cd1b899df57f6d2209fcd`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104cf7f40f84e06d4be0be1bb678f84432eedb0d07eaab0f1e54bccfd21e2e40`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26438957b3628d59e1abb9dd905665eabb1a1d3093aa241010d37bc71aed6bbb`  
		Last Modified: Wed, 27 Jun 2018 15:34:30 GMT  
		Size: 97.2 MB (97195128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:6b037c1c5587e9eabc994ce3636093c33bfdfd92dcfe4809fb492249c75ecbe0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104644065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb39738266a2ce61eaf4de002aaa22fbfc370c56d9778806f85e5d39c13e2b5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:38:39 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:38:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:38:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:41:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 08:48:27 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 08:48:28 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 08:53:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904d9cae5b4e13977b3a3f5da2837f3842b44dd1ad001f63bae91c193e6384e7`  
		Last Modified: Sat, 28 Apr 2018 09:58:30 GMT  
		Size: 460.2 KB (460245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f46e6678f464aca7e6dd6754f68d28005443749f3cbf76be8b3e676a6947a1`  
		Last Modified: Sat, 28 Apr 2018 09:58:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5e5c5eac28805942423bb472b259179da4051103daa04229bfb914fbd74006`  
		Last Modified: Sat, 28 Apr 2018 09:58:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6995fd18d5cf865200dc4f3cdfbae7e05f119ae93fe37cc4470e173107f487`  
		Last Modified: Tue, 12 Jun 2018 09:13:58 GMT  
		Size: 74.9 MB (74866090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:4eb6ece600aabf5d36725cf671eef79b756c88bc459e07ad187d723eb2046db6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105579705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0189174fbc3fa0132f7dd110915edce617b5ba9c0e7456a92b8aa461ed6c2f58`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:33:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:33:30 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:33:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:33:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:35:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 11:54:55 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 11:54:55 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 11:55:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dd73eb8e6bfd44480a404637dfc711eb6cfa167bcacd7b692ee13e269920ad`  
		Last Modified: Sat, 28 Apr 2018 14:58:39 GMT  
		Size: 473.2 KB (473195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4b07ff4fb390ce7c50cd1a3f4c1856608817a2e55147026b2113f0e1c9d057`  
		Last Modified: Sat, 28 Apr 2018 14:58:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7c4bb4187f99b40f5b149b933b5730667a7287c28f52903d444450e9881cc3`  
		Last Modified: Sat, 28 Apr 2018 14:58:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a546c91315b3a3af7af0d6c33b2221ea652413255660d01a469751ee7452c60`  
		Last Modified: Tue, 12 Jun 2018 12:01:55 GMT  
		Size: 74.8 MB (74797827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
