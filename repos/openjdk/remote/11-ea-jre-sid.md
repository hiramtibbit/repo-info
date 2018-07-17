## `openjdk:11-ea-jre-sid`

```console
$ docker pull openjdk@sha256:a6b73f4bcd59eb30b605b0c44130779e86d160f5777c27ca116a9614ffc56843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:11-ea-jre-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:fced3591ca8bd7e0b671fa4c308a53b6bd8862d87f698ccaa1080114b24e6102
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245780214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aaae06e00561071f42cff70d3c878162034ce4488283af8918253289ea808f0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:24:39 GMT
ADD file:f04b64a73c29541d70cda855be7033dbd8e0b173ab11cd93458f3400fd270d85 in / 
# Tue, 17 Jul 2018 00:24:40 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:09:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:09:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:10:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:10:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:10:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:10:58 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:10:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:10:58 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 06:10:58 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 06:11:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e367ac4072dc48836ab52faeb39e943b075e21aa02c1a88f838651b9b384de50`  
		Last Modified: Tue, 17 Jul 2018 00:39:42 GMT  
		Size: 48.7 MB (48725588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a57779b5dbaefdeb5306372ffa77aee257957dd74042f9ea2572052c5cc9201`  
		Last Modified: Tue, 17 Jul 2018 03:50:25 GMT  
		Size: 7.0 MB (7035962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c28c5ff25d086ba826711dd56a6652542b6dd75f3c5a4bb6daa1c8977bf7e`  
		Last Modified: Tue, 17 Jul 2018 03:50:27 GMT  
		Size: 9.2 MB (9245784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9958359a5d4a9f92272abb0c2d50cf7dc8b5675ce88e82891d92c9115b13a474`  
		Last Modified: Tue, 17 Jul 2018 06:36:33 GMT  
		Size: 847.0 KB (847006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0448522bedd30888da1a520e7325d88a47e0702c1df4dc74aded42283506df`  
		Last Modified: Tue, 17 Jul 2018 06:36:32 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c37e2c6a4d97d3ef881e59587132dff38d85bae29ea0fd3d1dd316a75d4b2a`  
		Last Modified: Tue, 17 Jul 2018 06:36:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3aad07dd6e0bf510d4c94943781ffb266d65a9711e0bfe26bd632f454ec7e28`  
		Last Modified: Tue, 17 Jul 2018 06:37:27 GMT  
		Size: 179.9 MB (179925507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:9cfd44d32b72e4098879b5070306755dc97c313734224852ec959f0a3274ee74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219036181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344e0f57fd3c807aebc8c7e2347ce2f04a3f7e085597f7cd06eaaaf5e8f4dc57`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:03:18 GMT
ADD file:016411fa531d65b2271f50aee3e350fc858e61add73997af4a83556197c9abd5 in / 
# Tue, 17 Jul 2018 12:03:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:44:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:44:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 16:11:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:11:24 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 16:11:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 16:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 16:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 16:11:34 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 16:11:35 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 16:12:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a4e0ee0fbc8087144c4cdef3f0495ffebba2e3ee7dfa11ff0d5a4b165ff41f7c`  
		Last Modified: Tue, 17 Jul 2018 12:15:37 GMT  
		Size: 44.5 MB (44512160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e3242d163ccebb1e24dafc2e4deb3b8913ee65303f56b15736a14018c6fcf6`  
		Last Modified: Tue, 17 Jul 2018 14:08:01 GMT  
		Size: 6.4 MB (6418813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d90194ec002d2dcbfc99ba120dcf8f01ef9037e35164e5ceb9c8ceac378ec1c`  
		Last Modified: Tue, 17 Jul 2018 14:08:01 GMT  
		Size: 8.7 MB (8703423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c9089005de6fd50a3d8cad35dc43b757155e17fa10676e63c2528f513646ff`  
		Last Modified: Tue, 17 Jul 2018 16:32:26 GMT  
		Size: 823.3 KB (823281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7551abecfba34ecb6d5b52f240f03d79d286e26b9aed276c0e21beee6197359e`  
		Last Modified: Tue, 17 Jul 2018 16:32:26 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22132281f5baf9c78e724865205347e37288f463bef7e37f53dac4584617c720`  
		Last Modified: Tue, 17 Jul 2018 16:32:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f8722750535677d1a977228456dec77385c85da845f36135df92e527483831`  
		Last Modified: Tue, 17 Jul 2018 16:33:07 GMT  
		Size: 158.6 MB (158578137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:149f79db95870740a5fa6e27c49b4d3e88a53ec90eb89a9e901df63aff06a54b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228885642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc8380a2f8558f0913faea9b24e55691441f7daffa4f0b7fab0a8daf9503b30`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:43:33 GMT
ADD file:1145a1860bba8a4d148966c227a31ee5ee05c524c8af7a2c0963bb5671b11ad7 in / 
# Tue, 17 Jul 2018 08:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:40:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 19:56:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:56:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:56:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 19:56:40 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 19:56:41 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 19:56:43 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 19:56:44 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 20:02:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:719cf01a9d639f6fad37c3abd73d6746ec6483c438952c7daf2503b9dccde689`  
		Last Modified: Tue, 17 Jul 2018 08:53:02 GMT  
		Size: 46.0 MB (45967380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075accf774284e7b667dd405cd13b8eeb55056113680340e3245fbd09d5d03fa`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 6.6 MB (6647895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6bf6cdca1c47f36a5665bfdb0fb046730a62f0d3c944aecf285c441be0ea93`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 9.0 MB (8981452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c840a5bdd30532a63df60e5079cbbe12a8fce1db657e5b27202622471ed9c7`  
		Last Modified: Tue, 17 Jul 2018 20:40:10 GMT  
		Size: 831.8 KB (831820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84f1479c592353313a7a93277681daa575a4af657abf7514207ccfbf82e462e`  
		Last Modified: Tue, 17 Jul 2018 20:40:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8029dd7284fa85df3e47a0e9b8dfcde08c81578bdf2e0421735eb084d56944ae`  
		Last Modified: Tue, 17 Jul 2018 20:40:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d204928457b54dfc86c4569e462aff41e5d2f951e3041a6db99a873ca80573`  
		Last Modified: Tue, 17 Jul 2018 20:41:05 GMT  
		Size: 166.5 MB (166456728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; 386

```console
$ docker pull openjdk@sha256:58b5d9a8adc2e88b8af563fecaacd91a53aa8eef1afb94f655d621c509462c0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (256033112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4980b62442d8f31e4f4e9a43462ce8634185b3a56c67a0865525c09df4ba18a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:46:37 GMT
ADD file:9a56907f76deea3f2b22068eae8c6cc31bed7f9c7b3de38c6e99c54e77d0822e in / 
# Tue, 17 Jul 2018 10:46:41 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:30:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:31:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:10:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:10:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:10:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:10:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:10:50 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 18:10:50 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 18:10:50 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 18:12:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c4a6da94b3de8d8ecc301930050dce3da90b886c8443b00166765e0873f7abf6`  
		Last Modified: Tue, 17 Jul 2018 11:03:38 GMT  
		Size: 49.5 MB (49529462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804bb32a028b43835bbfcaa803b7de3d0dac5cb91ca5192d83ff39548d87dc5`  
		Last Modified: Tue, 17 Jul 2018 15:11:50 GMT  
		Size: 7.2 MB (7186448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6b791854fa42fd340bfb473b8a46084be17fd760aec34df82fd303f96a9ca5`  
		Last Modified: Tue, 17 Jul 2018 15:11:52 GMT  
		Size: 9.5 MB (9527986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c7f6b57a91274b87e9359f6087b58be7100abe66a9ba7c584dafc42f56a9a3`  
		Last Modified: Tue, 17 Jul 2018 18:31:02 GMT  
		Size: 854.3 KB (854311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3902ef34602a870d6143f6aea2221db68a6c781338755c2559f085728962d5d`  
		Last Modified: Tue, 17 Jul 2018 18:31:02 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9504ea1c3fe592856da4c89403b65064040b103a2d264ef6cec53a9b5fc1d2`  
		Last Modified: Tue, 17 Jul 2018 18:31:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db15dde467c1d4a58ec33542b89eb36ae04dcbbc5d558a45ccc0f89b7636d5bc`  
		Last Modified: Tue, 17 Jul 2018 18:32:13 GMT  
		Size: 188.9 MB (188934539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:c506a2e65fd2650645987fb4160d1e05c9d86819b43095745c25e2fc05ce5854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236311492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab02f0f7138a46ea30da08d70599f4404bd658142dd67a246dc067fb682887c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:22 GMT
ADD file:94ebec540eca8b99572e5842e1f1f2fe8cf7a62fb1366b2459edb37903e41200 in / 
# Tue, 17 Jul 2018 08:18:31 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:56:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 16:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:21:38 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 16:21:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 16:21:52 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 16:21:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 16:21:54 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 16:21:58 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 16:32:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2d7cf41bf039d34ad7c6efe6cb9dc3370c5f55c39226a13fd409d52eb991f335`  
		Last Modified: Tue, 17 Jul 2018 08:23:43 GMT  
		Size: 50.2 MB (50185044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17647cf140d6db3c9f1f92652456b5a6bb54c33ca54b10d4dfb98f2b9f8e5c4`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 6.9 MB (6876422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd26110f5fee83517301d699e51fa0068429ef004ebc1a0f923f23ededc8621`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 9.5 MB (9494855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fdca2392dba04cb5aca6b662a42e69264bc5866b553b75b013e019a70b8bcd`  
		Last Modified: Tue, 17 Jul 2018 17:27:19 GMT  
		Size: 841.6 KB (841558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d24a83bd75f6287213ae1609820714c57b8749ccdd46b8d244a7ad258cbfea9`  
		Last Modified: Tue, 17 Jul 2018 17:27:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf6c75c5753af17b26cdc2c3554b2506ea9bf9c78f92ea7357cf76341736b26`  
		Last Modified: Tue, 17 Jul 2018 17:27:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebf694cd2ffae789dce2223befdb54b07e0ad571622d9dae0927301e70fe7c6`  
		Last Modified: Tue, 17 Jul 2018 17:27:56 GMT  
		Size: 168.9 MB (168913244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:860939a017b1dfa677677e7b0fea2595636dabbe5e71afaaa08b5f82eca2e34a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.4 MB (206354717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c8387cbf15bdbe8f05a4ba22cfe5f6f42bbc4f1c4cd32fd5dd3ff9397a129c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:42:12 GMT
ADD file:cc7dc0768817446033aeb138e188af680cfedc409e223f9784d76e615feb4c11 in / 
# Tue, 17 Jul 2018 11:42:15 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:19:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:19:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:14:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:14:01 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 14:14:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 14:14:02 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 14:14:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 14:14:02 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 14:14:03 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 14:14:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7ce421c266a7f090ea9857f4226f9f791cb56ece2becee63129b019e9786527d`  
		Last Modified: Tue, 17 Jul 2018 11:45:34 GMT  
		Size: 47.7 MB (47674254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07abb9f11de8a7cf3609cab93301ed88a0a66c6f9946a1b865a2738460537a15`  
		Last Modified: Tue, 17 Jul 2018 13:29:20 GMT  
		Size: 6.8 MB (6764457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958d9bc09e39d650d733b01f7aa4174021f01ef9e69f65e9ee399c5f4a6903f`  
		Last Modified: Tue, 17 Jul 2018 13:29:20 GMT  
		Size: 9.2 MB (9183018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3d7bcfef978c9842098735a554b09d072f09f794304956349268091b22914`  
		Last Modified: Tue, 17 Jul 2018 14:21:59 GMT  
		Size: 857.6 KB (857612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b104098d4ef083f9643039cc962c73e8510ba62946e1067bba1f35dbef2914`  
		Last Modified: Tue, 17 Jul 2018 14:21:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220c30dc1f5f0eaad606ba67af9121d12c842ddb9778e474077ab8fb31852880`  
		Last Modified: Tue, 17 Jul 2018 14:21:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba42be3ba97764e48c6051ce60f02256875e58f1d36039b17db76111ad96e63d`  
		Last Modified: Tue, 17 Jul 2018 14:22:20 GMT  
		Size: 141.9 MB (141875006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
