## `openjdk:10-slim`

```console
$ docker pull openjdk@sha256:c5a06b4cf4e3295960e6c9aa290a843dd85f1c3d290c84a4b111e3bbf8fbaa09
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
$ docker pull openjdk@sha256:38a3eec12f28b362f647647b6858c9b32a1ea3c5e41da986049c1a327b06a0a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.5 MB (281496142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21194f22c358d6ae18693dfe5348d3d0d1ddb1ff90bf6c7938a98099172adb3`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:25 GMT
ADD file:f105fa3aa445df54e1e78b4ba607c2724f1dc586b1e060c482c798966d97c635 in / 
# Tue, 12 Dec 2017 01:43:25 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 20:24:13 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 18 Jan 2018 20:24:13 GMT
ENV LANG=C.UTF-8
# Thu, 18 Jan 2018 20:24:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 18 Jan 2018 20:24:15 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 18 Jan 2018 20:24:16 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Jan 2018 20:24:16 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 18 Jan 2018 20:24:16 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 18 Jan 2018 20:37:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 18 Jan 2018 20:39:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7dadf3208611439968d74844a1c976f4664c77dbe43c9e5b63a825002a5cd02f`  
		Last Modified: Tue, 12 Dec 2017 01:51:57 GMT  
		Size: 25.2 MB (25200134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349fcab9b82f6a693cf54bf9000507a4d7f9156532a75463f72361a998cf0067`  
		Last Modified: Tue, 12 Dec 2017 05:56:46 GMT  
		Size: 461.4 KB (461353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701eb131c0fa109136fbeb16463be04da3eb927af807bf1e8ef59dd7845cfa2a`  
		Last Modified: Thu, 18 Jan 2018 20:54:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed0d59c5136e482909a148e9f903702243e76483db269f5f8467c67b1d6bd7e`  
		Last Modified: Thu, 18 Jan 2018 20:54:54 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348cf3a40bd34f3548984028ade1190d13604c41bee3dbd03208f25e2dccd1f7`  
		Last Modified: Thu, 18 Jan 2018 20:54:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416c2c6b52f759937294ff6dcf12aa999f24f86dddcd43628cc7069158ef5662`  
		Last Modified: Thu, 18 Jan 2018 21:04:17 GMT  
		Size: 255.8 MB (255834050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:2ce594c123ac2325b583b44298262a3c0fced760f530d90f495329d303262338
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249285229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d5a4ab404208896cb58f8de771774759f876888b421f835dd2efffc03c2ad50`
-	Default Command: `["jshell"]`

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
# Fri, 19 Jan 2018 11:02:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 11:02:13 GMT
CMD ["jshell"]
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
	-	`sha256:828342262b8270ebb7f3ebb32be353c52d98c90f2976254928e0355441beb943`  
		Last Modified: Fri, 19 Jan 2018 11:08:31 GMT  
		Size: 225.2 MB (225177106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:a53b4db84d2c17189472634f4a2c4f9b9c44508d620355e8e66da65cfc1121d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247942262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbf2bd96f53b4c98118ff7c2ac8d2da22224e44806d9d353694f28a67fedb40`
-	Default Command: `["jshell"]`

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
# Fri, 19 Jan 2018 02:29:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 02:29:11 GMT
CMD ["jshell"]
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
	-	`sha256:2a77107e57831fb260a26fc4025817ec3dc96394718cceae42b7edc25153a451`  
		Last Modified: Fri, 19 Jan 2018 02:37:49 GMT  
		Size: 225.8 MB (225801968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:5e716d2ce1d2e204384f40e16558bacbe1370ab942aa6c4f7da8078eb8196edb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254249544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26065c2e521f9fae16623c3c7eac11d1a9ed12c379f7c879e82cec5decebd1a`
-	Default Command: `["jshell"]`

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
# Fri, 19 Jan 2018 11:24:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 11:24:28 GMT
CMD ["jshell"]
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
	-	`sha256:bb3710c9f0f42788828e8fc4737d9d9f00f890d165e38743f88390a8e1be17da`  
		Last Modified: Fri, 19 Jan 2018 11:38:12 GMT  
		Size: 230.8 MB (230792114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; 386

```console
$ docker pull openjdk@sha256:b4c9c7c4117bc89fdb1b66e1bb8b9d9389150f3d0ab3eb1b2ab1477813604299
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.2 MB (288162652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2debe0f1f38ebdcc646e5410167df0d53186a87ee48f39008db56437e61b102f`
-	Default Command: `["jshell"]`

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
# Fri, 19 Jan 2018 11:51:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 11:59:32 GMT
CMD ["jshell"]
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
	-	`sha256:010d72b02536b5965c4dc61907fd3e8be0ab9f8ebd7825a81fc525553ef6297d`  
		Last Modified: Fri, 19 Jan 2018 13:25:15 GMT  
		Size: 261.7 MB (261739907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:5f3c14e5d3a67a951ef4659a53b6aa03d7df15d5e5fdadc50395093dfaa282a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259423171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f2bb01929d4180e2dc7c26e2b00c938ed467bb2137a77a3637e08463d99236`
-	Default Command: `["jshell"]`

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
# Thu, 15 Feb 2018 03:38:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 03:38:41 GMT
CMD ["jshell"]
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
	-	`sha256:fe9ce0b58aae982c671e98e0506e415df9128319bf848dd4f533e4404d3b353b`  
		Last Modified: Thu, 15 Feb 2018 04:34:00 GMT  
		Size: 232.1 MB (232091409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:50048a57ad063e22fd23bd04a524e083a4d5b13f893ec6eb852034571861e860
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233944102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d12d145048a630a23f50cf05584b3ca491538c99d5cf7b9293d27dd3f903b7`
-	Default Command: `["jshell"]`

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
# Thu, 15 Feb 2018 08:17:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 08:17:20 GMT
CMD ["jshell"]
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
	-	`sha256:9cfe230a26e5d1b2e8897e8c6ad427c5bf66071d359964c85bd84b19c36f414b`  
		Last Modified: Thu, 15 Feb 2018 08:36:37 GMT  
		Size: 208.6 MB (208615109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
