## `openjdk:11-ea-21-jre-sid`

```console
$ docker pull openjdk@sha256:587e2f7d1752b7565eb24b103ce1d64d1fcdbd25a166e1354eb1189f9c1d66b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `openjdk:11-ea-21-jre-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:687a7f6f9a57997156c257d23c8fada9df835e6bd4fbb90d39394790fc9baa3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245844899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7343d08893f83f1a0ef3092b537132cf3018542e19153309834f169d0369f1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:26 GMT
ADD file:10ef22e92828bf2e3e64f0617e248ec4f9885da94b826c950bdc8416d67d96cd in / 
# Tue, 26 Jun 2018 21:23:26 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:20:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:20:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:20:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:20:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:20:25 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 03:57:34 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 00:27:44 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 00:28:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:26254fbb7f1ecf87788ab9644ed2990fda0f5efe4ce585efa529013e3e61b8f3`  
		Last Modified: Tue, 26 Jun 2018 21:34:18 GMT  
		Size: 48.6 MB (48648929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb95abe62cf617072cd93a562dd3c073f8fabba929bb1aa8f0573971554b41a5`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 7.0 MB (7033853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbb6315c68fc7776b3dd34584b03f3a00f3e9fcd9058dbed42208d2843b593`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 9.2 MB (9245186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f563a46814efa01419e07fc08d159913791a167f783f9cff6788d256ccd7e7ad`  
		Last Modified: Tue, 26 Jun 2018 23:45:08 GMT  
		Size: 846.3 KB (846308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b360bf052f04eddb1d4e4deaaf2a68a7fcd2c47f255c14e620f4c92cb0e891`  
		Last Modified: Tue, 26 Jun 2018 23:45:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917022829fa1b52343fdf5d3d484fc7f1ed4a6872a433b4fc5090499e491ebb5`  
		Last Modified: Tue, 03 Jul 2018 01:05:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1718413c6c2c8a0886f957029af04c7921fe94f14ff5fd178b8252ffd14ea`  
		Last Modified: Tue, 10 Jul 2018 00:39:48 GMT  
		Size: 180.1 MB (180070257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-21-jre-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:939e1d0535f7f33bc4a689727183faed02fb447353d52ccdf3044f62ea54bea1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.4 MB (219421128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb2c032d2b83b6535db2e75d886dba601dc062d42b73da62d1a6f180a087046`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:01:58 GMT
ADD file:fb368eeca8896eaf5ae53a4a5f51bb2ffcb3de2afc5288178fc15e87327d624f in / 
# Wed, 27 Jun 2018 12:02:01 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:45:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:18:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:18:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:18:50 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:18:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 12:03:42 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 12:05:43 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 12:06:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4d15482f8eb5deefaf0868a9ccd27a4114951064b3932d35d9efb85e81279901`  
		Last Modified: Wed, 27 Jun 2018 12:11:13 GMT  
		Size: 44.5 MB (44474882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595c67309009d5c8c4b91b2f94f2a6e15a90740433ae648f42e27abbd7f0d948`  
		Last Modified: Wed, 27 Jun 2018 12:57:07 GMT  
		Size: 6.4 MB (6417304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a0366c8111904aa25dded355812c67e2d285d60a35b0aba5efe1617309aab0`  
		Last Modified: Wed, 27 Jun 2018 12:57:07 GMT  
		Size: 8.7 MB (8702521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284b67addc32ed4baa71c0bd6e49a7cb38534548a5f969e6bd22affa99303ea1`  
		Last Modified: Tue, 03 Jul 2018 12:15:06 GMT  
		Size: 822.4 KB (822415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875e8dc0d83a495cf1f5fd0244763dbe87891aef195364e0e3ae16cd0685e7e0`  
		Last Modified: Tue, 03 Jul 2018 12:15:05 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac9a7cd5c2e6dcb6a4c6afd5836c4e3438644731212889ffba212e9c921406e`  
		Last Modified: Tue, 03 Jul 2018 12:15:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405a2a49bd9ed48be6dc1a4eac252e4809f736fb7a94cec7c9488fe804ba558a`  
		Last Modified: Tue, 10 Jul 2018 12:19:51 GMT  
		Size: 159.0 MB (159003639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-21-jre-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:edd0eb7a330b2bd2a7d46fa2b1817b93bde66d422cacc9e0f856ada5991d8fa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (228998372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5539696c6f74a56764451904e205b05f2b5663881c09d71f8ba2fdc237610a5d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:44:47 GMT
ADD file:9e83f24b861895e4f5c52e8dac4324df28bc9245b0cb01fd8ab8e69858eba017 in / 
# Wed, 27 Jun 2018 08:44:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:35:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:02:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:02:27 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 19:02:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 19:02:44 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 19:02:47 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 09:04:27 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 08:58:00 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 09:03:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:264fde3494f7596520730fbecb89582dbd098f0eb089f29cf391f225a07585c1`  
		Last Modified: Wed, 27 Jun 2018 08:55:23 GMT  
		Size: 45.9 MB (45932394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45413e1b68a065bfe89257f57035e36b4322754fb55ab4f3e39317b70c439659`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 6.6 MB (6645906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49df4ded335c4959233bf629857422273bbb98855b17f0ddfd19a53d17c2c95`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 9.0 MB (8980525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3b99e46a76fb6a5b4de21521ebbdf0e6625b5ea3d1aa66bb59373c6f646bc`  
		Last Modified: Tue, 03 Jul 2018 10:09:32 GMT  
		Size: 831.2 KB (831163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29b7297914011b0b3290d37e8d4d4c94b4c61aeacaa15cc7cc9bd4ab587908`  
		Last Modified: Tue, 03 Jul 2018 10:09:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c873a6cbb5bf2319333f79611f2204baa6d8abf524c6a0a88584fcfccf4ad00`  
		Last Modified: Tue, 03 Jul 2018 10:09:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82ce9c41e8c9267e1fb3bcbb465de1535fd410c14549fc67dc0e17d7481ebcc`  
		Last Modified: Tue, 10 Jul 2018 09:16:56 GMT  
		Size: 166.6 MB (166608016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-21-jre-sid` - linux; 386

```console
$ docker pull openjdk@sha256:df8cbe466d1d2c9d346f375a05f9e9c1cf7f57574dc8c73f9f453daec4d59ebe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256389559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f3540ee6a4bd4f2f3744049a1db87832e08f3f639652a3ecf6ebf021f65a89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:44:10 GMT
ADD file:badca613ce9ef25e97e3f69ad617085db1421c5bc61cbe3cdcec3cab6ddb0398 in / 
# Wed, 27 Jun 2018 10:44:10 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:09:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:09:43 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:09:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:09:45 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:09:45 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 10:52:40 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 10:47:39 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 10:48:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7be0c3fc2014161eddb428cc845d9fc8e2626dc2dbee261e6aac6ec5a196261e`  
		Last Modified: Wed, 27 Jun 2018 11:08:01 GMT  
		Size: 49.4 MB (49417756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3027973a27662fd47e70a05b59c4d3ef16e5f2a5ff517a541445846b16f5c693`  
		Last Modified: Wed, 27 Jun 2018 11:50:38 GMT  
		Size: 7.2 MB (7185013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a36130f6d397af272ffd4f7a90143110e77b8b9991abc51d3f4986ec6242aa`  
		Last Modified: Wed, 27 Jun 2018 11:50:38 GMT  
		Size: 9.5 MB (9527411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db4b372fae0cb7a9a8c84b04fa5f7a3235f6af170435311bd7f29f215432e09`  
		Last Modified: Tue, 03 Jul 2018 11:02:22 GMT  
		Size: 853.6 KB (853570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c529620305c6a76d1fcbcaa3487cde28873e12f0d84f381c5b3df3cc20971dfa`  
		Last Modified: Tue, 03 Jul 2018 11:02:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42ed994acc2e87d561d76cff9ccaf44b945b0359e7ff2945cc278f01547f5e4`  
		Last Modified: Tue, 03 Jul 2018 11:02:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2b1596daebdb5c59ffdcf5cfa11b2aace4cfe423ac71acac711d5845873c4`  
		Last Modified: Tue, 10 Jul 2018 10:59:26 GMT  
		Size: 189.4 MB (189405443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
