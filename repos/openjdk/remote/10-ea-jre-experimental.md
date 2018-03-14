## `openjdk:10-ea-jre-experimental`

```console
$ docker pull openjdk@sha256:c8683ef6f3cb0c5e08a6d48e8b7fe3bd2ceb721634110e55ec3edd5ca9e49934
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

### `openjdk:10-ea-jre-experimental` - linux; amd64

```console
$ docker pull openjdk@sha256:1868f91edc7196e709fa6bff19447049bf4a011edacae18def8f02965ee1b91c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265805979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c366bab641d921c83d9c973c9ff67e50a674568b53d9728bd684925f28d163`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:54:31 GMT
ADD file:8fa9c86e024ea7f184db6b16d250b62a03f4a3a60aaaf2bd8cc033c817e9477e in / 
# Thu, 15 Feb 2018 01:54:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:35:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:36:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:16:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 09:16:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 09:16:32 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 09:16:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 09:16:34 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 09:16:45 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 09:16:46 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 09:16:46 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 09:17:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:0cff3b98ce90e0703cbd0e3e96967cd658684237ecc46350843fceb417782d9e`  
		Last Modified: Thu, 15 Feb 2018 11:45:00 GMT  
		Size: 855.5 KB (855520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e481a9ba698993256467e36bb29d0141d98029566c58bc28bd994a88c2826cf1`  
		Last Modified: Thu, 15 Feb 2018 11:44:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93434cb2d7a677a1e72d7b979118d9c0e9b1e9e8ea512f42abb7df62cfee4e4`  
		Last Modified: Thu, 15 Feb 2018 11:44:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc47224111a823d79a36176bd84a3d636bffc38942e3a44f5247143629b09de8`  
		Last Modified: Thu, 15 Feb 2018 11:44:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646c0d0b26bafdc12ebff7fab46b63cc78042a24ddf6590f22e1c016be782b92`  
		Last Modified: Thu, 15 Feb 2018 11:45:46 GMT  
		Size: 199.4 MB (199379415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:e2ea8712b31d7d04180d150896ae27b0ed27863fd8764047f3649c15b6539c59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259641127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103ccf76c2ea24df751f2fcc299a615e77bb10a39ef1ccf091c16360477be15e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:58:33 GMT
ADD file:107983e3364b7c4bbc033bbf794c7e00825550acf2bbe9841c4b84c7c881eccd in / 
# Thu, 15 Feb 2018 20:58:33 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:39:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:40:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 00:34:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:34:39 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 16 Feb 2018 00:34:39 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:34:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:34:41 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:34:41 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:34:41 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 16 Feb 2018 00:34:42 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 16 Feb 2018 00:36:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:c6c6d44423a4fcc02dccfe889095f98a90c689a0035083690e2665d976ba8284`  
		Last Modified: Fri, 16 Feb 2018 00:47:18 GMT  
		Size: 848.7 KB (848717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e6d9e43956265b7dfcb5b3a2dc91048292cfc462443c9cc6015cae32a40b3b`  
		Last Modified: Fri, 16 Feb 2018 00:47:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb840b84dae82342094a9853893da167c762547b48a5adda138a37935db5e207`  
		Last Modified: Fri, 16 Feb 2018 00:47:17 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a1fe4bbd6cd24b45cfc769cb09633a928b4ff82d075f504a0764e765f212e8`  
		Last Modified: Fri, 16 Feb 2018 00:47:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306ce0aa5ff057e05a538d3a00aac7508e83c9d98e85bd9a900e0019e71737ae`  
		Last Modified: Fri, 16 Feb 2018 00:48:07 GMT  
		Size: 196.1 MB (196057139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:a4f63c6a10de39880d995028e8a678a1bee770b1f222e0f97d97447f6988c2ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (240026876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71bf56a4cbee0fcfc55e1454ade3f072f9bc3da50e4fd66c0b0ff2247b3e87d8`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:29:14 GMT
ADD file:2aea859c0a6778b5dda37d88a2950bd3b4a3f064ba80238942f0fd989f2f98a1 in / 
# Thu, 15 Feb 2018 13:29:15 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:11:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:11:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:51:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:51:14 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 14:51:14 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 14:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 14:51:16 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 14:51:16 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 14:51:16 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 14:51:17 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 14:52:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:9faeb3f9759167a346f9d0484dbad3851e9321c3907f98e1fdb852ef4769206c`  
		Last Modified: Thu, 15 Feb 2018 15:15:47 GMT  
		Size: 832.5 KB (832479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b86ad9f95898eaa0fc9d0001091a69e67a6509b096293ed3b8453e28bf2e03`  
		Last Modified: Thu, 15 Feb 2018 15:15:46 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59692c546f0699fadc20f7ceed55ad3c33067cb0b2e7b15e072bd3d6eda04c9d`  
		Last Modified: Thu, 15 Feb 2018 15:15:46 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f543a462e4fcb2f1dc1f1937ed17c64383c3de30cbcfb320c452c99cc830e6`  
		Last Modified: Thu, 15 Feb 2018 15:15:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76b9e2f085b0ebce46bfaef0094c76954b63cf3dc4f1aacaa5b889281e42bf3`  
		Last Modified: Thu, 15 Feb 2018 15:16:30 GMT  
		Size: 179.1 MB (179094970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b57049ec3a6fa6471ab2d22429e228e5bb84c1d1857fa0de5516e708f44df58a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.9 MB (260864490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813b85558fa113ee301d1fb890fe7180b97390c3dc6d23df8a37f1a9c2de78e6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:26:40 GMT
ADD file:5bb6b9865cc630a171f0b1113659e175ff9d2d99b497bdf10932b9121245e61d in / 
# Thu, 15 Feb 2018 18:26:41 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:35:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:35:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:43:20 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 21:43:21 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:43:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:43:24 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:43:25 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:43:25 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 21:43:26 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 21:49:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:f1a98ad1d32c1588b87e9e8e9c61925640d01c5514ce2ca521970a9482f8a3c6`  
		Last Modified: Thu, 15 Feb 2018 22:53:18 GMT  
		Size: 841.9 KB (841899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d08fd52f92eb63da4705050150d3c1a0b638824d5eb70bf1a015f247e820c`  
		Last Modified: Thu, 15 Feb 2018 22:53:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c4bbeae7e722ed9863c74b5d89883e166269952591f94bbeb01b61e70b31f0`  
		Last Modified: Thu, 15 Feb 2018 22:53:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418b6a80bf93d9fd20ce0860f765862311b363ad7d6eee00bd4a12b7026c9ae8`  
		Last Modified: Thu, 15 Feb 2018 22:53:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f700ef2a99368152f2a38b9d88113a5b5057d9429c31fd9b8cfef791c6c5b303`  
		Last Modified: Thu, 15 Feb 2018 22:54:23 GMT  
		Size: 197.9 MB (197926026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; 386

```console
$ docker pull openjdk@sha256:2129554850311c6d3f4f2b0fc69f0a7ada8d9f207243a88c95ca3f4d95c19efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.4 MB (291359754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee175b561b0c0b730687809cde35e66953175e2866956eb9f3dee9be4ea72bda`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 16:36:13 GMT
ADD file:cf035e5110d165962eb9d4449482cb8d6b0f7749539aa1e8fc6e6a66531d2106 in / 
# Thu, 15 Feb 2018 16:36:13 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 08:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 08:24:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 14:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 14:43:30 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 16 Feb 2018 14:43:30 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 14:43:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 14:43:32 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 14:43:32 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 14:43:32 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 16 Feb 2018 14:43:33 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 16 Feb 2018 14:45:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:5168c2f8c3b89017971cdfdf67659f9a98883e6b79f3c30f9c93230fee7bec38`  
		Last Modified: Fri, 16 Feb 2018 18:49:50 GMT  
		Size: 864.3 KB (864258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee6251b55bfef7e4e945897c2d924d7cccfc210b0169291fa8759754986ff58`  
		Last Modified: Fri, 16 Feb 2018 18:49:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6dad7c0c366bd2d7e07a0904c543dfa7caade71e430d05b08767d04febaac6`  
		Last Modified: Fri, 16 Feb 2018 18:49:48 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6e2307ae8ae130e53f2fd348e0497a4eff2fcc5ff62af05c5cf47cb8ba8c76`  
		Last Modified: Fri, 16 Feb 2018 18:49:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cb078749bbb5769102e7ec570c894a0bbfd320a061210536eeadc919644db0`  
		Last Modified: Fri, 16 Feb 2018 18:51:02 GMT  
		Size: 223.7 MB (223706751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; ppc64le

```console
$ docker pull openjdk@sha256:0878f43a19b6d596659dd64e45d5ea351f2a7df8e14144e6c04ef3be114a8235
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256801601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a794b477db1e1563ff848f7789602b269b98c17839b50385a4e355349a639f2`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:35:38 GMT
ADD file:47880b96018a20d461394bfee9f42022392b5a715ce6caa05668c81d22bd4348 in / 
# Thu, 15 Feb 2018 01:35:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:26:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:21:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:24 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 11:21:27 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:21:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:21:40 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:21:42 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 11:21:44 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 11:32:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:3efbe9fa22a32da01ad6c8d5ce3e7d44f3807116c4e63c46878ddeaa6fa56a55`  
		Last Modified: Thu, 15 Feb 2018 13:04:19 GMT  
		Size: 851.5 KB (851513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3110c60f3cecd582b0bc81e87c2e9d28c1d0fa6a65f41a2e993dbdef12ce85ae`  
		Last Modified: Thu, 15 Feb 2018 13:04:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a61d0b4e3332f6bf79aa1a8ef88eaed7edc9964e3c18656a51bc20513161df0`  
		Last Modified: Thu, 15 Feb 2018 13:04:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1509753dab3f50cb4290a4890b046d1930cd50cb4a68a56bfb363deceba9c8ac`  
		Last Modified: Thu, 15 Feb 2018 13:04:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10a10b50c0c69ede92a9fe780751ec821a992159c0e905a68d823fc64907027`  
		Last Modified: Thu, 15 Feb 2018 13:05:33 GMT  
		Size: 189.0 MB (188980797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; s390x

```console
$ docker pull openjdk@sha256:25489df4f3766556774c5d6b3c2e16f7c322d917d5bf337e29df6cab9f72f5dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245945237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f44b141737f0bf3d71d07cad4d1e2a6791f6692a1c9208919eadb6454bf39d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:56 GMT
ADD file:5a60fa1a91bb2b727d8bfee18b5c3fe6523121a4b58861a0ba668058347acd7d in / 
# Wed, 14 Mar 2018 05:22:56 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:52:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 06:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:33:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 06:33:43 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:33:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:33:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:33:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:33:44 GMT
ENV JAVA_VERSION=10-ea+32
# Wed, 14 Mar 2018 06:33:44 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Wed, 14 Mar 2018 06:35:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:ce7c63638ce23161dc3e0ca6fe205c72a0ad230b223b4e8c92a681f0e9cc11c6`  
		Last Modified: Wed, 14 Mar 2018 06:48:22 GMT  
		Size: 865.8 KB (865785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e4f5af4b35c9e9fb3e2a7fdb5f8a32fb6b69b98784fb031ac1a2a326665f45`  
		Last Modified: Wed, 14 Mar 2018 06:48:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e0127aece783d237ea525fee1e3c75b187911f22dd2ad0306e10dfa741f97f`  
		Last Modified: Wed, 14 Mar 2018 06:48:21 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21433a2313afc2743bf0b833faee9bb1a9ce8abb6605033ec60cfb290b83f862`  
		Last Modified: Wed, 14 Mar 2018 06:48:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f93d7eee884a612144c5214faf1d0782c563865c29499e56d72237d8a43716`  
		Last Modified: Wed, 14 Mar 2018 06:48:47 GMT  
		Size: 180.6 MB (180622208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
