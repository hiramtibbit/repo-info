## `openjdk:7-slim`

```console
$ docker pull openjdk@sha256:9dcdb8a65e99a4d2c2143caf1a114d1cf84820e9eaaa3debe43f22ced80879e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `openjdk:7-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:5a3ece789336300807a44b3fb95a9e541d8888f1d0877a967f3250bcb56f8218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116317279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192016417b2c498849196bd8b9c1a309ebe90a5217da78ae69a145a1bdd1ff4f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 01 May 2018 13:03:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 13:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 13:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 13:03:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 13:19:38 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 00:31:34 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 00:31:34 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 00:32:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf6b73962c3830820608005b392a0107fcd520467b7231bd529ccfdb1f073a7`  
		Last Modified: Tue, 01 May 2018 17:25:57 GMT  
		Size: 463.7 KB (463726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394d038a3cf8b8a526cb63c52bb6f0c37e2b25496d5f0157f55469b30b8c0c80`  
		Last Modified: Tue, 01 May 2018 17:25:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136dfc0c9d5e44db876a849088c4715b28db4e6a4e0b943e6bfd24e1c689cd00`  
		Last Modified: Tue, 01 May 2018 17:25:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68a47a97aec002ecbdec2ed76b0d8cc86f76ab5ff74278dfe8a96887102229f`  
		Last Modified: Tue, 12 Jun 2018 00:47:38 GMT  
		Size: 85.7 MB (85725878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:0e157dff4b45a0352ca19458967d6d7c111b987100e1753f11288ad587415b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101588155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbe4d04ab84d5b1fb4dff78be38d346984d678fa66f2276297298fa31d3a0fd`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:55:03 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:55:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:58:14 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 09:02:00 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:02:00 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:03:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64413c45c2b1761082392f40b8eb4f8c01e04ace06cf565ed33520cde914a2f3`  
		Last Modified: Sat, 28 Apr 2018 13:30:17 GMT  
		Size: 456.4 KB (456447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc8503ffe14feee207fc8f6387fe1698d57ea88c261e13e32014df47d242ab2`  
		Last Modified: Sat, 28 Apr 2018 13:30:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3238929bec356935380aebd06a38df60f54e0b955554074db0321e380626388`  
		Last Modified: Sat, 28 Apr 2018 13:30:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8b3eb3d2d97e72ae8e6877961600ecf30b503e9a6b45069d4a1ecbe8a74c35`  
		Last Modified: Tue, 12 Jun 2018 09:11:43 GMT  
		Size: 72.7 MB (72695614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; arm64 variant v8

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

### `openjdk:7-slim` - linux; 386

```console
$ docker pull openjdk@sha256:64f10d2048f9bef1d10d41005440fc1df027733205ad73af5ff7dc78eaa28419
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128392667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823c390ee7495af9bbab98eba421e3075058fb1d0cc1f0e608f3d4f7e2edf041`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Thu, 31 May 2018 06:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 06:08:40 GMT
ENV LANG=C.UTF-8
# Thu, 31 May 2018 06:08:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 May 2018 06:08:41 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 31 May 2018 06:13:26 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 10:54:04 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 10:54:04 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 10:56:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93922e68ccea08277f2a4c59128ace53b10fe857702b1d9b8a7efab5b03464`  
		Last Modified: Thu, 31 May 2018 06:46:06 GMT  
		Size: 466.3 KB (466282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55e5d35b28c2158509b6d34570c3e05dc1002434dc68c2ba455fdf9fa71b64a`  
		Last Modified: Thu, 31 May 2018 06:46:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5275fdf6127f8903bc3be2c6a5f857d61a31085bf986d759bec459cc250278d4`  
		Last Modified: Thu, 31 May 2018 06:46:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbc642f5cbe4cfb21890895d4bf3965c2ec8b280ca9d8653850990a696a688f`  
		Last Modified: Tue, 12 Jun 2018 11:12:31 GMT  
		Size: 97.6 MB (97647348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; ppc64le

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
