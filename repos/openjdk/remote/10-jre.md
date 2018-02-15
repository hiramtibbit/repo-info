## `openjdk:10-jre`

```console
$ docker pull openjdk@sha256:df6d8b87bf0c6c56ad945667016861bb78d487a45950fe64c56b9b0645c759d6
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

### `openjdk:10-jre` - linux; amd64

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

### `openjdk:10-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:60085dc989ee0e3ce8fe190428d21df33bc215b21f912d6f5330f0bca4707962
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251961781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba942421145c8e6f928b84217cb9ff2428c14b58e10128c045b7341a97c18d1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 20:59:59 GMT
ADD file:af4cd7d5c7a1769f049a442dfd7a1b0fa6359ce5306569a5130c55609ec5175e in / 
# Tue, 12 Dec 2017 20:59:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:56:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:56:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 23:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 10:55:13 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 10:55:13 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 10:55:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 10:55:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 10:55:15 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 10:55:15 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 10:55:15 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 10:57:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:acff8687551d235a654afe80e0891cce1bd27c306fff4e41bb6b44b226a473e4`  
		Last Modified: Tue, 12 Dec 2017 21:10:06 GMT  
		Size: 46.9 MB (46876188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12a8cc19c8faf784e145d3a3c486d1b5a0892e4af7a81189d15f0eb18053a58`  
		Last Modified: Tue, 12 Dec 2017 23:08:24 GMT  
		Size: 7.8 MB (7808219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c884700496b57c386401815cba851f8f8f992a0295e68194990608ff2dea2`  
		Last Modified: Tue, 12 Dec 2017 23:08:23 GMT  
		Size: 8.7 MB (8718966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddbd75681696fa7b3b62dd3fd7842ac4be43019cf6f706d6042ed3b41d4adbd`  
		Last Modified: Wed, 13 Dec 2017 00:01:18 GMT  
		Size: 849.3 KB (849337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a089b5f30797bf2c6a9c2c3d5d23a7f648f29e51d01479f7cd5d354df275e9`  
		Last Modified: Fri, 19 Jan 2018 11:03:40 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3b2be4e16aad7844c08371923745f5e4323ce20232e961c759fe3c410fef40`  
		Last Modified: Fri, 19 Jan 2018 11:03:41 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54c7af448d000cef3b9be471b4640c29759c44437b562b632ab260927567f15`  
		Last Modified: Fri, 19 Jan 2018 11:03:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac07a675c3304bb822f9627ea91edf472050a29d5f387f8f70e00332baaebb78`  
		Last Modified: Fri, 19 Jan 2018 11:04:26 GMT  
		Size: 187.7 MB (187708471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre` - linux; arm variant v7

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

### `openjdk:10-jre` - linux; arm64 variant v8

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

### `openjdk:10-jre` - linux; 386

```console
$ docker pull openjdk@sha256:e1dfef2bc630f0ea6c24d09a54bd13f89ab82b676fe2b4337f57edf4859713fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282949153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981f07050c332b7c1688a2290251c02a46f2a68998ed9183a32531e8a504c02d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:24:56 GMT
ADD file:7e72f60be83facf3a36831facc1a26f572f3ae83fc49b2bc4c8de0b6e3321e84 in / 
# Tue, 12 Dec 2017 14:24:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:02:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:02:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 19:07:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 10:57:44 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 10:57:45 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 10:57:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 10:57:46 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 10:57:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 10:57:47 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 10:57:47 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:00:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c3cf1d3d69aef55e4aef2c1f0a9455d1dfbbb7ae17d15a0d963e8c55e6e61af4`  
		Last Modified: Tue, 12 Dec 2017 14:58:13 GMT  
		Size: 49.3 MB (49250980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767ba54897a1df6013ec3b06fd1546d3123979a02ac1f8f8eb0f079fd928126`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 8.6 MB (8608693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936341216c1a183dced55abc7be29ddca5b53a3fe1a3d85f00538784bd1a090d`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 9.3 MB (9251281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8218fb4c74ebf68ad66d2edba5ca7160ff1fba80f1227ba2660c7b88290f00b`  
		Last Modified: Tue, 12 Dec 2017 20:06:42 GMT  
		Size: 864.9 KB (864922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af73b82e617c5ca3521b7c3f88daff33f76c5ebee4e87f021f7c837f0d87f80f`  
		Last Modified: Fri, 19 Jan 2018 12:10:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3dd9246dcf8f626cc53ac3eb73563b11c321c663832cfc8c4fa300eb67e1fa0`  
		Last Modified: Fri, 19 Jan 2018 12:10:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2943224ba7dfec8e497656d2e1f28936b781c018b31f19f4e8cca8e86fdcbcf`  
		Last Modified: Fri, 19 Jan 2018 12:10:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6751924f14f22d2f2d8550c044c919ccc53b4d474bfb211dbb05256cb63411`  
		Last Modified: Fri, 19 Jan 2018 12:11:48 GMT  
		Size: 215.0 MB (214972674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre` - linux; ppc64le

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

### `openjdk:10-jre` - linux; s390x

```console
$ docker pull openjdk@sha256:6d5624c93a76c51e8b9a6a518c8024fa6a93d450b1fe483d4a1d5f1444c1fa4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230864171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4118b49ffc6baf365170d941474352a4edcd015817666dc996aedc010db9876`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:25 GMT
ADD file:044e96e222c822455babaf357ef8db0795de4149889cb81364204dca02b492ce in / 
# Thu, 15 Feb 2018 06:23:26 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:52:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 08:12:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:12:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 08:12:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:12:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:12:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:12:58 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:12:59 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 08:12:59 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 08:14:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2c81921a603ec79dabbd4e8cddf60c1d80b67ca921cfc969b21b2e2786d10aa8`  
		Last Modified: Thu, 15 Feb 2018 01:14:13 GMT  
		Size: 47.2 MB (47237963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91819694b4f3f99b68e351dce6412264a13c403c821302391b468b46a939bdea`  
		Last Modified: Thu, 15 Feb 2018 06:59:38 GMT  
		Size: 8.2 MB (8167378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b1294664ef6e52571bc28e685c8bc665f53866e0616d602895c953f3b7946a`  
		Last Modified: Thu, 15 Feb 2018 06:59:39 GMT  
		Size: 9.0 MB (9039908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f073417fef01cb8256487de8d9614f41d646dc1e1d1e5663bc0f8db4fdd5cf`  
		Last Modified: Thu, 15 Feb 2018 08:33:46 GMT  
		Size: 866.2 KB (866203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbb9dc1f9134c204a05a33b705582b1083424cf9c83acefc24f4698c6afa1e3`  
		Last Modified: Thu, 15 Feb 2018 08:33:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a47396a8635a31d41a2942e3c4ed4d20c798cb0463e8bcd87c096c169602d4`  
		Last Modified: Thu, 15 Feb 2018 08:33:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759682a04b6dd2027e9a8a09b71579cc8f3cc33b2e404a3d653ed0f6d16f4abd`  
		Last Modified: Thu, 15 Feb 2018 08:33:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e021a0b8912c80cd9baaa14a459f3ca2bb12862a74e4939be128ac6b621208de`  
		Last Modified: Thu, 15 Feb 2018 08:34:12 GMT  
		Size: 165.6 MB (165552129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
