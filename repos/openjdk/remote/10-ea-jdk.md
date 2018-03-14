## `openjdk:10-ea-jdk`

```console
$ docker pull openjdk@sha256:bc30a0ef37a07861390116db2f2a447e0303dad525f168f219c1476ee44b2f37
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

### `openjdk:10-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:dc0d69cfae063137ae78d475c3d4f6f9f3670cf9ecd453a853bbab4bf6417004
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.7 MB (399690788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b97e9e74356f2b5abd1756b9328f4ac9061c78fff854df83e8efcebcf8e4f852`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 01:54:31 GMT
ADD file:8fa9c86e024ea7f184db6b16d250b62a03f4a3a60aaaf2bd8cc033c817e9477e in / 
# Thu, 15 Feb 2018 01:54:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:35:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:36:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 09:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 09:32:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 09:32:28 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 09:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 09:32:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 09:32:29 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 09:32:30 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 09:32:30 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 09:33:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 09:45:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5364a50cbd6ed670b0a6d395e61526831db377e95d195e2557b2397af9773ed7`  
		Last Modified: Thu, 15 Feb 2018 02:23:04 GMT  
		Size: 47.9 MB (47869173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbcd6d6fb5ba1a29429cabae2b6c93f13bc6ed37d66980ef59f1c307368279`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 8.6 MB (8633437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5a073a53d8391a783dd8d6b676cd6eb5de13d3cc9bdc71bc7fbda27c5aff`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 9.1 MB (9067842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4518366658c8bd7a59f6273c316b46162e0979f5e42d4782326e0947aaf1900b`  
		Last Modified: Thu, 15 Feb 2018 04:28:47 GMT  
		Size: 49.2 MB (49154102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cd5cea19fcfe89883e59ca70528b9156e3d46cffdf6792daed07c12c359305`  
		Last Modified: Thu, 15 Feb 2018 12:19:42 GMT  
		Size: 893.3 KB (893339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cc680d3fbb76cefcdc22a99c07ae92761552426d16d0d0822d10d543c1d446`  
		Last Modified: Thu, 15 Feb 2018 12:19:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d43b4077044ffe3bb071ecce9f040233309ea2fe18a3dc2e7ce89246505db87`  
		Last Modified: Thu, 15 Feb 2018 12:19:39 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7afd99230a2f6a28fad5d03a07d43bde106fd79086bc7e83be8ec930a3c460`  
		Last Modified: Thu, 15 Feb 2018 12:19:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6f2c6ec9e4a89907fc40ac78dbb809ecb7fd629ad559cdd676b4f3c032b309`  
		Last Modified: Thu, 15 Feb 2018 12:20:28 GMT  
		Size: 284.1 MB (284072303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:bfe11f2736d916a53c7812bc829127e565d5c4b82e6908109087e5eafa0b4ba3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.0 MB (380047323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584098b667a167fc870f677755df9f0c7b218ae5df87217d595b519d0b0b50f9`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 20:58:33 GMT
ADD file:107983e3364b7c4bbc033bbf794c7e00825550acf2bbe9841c4b84c7c881eccd in / 
# Thu, 15 Feb 2018 20:58:33 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:39:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:40:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:36:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:36:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 16 Feb 2018 00:36:41 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:36:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:36:43 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:36:43 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:36:43 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 16 Feb 2018 00:36:44 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 16 Feb 2018 00:38:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:38:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d01625705202408c94c6dcf3ed17d16b9856be2b48b91c3e700101a2fa56684b`  
		Last Modified: Thu, 15 Feb 2018 21:08:15 GMT  
		Size: 46.1 MB (46118378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1103338ba972f97c075bc5e2ab9b8b03a059f6396c66bc9188aae3817f325660`  
		Last Modified: Thu, 15 Feb 2018 21:52:21 GMT  
		Size: 7.8 MB (7806559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2e6e4400952f6a646419a74b5b3482b874dcf5b7b69695588aaac20e11fa4`  
		Last Modified: Thu, 15 Feb 2018 21:52:20 GMT  
		Size: 8.8 MB (8809744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aa7eb9a0a27ecfb1e071729afa545af667d355a34e2a1ff23980928400eb55`  
		Last Modified: Thu, 15 Feb 2018 21:52:48 GMT  
		Size: 47.0 MB (46970289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b0d20e195916c3a15868fb8f4bfa2cd49f24e5b743b9f51d726995484a8a255`  
		Last Modified: Fri, 16 Feb 2018 00:49:15 GMT  
		Size: 886.6 KB (886560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a348dbfc632c17cb6d27d4eed436df714656b699f81be9644f38223c7737bce6`  
		Last Modified: Fri, 16 Feb 2018 00:49:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e004928ddba5519a578cbe616cdfa9873acfa124c9472bba10ad2cefb17fc0a`  
		Last Modified: Fri, 16 Feb 2018 00:49:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57358ba4d3573bc16609b3c92d2d38ad2c213aac98a6255618eae69b4c0fc609`  
		Last Modified: Fri, 16 Feb 2018 00:49:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a999637abab2f165353286bfea2788d80c77ab7b8d37e03cf925ded49e14bc25`  
		Last Modified: Fri, 16 Feb 2018 00:50:11 GMT  
		Size: 269.5 MB (269455203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:29bb83a4b402bbd81f4cfee9fe6b121589b8aa1c79364e0ee9a2aeb1034f950f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361738187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f8f37c958679abd1fa7a6f4c1c20163d5bc92db09a2bd8e2a203b19f909346`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 13:29:14 GMT
ADD file:2aea859c0a6778b5dda37d88a2950bd3b4a3f064ba80238942f0fd989f2f98a1 in / 
# Thu, 15 Feb 2018 13:29:15 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:11:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:11:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:54:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:54:02 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 14:54:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 14:54:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 14:54:04 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 14:54:04 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 14:54:05 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 14:54:05 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 14:55:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 14:55:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edb17d2272ee1f673a566ef1dad82b5718d41ab85bf825afb024696eb25a6c06`  
		Last Modified: Thu, 15 Feb 2018 13:39:11 GMT  
		Size: 44.0 MB (44041846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73ad90f7c852d25ebf530b4d6d7fb57b5f346d1eab00797d5ea8a95c1c39668`  
		Last Modified: Thu, 15 Feb 2018 14:23:04 GMT  
		Size: 7.5 MB (7530194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a531aa76f39f2767bd533b1565a152fa6ca6579139f7326a264f4cc8d9e8fa5`  
		Last Modified: Thu, 15 Feb 2018 14:23:04 GMT  
		Size: 8.5 MB (8526796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d25c78e3af744565a709949cf449c4a7cddf89eee25cfba16d7dc0b755e154e`  
		Last Modified: Thu, 15 Feb 2018 14:23:33 GMT  
		Size: 45.0 MB (44970011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43272cbc49a3902cb4afa3a1f2179e91eed6debaeae40f0595b8dbabafff4704`  
		Last Modified: Thu, 15 Feb 2018 15:18:49 GMT  
		Size: 869.2 KB (869169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df7936ae7a2bde58c670d45ccd2f8b4527e3e5609e99ee90d77c9b9547ecef`  
		Last Modified: Thu, 15 Feb 2018 15:18:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0a7bbc584d6f67641162fe1ca9e19e386fed25ca9a27e8ddb562f2350fff6c`  
		Last Modified: Thu, 15 Feb 2018 15:18:48 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781bafe26dd019db5a05b128b4d9e075e6d8417e9fdfd56c279a32677842dab`  
		Last Modified: Thu, 15 Feb 2018 15:18:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435c1a0b2989d3c54bcb6520a1f0d171e4bb1de9e00d2de3b4a1f11c1cea65e9`  
		Last Modified: Thu, 15 Feb 2018 15:19:40 GMT  
		Size: 255.8 MB (255799580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a3e1262673900f261bd00266698552d8f272b27197318a77e9d50d815291ea8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (385983517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4d042c3ea145b533be9ad3034a950f1315e6657e0c9b8f065bd9ff358f74a2`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 18:26:40 GMT
ADD file:5bb6b9865cc630a171f0b1113659e175ff9d2d99b497bdf10932b9121245e61d in / 
# Thu, 15 Feb 2018 18:26:41 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:35:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:35:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:37:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:51:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 21:51:29 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:51:32 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:51:33 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:51:34 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 21:51:34 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 21:59:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 21:59:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8dab87746e31cd73bc6c6c954d55ed543b9ebddc4d7d6c9d8961e0f0b0bb6696`  
		Last Modified: Thu, 15 Feb 2018 01:01:04 GMT  
		Size: 45.4 MB (45441133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53592274d741de4c663dc70a37a7bc2a681be612b5580a664d01a567c0c7901`  
		Last Modified: Thu, 15 Feb 2018 20:12:49 GMT  
		Size: 7.9 MB (7852943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e22fd85086b428b96a9700b3efe5d7074813bd2546ae981d697d9ddeceedee1`  
		Last Modified: Thu, 15 Feb 2018 20:12:48 GMT  
		Size: 8.8 MB (8801900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c454e2cd7dd07919afab7476126c8504b78f11c02a5d53f8fb7041ab96425`  
		Last Modified: Thu, 15 Feb 2018 20:13:34 GMT  
		Size: 47.4 MB (47442755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dd16eb58c75249ab9f11546ee366395c18da0f5f8e66447e1831a4db99a202`  
		Last Modified: Thu, 15 Feb 2018 22:57:23 GMT  
		Size: 878.7 KB (878697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717ee5e38eb691a652dfb66ea51107e83e9fd4cc4335eab309c581e3ed0aaa64`  
		Last Modified: Thu, 15 Feb 2018 22:57:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ad4e6b0177f5050ccb492222ffb12b96d3e60099904a33cc0b2ba879227462`  
		Last Modified: Thu, 15 Feb 2018 22:57:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83abe86725833a3fd7717a16647d2417ed60229d0a9b1b53705d7df1d16174d8`  
		Last Modified: Thu, 15 Feb 2018 22:57:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2878f8c38058314af15891d5c89868c48a35a7765c4d3174b4f0fe14e045da5d`  
		Last Modified: Thu, 15 Feb 2018 22:58:32 GMT  
		Size: 275.6 MB (275565499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:3fcfb0ea0fac031ae38d228e539bf7a0372e886f8c0e94d8459da0b59cf18087
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.3 MB (424318049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9c065c4b3ee88ca7c73cbac850c1f0acc2e42146fde342b9a103669ff77ceb`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 16:36:13 GMT
ADD file:cf035e5110d165962eb9d4449482cb8d6b0f7749539aa1e8fc6e6a66531d2106 in / 
# Thu, 15 Feb 2018 16:36:13 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 08:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 08:24:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 08:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 15:44:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 15:47:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 16 Feb 2018 15:47:42 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 15:47:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 15:47:45 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 15:47:45 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 15:47:45 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 16 Feb 2018 15:47:45 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 16 Feb 2018 15:50:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 16:09:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:313ea93a0d5246207e1ed7ff3833d7115bb13cbbbdfbb9fe6209ae0aca4de0da`  
		Last Modified: Thu, 15 Feb 2018 01:08:34 GMT  
		Size: 48.8 MB (48836165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d4fbe871849ec9eabbd42c66b6c1c7b1b7d725a5203103e36d3381d8ad08a3`  
		Last Modified: Fri, 16 Feb 2018 11:10:04 GMT  
		Size: 8.6 MB (8607351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14345a4d6f1e739fc3a5dfbf921d32d03cb87a160025d7181e792427a8523282`  
		Last Modified: Fri, 16 Feb 2018 11:10:03 GMT  
		Size: 9.3 MB (9344637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048be6ce56d70bb11eacd949548ea4f0d59e9c65a0a5fb11f787580f77094ff2`  
		Last Modified: Fri, 16 Feb 2018 11:10:48 GMT  
		Size: 50.9 MB (50864809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9568c5e46865a4b3a919c848ee2799db6aa465308877271335266caf7df32c8`  
		Last Modified: Fri, 16 Feb 2018 21:50:52 GMT  
		Size: 901.6 KB (901645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed9ad7d72bb8e64dad1e04fb039420bc20ff7e55bbddd6f2e52b3657eee5cd0`  
		Last Modified: Fri, 16 Feb 2018 21:50:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99027bd377689efb5aae8dd37cdbae46c3a3bbf1007d1d44e0cad4799bcaba0d`  
		Last Modified: Fri, 16 Feb 2018 21:50:51 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b99d786fc64a02c2e1ccb1ebe2b478511d05d70a5592431c87da2b7f9fb425`  
		Last Modified: Fri, 16 Feb 2018 21:50:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedceda7589eeaad188067a3bb35b1d62fbcadcb0d9945bca07ef241c2afeb24`  
		Last Modified: Fri, 16 Feb 2018 21:51:57 GMT  
		Size: 305.8 MB (305762851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jdk` - linux; ppc64le

```console
$ docker pull openjdk@sha256:718154bb393912ac8ddd2aa3e1038e2c5bd2f82462929af6753d2fffdcaaa0fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.1 MB (387108740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c34c5b2088c753074a3a8caa6bd041ffe8cbb0e6edf44c12e36a8f3a13018eb`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 01:35:38 GMT
ADD file:47880b96018a20d461394bfee9f42022392b5a715ce6caa05668c81d22bd4348 in / 
# Thu, 15 Feb 2018 01:35:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:26:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:33:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:33:25 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 11:33:27 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:33:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:33:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:33:41 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:33:43 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 11:33:52 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 11:47:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:48:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bb0115828b7c31e86fe8af9c575640d37b7fda139063b888abc6d9e3918927cb`  
		Last Modified: Thu, 15 Feb 2018 01:44:12 GMT  
		Size: 49.5 MB (49452997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b4ca0e4957fe813d9111b3f330183b278dd8533c9283aa11d1304a4305bd6e`  
		Last Modified: Thu, 15 Feb 2018 08:24:47 GMT  
		Size: 8.2 MB (8210641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3705860163816dcaecf267ec2e4ef10cf0abefeeb33cd4678d0c86d79ac89ed4`  
		Last Modified: Thu, 15 Feb 2018 08:24:50 GMT  
		Size: 9.3 MB (9305059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ded6b910a7220eb72b1522521396a04bfcbbadec60d0c5248cd8029cb13de1b`  
		Last Modified: Thu, 15 Feb 2018 08:25:24 GMT  
		Size: 52.1 MB (52050046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f52bc8b8c0156ac2a89bbb90fd5b3b361d8c56aca7a0d1a51a70b671da505bc`  
		Last Modified: Thu, 15 Feb 2018 13:08:33 GMT  
		Size: 888.6 KB (888620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5370a49f5e88f3ef52a17736c5be825a0fcab939b271f4469b4e0d57351851b3`  
		Last Modified: Thu, 15 Feb 2018 13:08:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c9f243fc8fc1a460ed531b1a41e619c4942adbe0362de5be694ba5f86de29f`  
		Last Modified: Thu, 15 Feb 2018 13:08:32 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812c5dcdd590c863d00ad53008fb01cb4c67ad0dd039d325b88a98b1412901c5`  
		Last Modified: Thu, 15 Feb 2018 13:08:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14374d0c570b93a5eb94c6ec30c9361824a639a23210b379645fd4adafcfee9`  
		Last Modified: Thu, 15 Feb 2018 13:10:19 GMT  
		Size: 267.2 MB (267200784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jdk` - linux; s390x

```console
$ docker pull openjdk@sha256:500d5710f7446c793a85332043afbdc8b111712ef54477eeb4e7307d5d57e26a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.5 MB (373462088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bff717463c96b44dcfdcb2f9083ae2040a1d6b17fb034dd96954cc0d2888615`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:56 GMT
ADD file:5a60fa1a91bb2b727d8bfee18b5c3fe6523121a4b58861a0ba668058347acd7d in / 
# Wed, 14 Mar 2018 05:22:56 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:52:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:53:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:36:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 06:36:21 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:36:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:36:22 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:36:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:36:22 GMT
ENV JAVA_VERSION=10-ea+32
# Wed, 14 Mar 2018 06:36:23 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Wed, 14 Mar 2018 06:37:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 06:37:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:86f40742baf992f423224f64973e576104b2523ae049a44d7574dda9869d0735`  
		Last Modified: Wed, 14 Mar 2018 05:27:34 GMT  
		Size: 47.2 MB (47214668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a246e96e1e744b60e0cc0af03037b01bf7646f969863ef6a65410d8296981b2`  
		Last Modified: Wed, 14 Mar 2018 05:59:43 GMT  
		Size: 8.2 MB (8166746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a4f67084db30235359962de1d5608135e8a73048a898619ce995fd58947477`  
		Last Modified: Wed, 14 Mar 2018 05:59:42 GMT  
		Size: 9.1 MB (9075240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21b2c6a8c15ce6f8cbc645f7f3179dbe1808043ef6e238cd3a419aa1f2d2d39`  
		Last Modified: Wed, 14 Mar 2018 06:00:00 GMT  
		Size: 49.1 MB (49125842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7213c180353964c9c5acf9bf7628bdbbfa14daeec9d274654f138b20fa05a5`  
		Last Modified: Wed, 14 Mar 2018 06:49:49 GMT  
		Size: 903.9 KB (903935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cfeba31c49aaf849d391e41da0a8ef77e4fcd6a9b5b0a4a89cfc3894e12a34`  
		Last Modified: Wed, 14 Mar 2018 06:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0455efd435820b88e727c9db2330d0e26b8ea698b31fccc21bb5d0475f3ffcb`  
		Last Modified: Wed, 14 Mar 2018 06:49:48 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e99a8aa401d27ecfddb49c83e9970ea82975a5b7fae6f7fca65e73b9ead7da3`  
		Last Modified: Wed, 14 Mar 2018 06:49:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eccee555c81fef19cb611038f35a05a17b92920c80e2085c11f00292de0398c`  
		Last Modified: Wed, 14 Mar 2018 06:50:19 GMT  
		Size: 259.0 MB (258975061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
