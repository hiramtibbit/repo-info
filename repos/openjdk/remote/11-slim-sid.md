## `openjdk:11-slim-sid`

```console
$ docker pull openjdk@sha256:101fc65abea75ea8645f440a09f883fb9ac664a388365b910dba106d181fd592
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

### `openjdk:11-slim-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:ebd6d9301a1750a47881743235ce0e354bfc4a5c9c0c9b175fcb580b42bcd6e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.0 MB (323025966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a584fa241fa0f504b1b3b321445dc4aaf4f262c91903ad3ff4691a9fd65f25d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Nov 2018 22:40:42 GMT
ADD file:4cc555ff7d5c1f575bcc80925e2336d3df7304fbcde4e7ee181fbbd21572e9ec in / 
# Thu, 15 Nov 2018 22:40:52 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:45:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:45:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:45:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:45:47 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 14:45:47 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 14:46:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:46:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:096ebeedeeb6534eadf6d1ae8173145e8f43aedf29f5ae179f8b2e899f84f344`  
		Last Modified: Thu, 15 Nov 2018 23:05:13 GMT  
		Size: 26.6 MB (26571399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac6aea685cb5ee685511876e43026b65163450ee8c4a9f0ffabe065911b11d7`  
		Last Modified: Fri, 16 Nov 2018 15:22:11 GMT  
		Size: 460.4 KB (460378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b0083010f5a1580b0f0d04ae3fef44e71ec2e3f9aa6e8ff466b096857324d5`  
		Last Modified: Fri, 16 Nov 2018 15:22:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc1dbecb164e8ca70c49c609a29fdabbc6fe67162d24936ea99450255ee2390`  
		Last Modified: Fri, 16 Nov 2018 15:22:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e36f3b4ddaf5cd04a48bf8af9a30d67b299f7f0593fba72b9f6d73eb4a9692f`  
		Last Modified: Fri, 16 Nov 2018 15:22:49 GMT  
		Size: 296.0 MB (295993821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:0242f1918d6407989ab9e49cf003464a3a10cb5d624e41d1a8ab2ef48ef9f957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.0 MB (249048615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d574aad88d5e4279892798863f70c6be9f24d109f3476481b232e4ac42e9bc`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 16 Nov 2018 09:55:39 GMT
ADD file:19be812da4075223404dc7bda55ae0000d9272233b4e0fbcb1ed9f5b0d775603 in / 
# Fri, 16 Nov 2018 09:55:40 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:29:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:29:20 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:29:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 18:29:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:29:23 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 18:29:24 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 18:29:24 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 18:30:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 18:30:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:17eef93e4bb11e041cd884daf82539e35840a84b2be6349040c976a02f735f73`  
		Last Modified: Fri, 16 Nov 2018 10:10:27 GMT  
		Size: 24.3 MB (24264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1df0e3a81abb5717b5dc2b32e2def4bd5d403e02eb333d1b28991e1440f2e56`  
		Last Modified: Fri, 16 Nov 2018 18:51:16 GMT  
		Size: 452.3 KB (452266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff52331d2c91fa8a7c435dcb374e7b5ce16df8ae693dff82cdbda380eefee00`  
		Last Modified: Fri, 16 Nov 2018 18:51:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77d18148d79d7ef96150419ba7a8770061d1b342326da07b5a7bc7d7f894a87`  
		Last Modified: Fri, 16 Nov 2018 18:51:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124acac75fa68af167a92b48fe1f27527dd746e6df209d6e3ff3303f6f901f4a`  
		Last Modified: Fri, 16 Nov 2018 18:51:51 GMT  
		Size: 224.3 MB (224331814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:97becddfab22f011b06de9a667c87edb1d0c1bbc5b57cad428c58643322891eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271674254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf50c3892abf7d890f4e6c8d9ad5c8e26f5cf0c6f05b2d16222494c48a0d344`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 16 Nov 2018 13:06:45 GMT
ADD file:43994019e06a9b1d483bb153db2ba5cf8bb01853a44067ac88feda0eb3ebb68b in / 
# Fri, 16 Nov 2018 13:06:47 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:13:37 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:13:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:13:40 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:13:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:13:41 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 19:13:41 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 19:14:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 19:14:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a46a0ea4702a84cb0c937aae8e52a790ac652554e7ab1f95332afe0454164a9b`  
		Last Modified: Fri, 16 Nov 2018 13:19:29 GMT  
		Size: 22.2 MB (22227882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba4f512f4b63db7263583456c419ed07495e2ceaa2cd64fc333b41adc7abf28`  
		Last Modified: Fri, 16 Nov 2018 19:49:10 GMT  
		Size: 435.0 KB (434953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e884e5bcef3b212a4cde9d19fce61220f7c958f7004534396e1b2d607ba527c8`  
		Last Modified: Fri, 16 Nov 2018 19:49:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6185f940a7ed402b995cf1e5b6e8a3d64bf5a1c9ac2b764a58ffc5263b22ed6`  
		Last Modified: Fri, 16 Nov 2018 19:49:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7fbd8f29f3a41fb7c2761d5adee9988e8ee521c35b5e3092404f599fc5f433`  
		Last Modified: Fri, 16 Nov 2018 19:49:46 GMT  
		Size: 249.0 MB (249011050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2a91b71bf53e8ac98176600fc08cf533da8459adf80c2e37dc22e577f54b519e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.0 MB (304037270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb204909ca7d489ff8ae53db9d4e7a2d0c8ba8f541dee291610a6e15d616e36`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:52 GMT
ADD file:28f5428adbb0e42900e3c72b4cbf34c1ec73a7f6291cd1e2723a7f579a754947 in / 
# Fri, 16 Nov 2018 10:11:02 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 04:25:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:25:21 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:25:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:25:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:25:27 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:25:28 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 17 Nov 2018 04:25:29 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Sat, 17 Nov 2018 04:27:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 04:27:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:77c16290cf417232d2441e8fdfed16146041192c6fd690f232cc4db2f328d09d`  
		Last Modified: Thu, 15 Nov 2018 01:31:50 GMT  
		Size: 24.9 MB (24909641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a43f1a0db0daf11d3745b412ba5e2247498323d168915996249c293242557eb`  
		Last Modified: Sat, 17 Nov 2018 05:19:00 GMT  
		Size: 446.4 KB (446389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcad3f77424094b0bd2909b7e5d597015d7b0feba829760f386b01be2327398`  
		Last Modified: Sat, 17 Nov 2018 05:19:00 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be465007a56c376579b832ccfb116d1e5e3b71f955f0560d2e9f3a8f70e800b5`  
		Last Modified: Sat, 17 Nov 2018 05:19:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e32442bc10528eb2b363e9c5baf528e672507c4268e9829c9ff3473f8ff5df`  
		Last Modified: Sat, 17 Nov 2018 05:19:49 GMT  
		Size: 278.7 MB (278680871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; 386

```console
$ docker pull openjdk@sha256:98c1e23989fa9b5f162379b0ddab08b21d3651de63fdf0062696451919d79d1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.3 MB (400309145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbae1a4780bb5625cb5e59e302bb87e344486095d5dc71b1dc3d09c77c799728`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 16 Nov 2018 12:32:58 GMT
ADD file:f770a9c4377e7484e597ccfee46fb09c1a5cf5d83af0ff47bc30b0dbc3690248 in / 
# Fri, 16 Nov 2018 12:32:59 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:47:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 13:47:30 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 13:47:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 13:47:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 13:47:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 13:47:34 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 17 Nov 2018 13:47:34 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Sat, 17 Nov 2018 13:49:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 13:49:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:917b38cd54174de408858630342808b1b78a894725d44b5e2c463b629208f59a`  
		Last Modified: Thu, 15 Nov 2018 01:33:52 GMT  
		Size: 27.1 MB (27147630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af960615d23713e58a50b17e3927c2c9b422197c241ace9b7cc252223653d20a`  
		Last Modified: Sat, 17 Nov 2018 14:26:48 GMT  
		Size: 469.3 KB (469318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b8c3d3867e270c6911df962ea8febd27feaf16c63ecb89b95b62591ba3a2e8`  
		Last Modified: Sat, 17 Nov 2018 14:26:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f4d75ee2c67b914e81ac14e5961150bfc7cf6a02b226dda491a7b2cca25084`  
		Last Modified: Sat, 17 Nov 2018 14:26:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfa1e9a302628b3507f8f523413170761b78e46d4d00f8cf50ec51810b26876`  
		Last Modified: Sat, 17 Nov 2018 14:27:30 GMT  
		Size: 372.7 MB (372691829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:091778708a0b6f7a2c24e5781246d8d7d4a568e3fe6f1ea935b8ad06581a8f0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294757641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676854f719c7feb71f9c6808fea9309e8868f1d5eb0e0d7cc25ffa11c3ac2469`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 16 Nov 2018 09:29:41 GMT
ADD file:4e7aed8442dab8670ee744a30c1509d64bc59b21c1de883a0aa7c347864e8f32 in / 
# Fri, 16 Nov 2018 09:29:44 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:46:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:46:31 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:46:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 21:46:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 21:46:35 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 21:46:36 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 21:46:37 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 21:47:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 21:47:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:10ef44428855cb1531bb921aece7e2fce8c3114535e791b0137ae992bcf6c0de`  
		Last Modified: Fri, 16 Nov 2018 09:38:12 GMT  
		Size: 29.4 MB (29380289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054bdbfdc967c63925725f62f220d089aae13bf5b98096107a202b4ca109c8d4`  
		Last Modified: Fri, 16 Nov 2018 22:26:10 GMT  
		Size: 458.0 KB (457984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c725e69781be4295e403a1705023b4f68d41b63088650dee68b80f6bebce9ed`  
		Last Modified: Fri, 16 Nov 2018 22:26:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad2d205109331b45c64903130f8430bcef7133855780e19ecdee70c37796929`  
		Last Modified: Fri, 16 Nov 2018 22:26:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea82046629512fcf7a88acb5e6734b6cf33b519e7c48e9ff4d1932f479b88c0`  
		Last Modified: Fri, 16 Nov 2018 22:26:49 GMT  
		Size: 264.9 MB (264918999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:a769e53dd28a46dc38c51e594626b0555c71bb06b80d09fb685be412b05be863
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.0 MB (286009474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c64d132910bc3c1e657d0c72dbad2908a301a28f2f4f76c5fe4f100e30f486f`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 16 Nov 2018 12:42:52 GMT
ADD file:3973d2bdf4ed1dc196652a0c44df84251530a44f0375e217e92c2c8da163daee in / 
# Fri, 16 Nov 2018 12:42:53 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:45:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:45:17 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:45:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:45:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:45:19 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 20:45:19 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 20:46:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 20:46:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:17f6fbb713515e136919f5f0438be0049eff031a24cf8c46275983348721893d`  
		Last Modified: Thu, 15 Nov 2018 01:49:15 GMT  
		Size: 25.2 MB (25217722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b800f4791d15790ab70d71048aae04dadfd4964f749d46ce99cda9b4fb1a8cc2`  
		Last Modified: Fri, 16 Nov 2018 20:59:20 GMT  
		Size: 469.4 KB (469350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb03c98a7412abbc65c9348237e4e3991394048f85c985fe27a347f5ae40c3a`  
		Last Modified: Fri, 16 Nov 2018 20:59:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63a30123b42647b4246accf7f77d14825485e4321d2b745dcea8df96ccadfb7`  
		Last Modified: Fri, 16 Nov 2018 20:59:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ee5b015197570ad9c48c9acbe1ac9b6a1a03d9d448f536ae1e7ef5566c7fb4`  
		Last Modified: Fri, 16 Nov 2018 20:59:50 GMT  
		Size: 260.3 MB (260322032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
