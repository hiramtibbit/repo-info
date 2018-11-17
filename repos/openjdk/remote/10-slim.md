## `openjdk:10-slim`

```console
$ docker pull openjdk@sha256:89d455cca112540fd4e24f6aade47f1914a5072e024c9870aa4fbb963552681a
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

### `openjdk:10-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:b1f22243c8dd14003273003b4879cdbbc152add041a4cc9bda13a9df2b810985
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.9 MB (300878104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f0ec2751d2e5bd77574a6c6a3ed5e2df5f637c0da2e69986a8455e3bdb295b`
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
# Fri, 16 Nov 2018 14:52:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:52:59 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:52:59 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 14:52:59 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 14:54:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:54:00 GMT
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
	-	`sha256:cf7ae0d40212ecef57b3d98406b3812c7171c16286bfb9450da71b14c228dff5`  
		Last Modified: Fri, 16 Nov 2018 15:45:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78ea765527dfcd49bc6b945d5e46d473fcb8f7077c9840b0b9aafaf1d118944`  
		Last Modified: Fri, 16 Nov 2018 15:45:37 GMT  
		Size: 273.8 MB (273845959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:aab0d15dd5d9c5f9afa19051ae7d03de9940dda361ea1b4ea7948c17aaafb175
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.0 MB (249025981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8637b08aec249068c8890fd66cef2033458e075e581c919c2a1db85a2c6155c`
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
# Fri, 16 Nov 2018 18:31:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:31:44 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 18:31:45 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 18:31:45 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 18:33:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 18:33:53 GMT
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
	-	`sha256:c08d6ef70f389e11de385eea42482e4f18ccfa656531ccb4fa1a79427ca67116`  
		Last Modified: Fri, 16 Nov 2018 18:57:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422c0e10c5fb1ad95f191d7e7a5a4855c049270cd9ea2b1a7c186ca2df695d0c`  
		Last Modified: Fri, 16 Nov 2018 18:58:27 GMT  
		Size: 224.3 MB (224309180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:96c39707770d77abd1abcc534075074c256ea431628fe8953e132c063a2b03e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260953520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bbe97a0447b66f7e25f173ae6d4342cfbcf4e08cf2b16bd7d982574675a742b`
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
# Fri, 16 Nov 2018 19:20:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:20:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:20:38 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 19:20:39 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 19:21:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 19:21:29 GMT
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
	-	`sha256:09cca96ea0cc30449774ff611be9aec68625aae58eef237d178a4e7a892a6cbd`  
		Last Modified: Fri, 16 Nov 2018 19:58:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00faa156c1cc9d2511a983dfdb1246ca38743b04bb0139fcca5cb354b7d986d8`  
		Last Modified: Fri, 16 Nov 2018 19:59:12 GMT  
		Size: 238.3 MB (238290315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7ff365b2b6aeb7c55b9e5714b10d3f177c7bcbc97d09ec2ef3e15bf5235dbacc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276532143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e230941c967a3f92410a0d12d103cf342c21d846bbb069c1fa5eb4b9d41d31`
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
# Sat, 17 Nov 2018 04:43:45 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:43:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:43:47 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 17 Nov 2018 04:43:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Sat, 17 Nov 2018 04:45:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 04:45:16 GMT
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
	-	`sha256:36d8255de1f322512b1d5d55d46aadaf0891f24bca485966d0c07c5c22dce028`  
		Last Modified: Sat, 17 Nov 2018 05:36:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06264bf5c1a8c3fe06208f7f64331f2f423a59297a10fc3f683c7c92c1c08651`  
		Last Modified: Sat, 17 Nov 2018 05:37:27 GMT  
		Size: 251.2 MB (251175744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; 386

```console
$ docker pull openjdk@sha256:a5bb5d32aef9257ff4daa686bff9789a94afa8ba307d9568302a7b2997b756a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.9 MB (366936448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e090a9fc8cb4f03e0062fa6b291807c8ed79525037f36af29c6d6e55e64c8804`
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
# Sat, 17 Nov 2018 13:55:45 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 13:55:45 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 13:55:45 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 17 Nov 2018 13:55:46 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Sat, 17 Nov 2018 13:56:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 13:56:55 GMT
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
	-	`sha256:ea9603f5ee82ce5c400a36474dc63025639c2021e91da2bf20b2fdbbe0b47376`  
		Last Modified: Sat, 17 Nov 2018 14:40:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2d5e11c45cf483e0a6ec081c2c72bb9c00d262b9131718442b51e97d27fa96`  
		Last Modified: Sat, 17 Nov 2018 14:41:06 GMT  
		Size: 339.3 MB (339319132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:ee945b00e449b456c473c77f0f07c52ca4fca764903c2173b9f9cfefa4f7d681
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.7 MB (281683182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4238e1d2aa914a23dba3f9b3ea78527c7228beb22ba6628d110f1aa21b87ee36`
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
# Fri, 16 Nov 2018 21:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 21:57:03 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 21:57:04 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 21:57:05 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 21:58:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 21:58:29 GMT
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
	-	`sha256:a70bf954869f1f2cea6492a55b19789f0fd5546aa2bc2d43b39321f5417dc047`  
		Last Modified: Fri, 16 Nov 2018 22:39:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecafa7e546c5c53f992c25f8603d46a40ea8e2115d83f6cc41d9c4fea8253a8`  
		Last Modified: Fri, 16 Nov 2018 22:40:19 GMT  
		Size: 251.8 MB (251844540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:f6bde8db8640d13b656d553de9b6be657b3e1e7bf6d2ba389ca5120fac50d7e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275379078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd54f2a591c640f602fc6c9c5c15b4d5ab8b23c2e165e9cd8a264799383396ed`
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
# Fri, 16 Nov 2018 20:49:23 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:49:23 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:49:23 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 20:49:23 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 20:50:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 20:50:16 GMT
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
	-	`sha256:65db5f0dd0d621ebed6e78c0759b8402b3904d55e5c0834c0141205963656268`  
		Last Modified: Fri, 16 Nov 2018 21:05:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967902c063b34f8f9ef38ef5ba8c47e87ac54e2e16946b10e5e17dc707283913`  
		Last Modified: Fri, 16 Nov 2018 21:05:43 GMT  
		Size: 249.7 MB (249691635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
