## `openjdk:10-ea-jre-slim-experimental`

```console
$ docker pull openjdk@sha256:f55438d6cff1f5fc2242454ad009e1342ecbf96e3fd44d3a88e0042b2ef38fb8
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

### `openjdk:10-ea-jre-slim-experimental` - linux; amd64

```console
$ docker pull openjdk@sha256:b0264b319c11bbd346b017a781cee3e2736f21a1b11bc72dae962109c2d1d785
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101993151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce70efefe960e8dbfd04807c58b52e4a0ec870f62750a0720285feaa80a407a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:55:48 GMT
ADD file:ac9d323ed24a4b5dc4fec4f54d450a9d31b43fc0438b833c2e3d2f2c4d0aec24 in / 
# Thu, 15 Feb 2018 01:55:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 09:31:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 09:31:15 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 09:31:27 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 09:31:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 09:31:28 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 09:31:29 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 09:31:29 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 09:31:29 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 09:31:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b9f031beeb82f12164a6ac946eefce7b30a623147dcb0f4cbb6c7b8a4bed7fe5`  
		Last Modified: Thu, 15 Feb 2018 02:23:43 GMT  
		Size: 25.5 MB (25458625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3422819e1d29ffdfe2a947d2f18ae7d11af33cd1e9a3be8692e80de0e7eedfe4`  
		Last Modified: Thu, 15 Feb 2018 12:02:42 GMT  
		Size: 460.3 KB (460317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bd5360237f8cbe3f4aa9e97dfa9ec6392a4586a32a3bea9ba25a4a049a83e0`  
		Last Modified: Thu, 15 Feb 2018 12:02:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20487e2d90eff0761aaf198b24cc7611ed5dea56b61e97376b9367edc45b22dd`  
		Last Modified: Thu, 15 Feb 2018 12:02:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9003116d68dfe75295e1055f413c919def3611fddc717c057158ba380ad426`  
		Last Modified: Thu, 15 Feb 2018 12:02:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28713445c9dcfd27019af392964621faa2ce703eba85c1dcfe1cf4b73597e985`  
		Last Modified: Thu, 15 Feb 2018 12:02:56 GMT  
		Size: 76.1 MB (76073617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:f14cc3121bd85dc292c0ae397f0276afeeb8ccb7f70256a6a565cd349ebeae73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.3 MB (85283062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a4efc2c23752a09e69a1e46a31ee0ecc9a939e54cfa21f84730e8f88b24300`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 21:00:22 GMT
ADD file:e86fb04d129478e6ac96176adfffb3e711115a347024d1cb531bc50ac60a1ffc in / 
# Tue, 12 Dec 2017 21:00:22 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 10:57:30 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 10:57:31 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 10:57:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 10:57:32 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 10:57:32 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 10:57:33 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 10:57:33 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 10:58:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:bef6bbd4145ba81761456f5a5681c95e374890b48a13d53619c2ba83e7f89764`  
		Last Modified: Tue, 12 Dec 2017 21:10:34 GMT  
		Size: 23.7 MB (23652669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51e38575884f240f90306b3d9d111c7bf53ae381ce029c25a1d5b6f295c545e`  
		Last Modified: Tue, 12 Dec 2017 23:59:36 GMT  
		Size: 454.9 KB (454853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea42cdf09abb5eac19d8c860abb4dd9f30256f86d95639897b450fff4a45dde`  
		Last Modified: Fri, 19 Jan 2018 11:04:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53957ad4c288ed7cdf504992f9839a2c8f059ec19ba1dd9010d9393feb932e5c`  
		Last Modified: Fri, 19 Jan 2018 11:04:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0a48a16eae6d458c60b7864bce50ee76fd1fc2c0ca27bb515578a3e626358d`  
		Last Modified: Fri, 19 Jan 2018 11:04:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b706ff79d291e866a54b8d2ced78b30e34dcc2139eeefc6d74e5f7bc55bcf2`  
		Last Modified: Fri, 19 Jan 2018 11:05:16 GMT  
		Size: 61.2 MB (61174939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:7c4019a1aa9b379b40d8ea60cfc062cc4bb4e96bcab3a4e704d05107c02ad67e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.3 MB (85264537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c729b467b4ae2835bc44253a8635f8e72ee7d022968c6a2eb24d7e9a0e5605f0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:31:16 GMT
ADD file:eb741b8fe83ce46b665a7bdd2a99528846dd7547771a65092065e4bc8e15c367 in / 
# Tue, 12 Dec 2017 13:31:16 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:22:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 02:25:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 02:25:09 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 02:25:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 02:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 02:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 02:25:11 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 02:25:11 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 02:25:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3ecac93191c5706244513457d41a41cc88efb0c7ceee2302e73b23e9ec168fae`  
		Last Modified: Tue, 12 Dec 2017 13:43:05 GMT  
		Size: 21.7 MB (21702273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1188f6ec9d3ba1e73240169767a8a14ae35c21abcbe369aa29a1dc5733d0bd65`  
		Last Modified: Tue, 12 Dec 2017 15:39:04 GMT  
		Size: 437.4 KB (437418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c5cb78f0289d85a609977d97bc771292fa67003342738ed7f40670b7750f45`  
		Last Modified: Fri, 19 Jan 2018 02:34:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5c4b00891efeee4fb0e8b1d518023212514dac7097a6338ff5d1463bfeb1bb`  
		Last Modified: Fri, 19 Jan 2018 02:34:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d4d7aab3f2e9861c83c9cb2dad8b896f7d29f35421d0b86a22925b5f6bb6e9`  
		Last Modified: Fri, 19 Jan 2018 02:34:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f78882552788586d21bfa6f82573e038a7bb4e181564a01217c28394c0d7cd`  
		Last Modified: Fri, 19 Jan 2018 02:34:35 GMT  
		Size: 63.1 MB (63124243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fa5b1de71d981b91c86a6c8ae38cf27ecd0122c6c69aaf83ff0cb705f98b55b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.1 MB (88102919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986ef5d55a24172d6b8d58d10a95f2d13239b62403d3d28988e00f53e35c0e64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:30:47 GMT
ADD file:527347414411e4bab808cd9d1c7924a32554d04164b13a0b598ec648d11f27ee in / 
# Tue, 12 Dec 2017 18:30:48 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 11:06:18 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 11:06:19 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 11:06:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 11:06:27 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 11:06:28 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 11:06:28 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 11:06:30 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:07:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8ad0e67dadf87e1ab909d780cc670757702de1c5410e3aa7278328a71490ec00`  
		Last Modified: Tue, 12 Dec 2017 18:44:50 GMT  
		Size: 23.0 MB (23010638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7bde884095f3c349aadf8979a279fe0b1eb3342e0d13e5ddaf8218283448d5`  
		Last Modified: Wed, 13 Dec 2017 02:31:52 GMT  
		Size: 446.2 KB (446189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3060f23867d37a5c7cba83ec1549f2a7d352d444a211b0f5a230d563dec46`  
		Last Modified: Fri, 19 Jan 2018 11:32:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbd372ee328942152c82e653c0a3ae3dbbb25176c31ab3573e4f2478c413c28`  
		Last Modified: Fri, 19 Jan 2018 11:32:46 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d7eb12c8ee32bd59d9de4a6220db96919c7d85f691fc72d17539b436bddb58`  
		Last Modified: Fri, 19 Jan 2018 11:32:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d665a62cab22fa7c8ea9aedc33a407523ccf24b414192a33109c9a52b16d712`  
		Last Modified: Fri, 19 Jan 2018 11:33:11 GMT  
		Size: 64.6 MB (64645489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; 386

```console
$ docker pull openjdk@sha256:984ec81327ade83aef3c4d5da1ee26e715227acd2a9bea8a6d97f4d226e75f6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107149787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d358020233f3569517706886dbdd1dd41f61f0aa41407ca796dec6280e2ca38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:26:01 GMT
ADD file:46df013c9ec06d520ea24c10ca0e5e7bc83e313168969cdcad677d7b418cbbc6 in / 
# Tue, 12 Dec 2017 14:26:02 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 19:03:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 11:15:55 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 11:17:08 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 11:17:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 11:17:10 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 11:17:11 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 11:17:11 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 11:17:11 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:17:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4603b89d42471f1f0576b6d8d62275a71b7467d816510c7a1dab54290955d810`  
		Last Modified: Tue, 12 Dec 2017 14:58:48 GMT  
		Size: 26.0 MB (25952276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce07f9131e6e05a4febbb0e2c586bbab194d1a1ef6bb05c91c89b3a50a062a2f`  
		Last Modified: Tue, 12 Dec 2017 19:52:07 GMT  
		Size: 469.9 KB (469866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11e4e69ce866261763cc49064b5019c258329dde6c85165c2a3f59f3dcde356`  
		Last Modified: Fri, 19 Jan 2018 12:26:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0727f553a7b782ebd9f00e5e33769f62aa07e6a036e6bbad5d8f4dc4a5adfd1`  
		Last Modified: Fri, 19 Jan 2018 12:26:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9b774eaf6bc3dbded8aa61be45ede6c38fcf193ad7751c129e18eba2346631`  
		Last Modified: Fri, 19 Jan 2018 12:26:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f1f0b120322013fa181345ee53334d1e76eb25dac8e52e70234914e8af400`  
		Last Modified: Fri, 19 Jan 2018 12:26:26 GMT  
		Size: 80.7 MB (80727042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; ppc64le

```console
$ docker pull openjdk@sha256:227b1ce74b1eb28e55d653c609a24fa1bd1719f6b59f183df18e6081b883e2c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93201333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f30df355c65442b80b79e8bfa96f2f1f3188d5e59e70f9e50ff1a9b5c73e06`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:36:05 GMT
ADD file:91265f9e386b45036e051d1a52d6a070f8b8eabeffe16b8b6f50073469e1981f in / 
# Thu, 15 Feb 2018 01:36:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:20:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:20:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 03:20:53 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 03:20:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 03:21:06 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 03:21:09 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 03:21:15 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 03:21:16 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 03:24:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:37ba6ae4dccd54eb9fe727eb50853dc2e0af6fb30dd0098145e52936c6061421`  
		Last Modified: Thu, 15 Feb 2018 01:44:36 GMT  
		Size: 26.9 MB (26876199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f972aec9f02c502cb9944fa42ae7e57d157fec3b5b93be7beabf9ab273ce3f4`  
		Last Modified: Thu, 15 Feb 2018 04:31:09 GMT  
		Size: 455.0 KB (454971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aa642f4016555bf0b885923c468a8f7dcc479e6f927969ac3b99239de6b071`  
		Last Modified: Thu, 15 Feb 2018 04:31:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2edd13e3537831dcc89a6f81a46616d7cd40b7ba5b08c8a82d00524d511ec97`  
		Last Modified: Thu, 15 Feb 2018 04:31:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4073fd4bc90d6b958281d1e8cc5576930a9efc1d4cd161559e76c1ea87a0fe`  
		Last Modified: Thu, 15 Feb 2018 04:31:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80624dd8724d847743fed3047e31b287bf89821a4a3695d3c65acc5b855df765`  
		Last Modified: Thu, 15 Feb 2018 04:31:30 GMT  
		Size: 65.9 MB (65869571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; s390x

```console
$ docker pull openjdk@sha256:891760d0b01084c9cd96d30ca77fc3b69e04f796a8dafaa71cbecb0d59cfa19d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (91022153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b39d4f25aedefebc1646f5b5782ef5ccbdaa469f8e73baa6f485df84f59dc8`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:36 GMT
ADD file:6e39aa367eb00ad206275197bdf8676731608a870742312cf57a752d02479101 in / 
# Thu, 15 Feb 2018 06:23:36 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:14:19 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 08:14:19 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:14:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:14:20 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:14:20 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:14:20 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 08:14:20 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 08:14:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:625a885678468f6c79d17e9ee5150774965f2f33499beeff626e8ff4aaff686c`  
		Last Modified: Thu, 15 Feb 2018 01:14:27 GMT  
		Size: 24.9 MB (24857193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f8f9d1067f5cf628ef3e6a09bdc15b8ed5f57916ccb2040dbc5448d5aba40a`  
		Last Modified: Thu, 15 Feb 2018 08:34:32 GMT  
		Size: 471.2 KB (471213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0505631f201455420717c0aaa1cef88bd180eaccf5c3a2dcce8ecd50ebd89e`  
		Last Modified: Thu, 15 Feb 2018 08:34:32 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a6d009be640327aba45761671e8141bc7746b4e303e930a31b07df7d3d48c2`  
		Last Modified: Thu, 15 Feb 2018 08:34:32 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3473225b1ef59ec9f4200096a7a0312a811b0b73206ab2d3a09e967966d1e1ad`  
		Last Modified: Thu, 15 Feb 2018 08:34:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660f8505a30a90b8a52758391fcb700feff938193f311a08e966587dac466226`  
		Last Modified: Thu, 15 Feb 2018 08:34:43 GMT  
		Size: 65.7 MB (65693160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
