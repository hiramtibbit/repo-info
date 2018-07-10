## `openjdk:11-ea-21-jre-slim`

```console
$ docker pull openjdk@sha256:c7b4ed2880ab5c03191ac818b2057856be8696ea4283fe3915d03ebe795fbf81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `openjdk:11-ea-21-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:26fda656ffaca65a8c98826d922e931def53b1d01bd581c100f38aaa7a530207
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100164584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbaf6f2fcb036fc584ff0747290416373030a70530a858317aaf61fcca73fb25`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:47 GMT
ADD file:f6f1518ff68043ed3ca8bae9ce07dcc969ae13bbdbfa6de70c869a9082f53e3c in / 
# Tue, 26 Jun 2018 21:23:47 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:19:36 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:19:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:19:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:19:38 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 03:56:27 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 00:26:51 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 00:29:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:469c03946d59bad3e2f921c73851b892468df0e7358d603dc6cf4cf3754df71d`  
		Last Modified: Tue, 26 Jun 2018 21:34:51 GMT  
		Size: 26.1 MB (26124512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071a53fca24b6a916b853d0e5fc165853317f150c46e8cb23f78f07cbd910cd`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 460.1 KB (460064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abfd2a20a1c0b8700b067a71251d414d178315c2de46c9f6d0c0a85d105c810`  
		Last Modified: Tue, 26 Jun 2018 23:42:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719f4cbb5569561c96d9d0647fec42a80f7405d19386a870c81ac38bc97cf472`  
		Last Modified: Tue, 03 Jul 2018 01:02:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3face1edeed2a37ee76cf0fb7ad7b39614cfaa76fb190dee61aaaa0b9ce9beb`  
		Last Modified: Tue, 10 Jul 2018 00:41:41 GMT  
		Size: 73.6 MB (73579641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-21-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:87fd0e3ed79e46aea50cb592366b69e356c18f9a44b4e81ba52ab8a2fff3691c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82565152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e67c5a989bdb1d15a3afe9205ada92895bd6ed0fcc9f248bd76b0dca86c301b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:02:20 GMT
ADD file:e4dc9e1b1e24036ed3087498dbface6ab0b79dfb58c4371e9535918e73f90743 in / 
# Wed, 27 Jun 2018 12:02:20 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:17:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:17:54 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:17:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:17:56 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:17:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 12:03:00 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 12:04:58 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 12:07:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2df0c7e0ac644839e8a086c87c4c1bca9b9548788dcf9ccde575ab1405f2a3e0`  
		Last Modified: Wed, 27 Jun 2018 12:11:37 GMT  
		Size: 22.0 MB (22049320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2cc055334005230ceeda8b9e90c83996a6a0635879ec58edb0bc182e96538a`  
		Last Modified: Wed, 27 Jun 2018 15:40:50 GMT  
		Size: 436.2 KB (436204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712c3fe743c00817966b0f5cc594e89b7a7e9247ad19bd6d14e74cd5ac72d9c7`  
		Last Modified: Wed, 27 Jun 2018 15:40:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100d2af24839e465c8eb8b25c82f7de8d79773cfb2c815c61ee55269c3ad0155`  
		Last Modified: Tue, 03 Jul 2018 12:13:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341dc298f6dac3e44fae8b028a385736f7e874bacfde878864c9cf313dc7beca`  
		Last Modified: Tue, 10 Jul 2018 12:21:00 GMT  
		Size: 60.1 MB (60079260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-21-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e6451b34d05106159aa850245b8d488e97fc4e46c78a54ce82829a1da3c22118
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89445938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9250a2b5a1d9badafa5d0be93d37ccaf348e4881131290562f526961ff814f7c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:45:15 GMT
ADD file:43ec4f040b626f1ded3ce1a923597ce0c4c7f95f69f95f086a3847e8aeb74bd3 in / 
# Wed, 27 Jun 2018 08:45:17 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:20:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 10:20:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 10:20:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 10:20:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 09:01:08 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 08:56:32 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 09:05:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6a0581b8511ac26263e1c081abe6382d7ce4481f47612f79a5460165410d1da7`  
		Last Modified: Wed, 27 Jun 2018 08:55:56 GMT  
		Size: 23.5 MB (23467711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a41f0f7beab1d044e8af784988f7edba4c2864fc3c3a8895b4a9923cf8688a`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 445.0 KB (444977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a408113d860847fc397e2efe7e9e5b70c792848f6cdd53715333f04f14d5151c`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd458d56d880b6428089d57db1f9444c119d14b8c4e74402c0c1d2d91264316`  
		Last Modified: Tue, 03 Jul 2018 10:06:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006430af5d24cd07e9ea9b77960b8918cfe7cefc8f9807af4d4731d51e5bbb8c`  
		Last Modified: Tue, 10 Jul 2018 09:19:27 GMT  
		Size: 65.5 MB (65532883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-21-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:75da54212f225443c0573afcc403d33952ac2e509cef8e3a3c7467afb35073a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105670106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b21cb42f9551a1b5207d8ddbdc989aa3dbbc9007bd4b14a66805339b4f45ef`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:44:39 GMT
ADD file:f929d208ceb204b3c1497f39d9adcf84b402fd97ac8f46d83cd7037e033a72a6 in / 
# Wed, 27 Jun 2018 10:44:39 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:08:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:08:52 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:08:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:08:53 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:08:54 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 10:51:57 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 10:46:32 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 10:49:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a0fea8269111d652b0ccabbceca6901b3b5791cfc9bb1d6d6f82252a9642bd91`  
		Last Modified: Wed, 27 Jun 2018 11:08:32 GMT  
		Size: 26.8 MB (26801995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95034a8d87d9c355bc27c23ad0c8867e9eae93965df86188e628194c2a12628e`  
		Last Modified: Wed, 27 Jun 2018 15:26:24 GMT  
		Size: 468.7 KB (468729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e631fe3dcfcbf42022608af9fafb31506636834640a617210d6a07c8f2784f2`  
		Last Modified: Wed, 27 Jun 2018 15:26:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296620187cbbf802e8e688d64c5455b985ffa42707e1c5dd4c4b2284703cb51`  
		Last Modified: Tue, 03 Jul 2018 10:58:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7907f42769c288cbb5a6a4b9630624632159ea59151d5e8d3044da76c5775b1c`  
		Last Modified: Tue, 10 Jul 2018 11:01:21 GMT  
		Size: 78.4 MB (78399014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
