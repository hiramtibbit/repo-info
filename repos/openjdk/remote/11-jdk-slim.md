## `openjdk:11-jdk-slim`

```console
$ docker pull openjdk@sha256:f4054a02c45b618e5e725737f9380c476236f3fd4332f3c152da727508aa58a6
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

### `openjdk:11-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:40b3e002e884b2734ee675717eb772616864fc81469ad85913873c6130548a74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.7 MB (322706470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46ffa3d7fa29f01ff738ffb197bba1d2c5f2476c6669d1d1d379b12b6bdd9c5`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:58 GMT
ADD file:a391d9232725a03d7b21f24be4d387c1d11f905c3ba448c0a3793745ca8cc6f3 in / 
# Tue, 04 Sep 2018 21:20:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:15:51 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:15:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:15:52 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:15:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 28 Sep 2018 18:24:19 GMT
ENV JAVA_VERSION=11
# Fri, 28 Sep 2018 18:24:20 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Fri, 28 Sep 2018 18:25:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Sep 2018 18:25:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7e1658cb0533dfcb5baa38a0ce3230fd3aea217be1a52d0b46f5521b305d608`  
		Last Modified: Tue, 04 Sep 2018 21:24:51 GMT  
		Size: 26.3 MB (26269506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d7fab3f2f9f524ee8ab66d9bf80ff7ce89278ff495a4c665481d069832089`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 460.8 KB (460788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7705f8b8f1de989ae8e63828bc91553d1aa32563ed57bd05b21828c0ef89920`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fb9b43905ab75618d23770204a6bc486e33867d3761b8a29e052036f87396`  
		Last Modified: Wed, 05 Sep 2018 01:32:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6cfa073662b858a3db3c5d3d3edc0c964614822b28837eb916f7a17ad135785`  
		Last Modified: Fri, 28 Sep 2018 18:33:12 GMT  
		Size: 296.0 MB (295975808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:a13043381b9fe78a7ef9577b13c8ed8fbd92d257963702b379ce2a1e151c8ede
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248821040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26f6bec67d4ca01811c0c115a9ea7cf25aedc88f43ba9c96b9532c655ad9383`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:37 GMT
ADD file:c7d4df0199eabe1be20064e36b7f406cc093e6e4b249fe3d5e80efbdd9d11396 in / 
# Wed, 05 Sep 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:28:42 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 09:28:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 09:28:44 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 09:28:44 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:49:45 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 08:49:46 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Wed, 03 Oct 2018 08:52:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 03 Oct 2018 08:52:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:242ba358ac12243e79ea9900990c026a4b2a428ee912e82307cda7137ce87b08`  
		Last Modified: Wed, 05 Sep 2018 09:02:45 GMT  
		Size: 24.0 MB (24046737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9be3091e0f7f183201efb4d0d133657219a4951278ed991b57026f1390a136`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 452.7 KB (452681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c6149e9cffbd63a5b8711d29fa55ec8913d650f6ba47eae844fdcceb45afd`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93fa67f4197286b7e8493d96d73764a8a366a9fb46d90d8b4a283f649dd570a`  
		Last Modified: Sat, 08 Sep 2018 09:01:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b8f7ff26239200e8a0cffdceb3e011a0013998ce5a968582a79eb6ff2f8391`  
		Last Modified: Wed, 03 Oct 2018 08:59:17 GMT  
		Size: 224.3 MB (224321255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:293b65531f96bb71ee2231aab2e441a9ca9a60b887fb7ed2006fc1ac8f9c730d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271425315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9ea95360a41d98c040536dc4d7f565728efc53b621c545d5fb78942e6dff06`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:34 GMT
ADD file:d966b641bd0795de9f6442fec893e1b9449c978d22fd9094d193b1535602d0a2 in / 
# Wed, 05 Sep 2018 12:02:35 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:10:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:10:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:10:16 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:10:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 12:00:19 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 12:00:19 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 12:01:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 12:01:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba8445defddd24c3f2ac1eee6211fd2c3b937fa4fb76c2b8e6cff179fd515555`  
		Last Modified: Wed, 05 Sep 2018 12:11:44 GMT  
		Size: 22.0 MB (21986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7054fed937aa9eb213be249c9e83d066ebfc81075a7ac56b5fcc5ea9db7df2bf`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 435.3 KB (435302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9fa9b089781c7e685cb03827f255eaddb539c9ca57b5a62119f11f2f48816`  
		Last Modified: Wed, 05 Sep 2018 13:36:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b4a4356e4985fd665b9c4ac6b65f0c326a47b37393268d7a132a1a9d8510b7`  
		Last Modified: Sat, 08 Sep 2018 12:22:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b118d585dd119ed5621d3d9ab24b94c05104621402b92702906ce5548ede5`  
		Last Modified: Sat, 29 Sep 2018 12:20:50 GMT  
		Size: 249.0 MB (249003087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0308a510c2399c9ec80a725be4ce896dcdebacf860821ca63d9d99d9b6211dff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303415694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08dc315312ab0ee7773817f8131ff9b48aae139cefe51e06579d8fe8406944fe`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 08:45:52 GMT
ADD file:24dbb552dccf9615a5e69bf23e9456e1113ecd17c0803a5b489ffed88bedfc74 in / 
# Wed, 05 Sep 2018 08:46:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:58:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:58:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 15 Sep 2018 10:18:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 15 Sep 2018 10:18:35 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:56:48 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 08:56:49 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 08:58:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 08:58:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72c8cb2fd9e6abd14d8304d2ab8f3981d9ee18081e0eec41f5a6329ad46e13dc`  
		Last Modified: Wed, 05 Sep 2018 09:03:24 GMT  
		Size: 24.4 MB (24421582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6913615f01b262099426dbf3dc8f34a66d8acdd16e1b670f80120a578455d15f`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 446.8 KB (446802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43cb8ddfaa74be1577307975c3673ede54a0bdbaf3dfd3ce3f5026dc960b4c`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efcec23c75ed06bd0fbded98349c08c73d716b5d10ace97dc8bfd239aededa0`  
		Last Modified: Sat, 15 Sep 2018 10:40:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332a160159238d0b13a9b2229f1c05d089efc407552bb6b2a30674aa5516972`  
		Last Modified: Sat, 29 Sep 2018 09:26:02 GMT  
		Size: 278.5 MB (278546941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; 386

```console
$ docker pull openjdk@sha256:238a487bae90cb2848b830778328385f7ce2e4594d1c1225e3d31642140d44f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.0 MB (400044139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3302da785be5372b2ade288e9bdf35e651a1c92ef5ebe94bbc8af3dec6b1aa1`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:28 GMT
ADD file:d4af5b170a1dc9b1a5129aad95a449a0412bc890b20f7bcc406b10765217d72d in / 
# Wed, 05 Sep 2018 10:42:28 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:37 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:46:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:46:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:46:39 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 10:49:52 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 10:49:52 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 10:50:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 10:50:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5b7c4e2e64859070ddb846c8d1995c868828ca3f0747e700ce525cca0c668ead`  
		Last Modified: Wed, 05 Sep 2018 10:50:43 GMT  
		Size: 26.9 MB (26855389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe790305403cfefcd04e2c7141ec9c0cdf63365ea7cb2266f45810018349d1e`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 469.7 KB (469687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ab579a9b26299f67deeeff886666f4181e13e5ff5abf594e0cc6b5c92241e0`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e627eb48e8c1bd26da91b7e08e7ef7b07c39051360609f97ce5343cdf95448b`  
		Last Modified: Sat, 08 Sep 2018 18:28:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4993a1ee9aa224c7ce5d616b3ecff9cd5654ac1525ea70b53402e5d341c74e`  
		Last Modified: Sat, 29 Sep 2018 10:59:16 GMT  
		Size: 372.7 MB (372718695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:9d4a811d3d4dfc7667dab875762dc538fab0fa54b1fa62656f78d5b4e7244f91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.9 MB (293895273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a7d7c20f290e055a1672033e042fd17b073a8de6598e9278dead1ffb9c9f276`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 08:18:11 GMT
ADD file:2c83f3c9e6ae13dc30fafc9ae3805ad69b08b4da3106915ed14ab1f30f967f23 in / 
# Wed, 05 Sep 2018 08:18:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:45:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:46:06 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:46:08 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:25:18 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 08:25:20 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 08:26:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 08:26:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ad06b39b761d5d0d233a1f9ed85dd96e65a277e736303cc95163a7aff63a44ec`  
		Last Modified: Wed, 05 Sep 2018 08:23:53 GMT  
		Size: 28.7 MB (28718549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bca90424a7272ac7b846fddea3728bdaaae7093a26bda8e0596bdd046aa8d2`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 458.4 KB (458392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e875ef1b7436e18e8f4d510cd11b49d70c3cc15aadbdff5eceb47089e22b733`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9aef6824ef0b70fdf7e69a05a1b70568d0d0e44ba730a08a33a5b24ae916fa`  
		Last Modified: Sat, 08 Sep 2018 09:40:32 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97c5f54d544bd3b17e103565dba311f070f45a2f96c4f4efbc48c89f571d0dd`  
		Last Modified: Sat, 29 Sep 2018 09:05:36 GMT  
		Size: 264.7 MB (264717961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:38b5637f9f99b7dd6bbea68934f553223f30abc991da6ba7059ca9bf448be992
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285714820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6558a22c95eb1dd23720fc0721cfb09f599adaeecb20f80c56f04b248239999`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:49 GMT
ADD file:7095b21d997eff90a29af9f20d020b10d14cea2f20456b08af38e55cc6c5dcfb in / 
# Wed, 05 Sep 2018 11:42:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:06:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:06:45 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:06:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:06:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 11:58:18 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 11:58:19 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 11:59:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 11:59:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0141ef1e371b0b8a4fc6d4d5118bbbf6045c295fad232833a634af2cf45bd823`  
		Last Modified: Wed, 05 Sep 2018 11:47:38 GMT  
		Size: 24.9 MB (24910961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc3bfe0feae05698cb0859fa53d95daee2e1eaab41cfebb8f0ce0069be8249f`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 469.8 KB (469760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb38e1f6e0d29149721db25f9fbb79505806393a70c856ce96f12151c543441`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d0ba243945140091255d628339e0b6f1580165203f754f88934522a60c1d0b`  
		Last Modified: Sat, 08 Sep 2018 12:14:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fbbc67a4a0f2cdf27f4ff33bd75b4d514a780d49c0441134d0e9176d89b5aec`  
		Last Modified: Sat, 29 Sep 2018 12:16:42 GMT  
		Size: 260.3 MB (260333730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
