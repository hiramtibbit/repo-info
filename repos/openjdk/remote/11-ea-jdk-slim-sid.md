## `openjdk:11-ea-jdk-slim-sid`

```console
$ docker pull openjdk@sha256:22df741971f901333a1f19cd6a7320d1f0a06a5c6d2d51d62e8c83fdba99002e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `openjdk:11-ea-jdk-slim-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:256df98ba68e25b90915c4a28c2127cbabe7407b5adbd72471dd524d8ab59c58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174566483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6227c6ac64e0aead84023f4edfb914fae344be044b6ff1f89d49e4e386ffd6`
-	Default Command: `["jshell"]`

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
# Tue, 10 Jul 2018 00:27:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Jul 2018 00:27:29 GMT
CMD ["jshell"]
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
	-	`sha256:65eff7b7690f16ac8e869ea7c77def6332d81f70823ff755b615d3dd2ca78b6d`  
		Last Modified: Tue, 10 Jul 2018 00:36:13 GMT  
		Size: 148.0 MB (147981540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jdk-slim-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:0def29d064f015dad6a9c9709f2eebf22a9f2c6232f4b11dc07e77c93e9e952b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148885716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef91538ea30737a1cf5158adcfaade3d12b990cc0ddce94e75c2904b64b877e`
-	Default Command: `["jshell"]`

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
# Tue, 10 Jul 2018 12:05:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Jul 2018 12:05:30 GMT
CMD ["jshell"]
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
	-	`sha256:4bf54f7a66c24fa73eadc8328bcc980fb9ea7725cf4b2f11e015efc767ce23e2`  
		Last Modified: Tue, 10 Jul 2018 12:17:38 GMT  
		Size: 126.4 MB (126399824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jdk-slim-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:bded30ae57c1a7c2eccef615adf6d4a6b865e43ed43533e47b92e6b6945cff4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162427901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7377c539d77c2859fc7e649cb046a191116395f32ceb1ad8b51b8854e9c7479f`
-	Default Command: `["jshell"]`

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
# Tue, 10 Jul 2018 08:57:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Jul 2018 08:57:44 GMT
CMD ["jshell"]
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
	-	`sha256:5baa05e06aff3dc96545c06f74e9a526a059252c4d43988c1039bf4ffb700a86`  
		Last Modified: Tue, 10 Jul 2018 09:13:31 GMT  
		Size: 138.5 MB (138514846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jdk-slim-sid` - linux; 386

```console
$ docker pull openjdk@sha256:986e2aa177674e0489afae343765ca627f6bae15f411e0597691992c19616a21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.9 MB (177941853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58bb086515e9c0b250d5c06e8ba893aa728f5d5052e576f95edf66b314211552`
-	Default Command: `["jshell"]`

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
# Tue, 10 Jul 2018 10:47:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Jul 2018 10:47:19 GMT
CMD ["jshell"]
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
	-	`sha256:14e079e5fb98d25b5900b5d166545c144dd7d664b50b03442e35b78b8e26bf1e`  
		Last Modified: Tue, 10 Jul 2018 10:55:41 GMT  
		Size: 150.7 MB (150670761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
