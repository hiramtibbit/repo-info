## `openjdk:7-jdk-slim-jessie`

```console
$ docker pull openjdk@sha256:69d0f3e3064d060e153d8b63a7d109c02dc827e0ebbc0d6f638d8cfcb2b0fee3
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

### `openjdk:7-jdk-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:9d3da5ee7e60a5ea147494d68bd7f9e09c2f8523dfe935366f312d8e8df90341
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149368277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b8ca6278e4babda8d59babcae822cbcfd270f0db387e4cedeaadbeaac84744`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:15:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:15:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:15:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:15:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:29:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 04:03:46 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 04:03:46 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 04:05:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb9677eb5994c545214796f8413ba73dbf4626fbb577aad1372c07946932a67`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 463.7 KB (463726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c48310f4a16bd94a053595d920462410c502a4e31aa3921d14efb305625adbd`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5aab639445cc92fdb05b5bf2216d779f1e5f2518e30633e6e0605860b980e5`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd523785ac9b6c1e3185e5eee570bf5ecdd1f13b2e8e59d3cf3efba84367066d`  
		Last Modified: Tue, 10 Apr 2018 04:38:39 GMT  
		Size: 118.8 MB (118781771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:40d891dc6effd027e3e87b921a7aafa8f3cf443e0d023ea089c094790e519492
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121753669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551683ffb6508dfa1afb48034b9a3cc52a18efbc62ff74f7bfd70d8a1e0a7d88`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:55:03 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:55:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:58:14 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:58:15 GMT
ENV JAVA_VERSION=7u171
# Sat, 28 Apr 2018 12:58:15 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 28 Apr 2018 12:59:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64413c45c2b1761082392f40b8eb4f8c01e04ace06cf565ed33520cde914a2f3`  
		Last Modified: Sat, 28 Apr 2018 13:30:17 GMT  
		Size: 456.4 KB (456447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc8503ffe14feee207fc8f6387fe1698d57ea88c261e13e32014df47d242ab2`  
		Last Modified: Sat, 28 Apr 2018 13:30:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3238929bec356935380aebd06a38df60f54e0b955554074db0321e380626388`  
		Last Modified: Sat, 28 Apr 2018 13:30:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a174eab87084bfecc8b5486fe3d032432ed75d7135b65a95c641ad925f6d7a56`  
		Last Modified: Sat, 28 Apr 2018 13:32:57 GMT  
		Size: 92.9 MB (92861128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:9d26318c98d5ad0520a5706234b401bdd1fe6025c0406fd41aaee7f007d7aedc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127335890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a8f3be544cc2e9fb4989c1c9dfdb993bcd634409d6a824d6335bc33bc31fc3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:57:49 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:57:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:57:57 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 13:01:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 13:01:47 GMT
ENV JAVA_VERSION=7u171
# Sat, 28 Apr 2018 13:01:47 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 28 Apr 2018 13:03:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12f199f27c7efc052499b2e8ed53e8619167862acb1abe9a2f3baf9511f616f`  
		Last Modified: Sat, 28 Apr 2018 13:28:17 GMT  
		Size: 432.3 KB (432321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07998aba91636c8f624b6c3b61ed3a56f8b827314f55812e2183cf1f9e78e73`  
		Last Modified: Sat, 28 Apr 2018 13:28:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70beb70d7caf8b057153c16add67b8ed61b89307e4fe2cd6d1e48c086653401f`  
		Last Modified: Sat, 28 Apr 2018 13:28:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10864cb6db1a3239366226dc217c035d6423a7e089295f46d0b32818f95c44a`  
		Last Modified: Sat, 28 Apr 2018 13:30:50 GMT  
		Size: 100.6 MB (100605792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:cb60dd51a3c6e8395806eae5a18ff97b2cdc00286f627b31b2d9334ddc753d42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121202936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a91e895be1924fa259887057cd066965c15276025f3e52cb54ebc2fb58ec50fb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:52 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:54:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:54:58 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:58:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 04:00:17 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 04:00:36 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 04:06:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e7dce196c2b3ec395266d9a54e3e86ce2370094ab2afcd4105523de42387b5`  
		Last Modified: Tue, 10 Apr 2018 04:11:51 GMT  
		Size: 457.9 KB (457899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c48cff4a86f2532c3b64dbc60b9640b85ae94744e878f345887d5dd8e54030`  
		Last Modified: Tue, 10 Apr 2018 04:11:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81258555389907120383cb0bbd1face67741e609245bb613a037b0a4514a0cdb`  
		Last Modified: Tue, 10 Apr 2018 04:11:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77804c205ecbd4c1e7e179f071942b7ef171d1fda1768a867d310abd5b4201c`  
		Last Modified: Tue, 10 Apr 2018 04:20:57 GMT  
		Size: 93.3 MB (93256481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:0dd3504cf631974e0409783ce40a99252051e2252a3af58e4398147f9168533d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.5 MB (162461476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab48b69a589485b46d8879112b61a0374ee4fbc45135854f87de9b47a1e4616`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 03:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 03:02:09 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 03:02:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 03:02:11 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 03:05:44 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 03:05:44 GMT
ENV JAVA_VERSION=7u171
# Sat, 14 Apr 2018 03:05:44 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 14 Apr 2018 03:07:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef98ca129a2c182e1187c174d74f7dee613643e5a85b155a310300716edc3ee`  
		Last Modified: Sat, 14 Apr 2018 03:24:26 GMT  
		Size: 466.3 KB (466278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4dc097a2a326882838fe6d4b0d524dee7753ee120ab0025df78e829c0e6d76`  
		Last Modified: Sat, 14 Apr 2018 03:24:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734c9a273dab2fea4c822dbc81a35def8b35d5ae3201b450bb03e371833378ee`  
		Last Modified: Sat, 14 Apr 2018 03:24:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515b97ae367c627f68eed0b6f2a3ed24d9b5beaef1e2e61754e70338642083cc`  
		Last Modified: Sat, 14 Apr 2018 03:27:02 GMT  
		Size: 131.7 MB (131721624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:605af433857e21753de4fd27bb8c5729bd128accb04df512443e1b3b63155868
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125134521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91cd4ec0ec6fb1a67c110ecdc165412024784bcd9d3c3c99046043a0571340aa`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:38:39 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:38:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:38:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:41:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 09:41:47 GMT
ENV JAVA_VERSION=7u171
# Sat, 28 Apr 2018 09:41:48 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 28 Apr 2018 09:46:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904d9cae5b4e13977b3a3f5da2837f3842b44dd1ad001f63bae91c193e6384e7`  
		Last Modified: Sat, 28 Apr 2018 09:58:30 GMT  
		Size: 460.2 KB (460245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f46e6678f464aca7e6dd6754f68d28005443749f3cbf76be8b3e676a6947a1`  
		Last Modified: Sat, 28 Apr 2018 09:58:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5e5c5eac28805942423bb472b259179da4051103daa04229bfb914fbd74006`  
		Last Modified: Sat, 28 Apr 2018 09:58:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1c5972fe74314ffe39cea7c905875b135c60bb441a674ce3764ddb237e2b77`  
		Last Modified: Sat, 28 Apr 2018 09:59:34 GMT  
		Size: 95.4 MB (95356546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; s390x

```console
$ docker pull openjdk@sha256:7373af6d011ed70f4b566735b81591af9ce3cac4d6523561ff79e3369c5125e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126427589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa57873ae544cbf230f66a5061230cfc931a6e9b8a4d4b60f20d787a5fc0227f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:12 GMT
ADD file:5cd4239ce601f059eb8656abcae1c4827d7d75823a0e5e1a60bb2704635bde19 in / 
# Wed, 14 Mar 2018 05:22:12 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:44:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:44:19 GMT
ENV LANG=C.UTF-8
# Fri, 16 Mar 2018 05:44:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Mar 2018 05:44:21 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Mar 2018 05:45:14 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 18:15:54 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 18:15:55 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 18:16:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:73a91a9f561cad48038a81f8d9c37a90e39c3d0c806aaedb15f2f77092870ce4`  
		Last Modified: Wed, 14 Mar 2018 05:26:42 GMT  
		Size: 30.3 MB (30301960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5a370e5b79737d84b7be8a7213874e303146d0326051fd88addd473f6724d6`  
		Last Modified: Fri, 16 Mar 2018 05:46:53 GMT  
		Size: 473.2 KB (473183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f957e9ed01fd570a4cbc1c51faf84b1b3c5dc82d78ae1f1010d5e3711369b82`  
		Last Modified: Fri, 16 Mar 2018 05:46:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a42278e1243d4555fb09cbba36ebc1f8288edff05700405a7e1af08928f10e`  
		Last Modified: Fri, 16 Mar 2018 05:46:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3b4a4efcfcfa0d02a90bad090495b688821ff7e4c9771ec3bf2935dba289f2`  
		Last Modified: Tue, 10 Apr 2018 18:20:11 GMT  
		Size: 95.7 MB (95652065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
