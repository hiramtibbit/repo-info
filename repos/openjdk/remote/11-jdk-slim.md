## `openjdk:11-jdk-slim`

```console
$ docker pull openjdk@sha256:f2843172673dbe612040bc4b9ed79983b8d250c4c855b8f771327f785d6b4097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `openjdk:11-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:ffe89dc133d4054c071363985a1ca3040acf6a6ccc9bfe4f8b11911e995298ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.8 MB (173828208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc3f970d2d09dd4398b6405036f3a3049966107e53ffddbffba53c70374ae5b4`
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
# Tue, 03 Jul 2018 00:57:18 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 00:57:19 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 00:57:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 00:57:54 GMT
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
	-	`sha256:1d35ea88e85c1682b2cd5ebe7f082a933f66bc00d067a8121e0be4e699da592e`  
		Last Modified: Tue, 03 Jul 2018 01:03:10 GMT  
		Size: 147.2 MB (147243265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:32b3d1d602c0f7cabb8440ed546c7aac4b37baa04e2c4389ae2641e3c8bdf333
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144131045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2e1fe4e4d1356c1a9ca323f16677ab9cf9c365863def816be29b217f6c50d1`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:27 GMT
ADD file:e57206d1e45e262bfb6e4f3bc11722f30ee3b33538b4c1095792a076d5b4b2aa in / 
# Wed, 27 Jun 2018 08:52:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:25:21 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:25:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:25:24 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:25:24 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 08:58:41 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 08:58:41 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 08:59:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 08:59:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ab290037f4b3ddf1d7b1d19da8d2becec47e1854d7d4ee1442ab7f82bde3b262`  
		Last Modified: Wed, 27 Jun 2018 09:01:27 GMT  
		Size: 24.1 MB (24081950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68d3622f3af06525b6108a0a3e2bb840402b384b4d8f18836036fec4bccc750`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 453.6 KB (453561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078e99830203460c84053319478b36f2cb0988d2ecd3309a56a01fb37a93fbd`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d0b1ae35fca8130defce0103a4309a5c905402a7c6646e2827f0934dd77aaa`  
		Last Modified: Tue, 03 Jul 2018 09:03:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1141d78eec885380c5e10dfa4278f8df1e03e69f2d86bcd1056c18e59de1c730`  
		Last Modified: Tue, 03 Jul 2018 09:03:30 GMT  
		Size: 119.6 MB (119595166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:62253fc3f4a048cc628e30d95cb4df98bca5b1b1f343585a10284ac0f2e14c87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161660909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1737131179d503fd5a846eb811991d31ec141914b0dbf862bfa8b7dd6f5360`
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
# Tue, 03 Jul 2018 09:37:36 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 09:37:37 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 09:39:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 09:39:30 GMT
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
	-	`sha256:ffcc68b902885702317f71575fc0de9b8e91c80927c3c13ef281c6b85ddca9fe`  
		Last Modified: Tue, 03 Jul 2018 10:07:12 GMT  
		Size: 137.7 MB (137747854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; 386

```console
$ docker pull openjdk@sha256:178ac244e66ffb591c4d8265519c3314a86dbf697bbd64b8705243f60834fc75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177130480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37f290a8bf220e9343059fabcc98e573985c3687c8a46d92324970d1959a199`
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
# Tue, 03 Jul 2018 10:47:49 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 10:47:50 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 10:48:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 10:48:29 GMT
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
	-	`sha256:41c37518319ae01cff555896ca0f356a57d8e893bc684d2dbbef0b14df1592d9`  
		Last Modified: Tue, 03 Jul 2018 10:59:01 GMT  
		Size: 149.9 MB (149859388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:e7782be87edc151596cce344417366ba0ff6407e6b2dc5a21d3352a507f93d1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158011350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc024e5d9334ade86918b16e8f0abf5601949c02e64312afff674438bd11c64`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:43 GMT
ADD file:b78eeabafaf8782971a5f0656c75c78c8c5433892c3eaf767f7929efef69c569 in / 
# Wed, 27 Jun 2018 08:19:44 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:09:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:09:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:10:00 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:10:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 08:43:21 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 08:43:22 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 08:45:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 08:45:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:97c5cc34273d3c2f949fe7e1929100eee6ce7c2a2cd3643a25cdf70d6de85dc0`  
		Last Modified: Wed, 27 Jun 2018 08:29:18 GMT  
		Size: 27.4 MB (27418879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d97ed0631635aedd4374fc866e43da4d472d2db0823719ee368e40e6e1a9bb`  
		Last Modified: Wed, 27 Jun 2018 14:00:53 GMT  
		Size: 454.8 KB (454789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40effdc3cf774d1ccc0bb80e0f9f3ca757b9aacb532d5e613e4f3ae4c64642a9`  
		Last Modified: Wed, 27 Jun 2018 14:00:52 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11363c83812e250e75693f6bf5d58df83dd5da1c543469f17b5467d3c3553dc`  
		Last Modified: Tue, 03 Jul 2018 09:08:21 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1f28886adefe14d5186367f2eda94851f6080e4edc41997be73019254b4179`  
		Last Modified: Tue, 03 Jul 2018 09:08:43 GMT  
		Size: 130.1 MB (130137313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
