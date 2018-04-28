## `openjdk:7u171-jre-slim-jessie`

```console
$ docker pull openjdk@sha256:1263001820cd399f4da185d2c3e4607f1bdfa980df60bf543a9ff1be6677e8ed
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

### `openjdk:7u171-jre-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:ddf2a68ad7d5cecb885ff870aa9efb5e1c1cf2cff76625111e3b5f5ebf88c105
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104902679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ef844dd63e3558fdbbab96d391f80a6c234106b9870b3f74009f1d267c6784`
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
# Wed, 14 Mar 2018 11:15:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 03:40:02 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:40:03 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:40:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:9751ff10474e698d3ad33929bc4cd0e2065f5704d3c02c5eb09a9d64705ce908`  
		Last Modified: Tue, 10 Apr 2018 04:33:51 GMT  
		Size: 74.3 MB (74316173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jre-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:78128fe8c17fd082ae93710385930c79609d33d7e64690cf24daf7e001164511
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92381011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de5acff06d3d9c502e4c872a1c23eeee629d86b1a2f38eccdbe21830937dcb2`
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
# Sat, 28 Apr 2018 12:55:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 28 Apr 2018 12:55:05 GMT
ENV JAVA_VERSION=7u171
# Sat, 28 Apr 2018 12:55:05 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 28 Apr 2018 12:56:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:2c64ba80145c7affaa932db0bbfe75ef8a3d2906b1b36345d0732b44bbdaad0f`  
		Last Modified: Sat, 28 Apr 2018 13:30:31 GMT  
		Size: 63.5 MB (63488470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jre-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:4c3c855b0814d5272ae746467a49abb2124abad03d18e45dd2c571d81927a6de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88764205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d78a7bb310c8c48ea9bb24c744b6c1c43376a3a9c5d3926834ff6d1b7964090`
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
# Sat, 28 Apr 2018 12:57:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 28 Apr 2018 12:57:58 GMT
ENV JAVA_VERSION=7u171
# Sat, 28 Apr 2018 12:57:58 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 28 Apr 2018 12:59:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:76f5c34c2c3cfada3d9f4a67e213e2ec85a9d9c0c77739aef21a4f44c621b6e4`  
		Last Modified: Sat, 28 Apr 2018 13:28:29 GMT  
		Size: 62.0 MB (62034107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jre-slim-jessie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b67c805a829d143e78f574ea16a1559ece2a45a80e48e4c97c58f226df0f3f51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92424515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfee200de92a8c03fc45dd6af45bff395d1a001d08f5a42743309f3d655ea488`
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
# Wed, 14 Mar 2018 20:54:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 03:47:10 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:47:11 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:52:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:f30f0fdd8680ec81526c3acecba1c2d3359e5940d4154793deb361f5c5a53ccf`  
		Last Modified: Tue, 10 Apr 2018 04:12:08 GMT  
		Size: 64.5 MB (64478060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jre-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:47183c3152d8f26c38cdb6dd08729e929d81a0eb348dab88bb90f4777d004e57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116238112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60135611ab1d42e6f609d187873a190c21b09ab25e7dee12a8939f15022d5835`
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
# Sat, 14 Apr 2018 03:02:11 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 14 Apr 2018 03:02:11 GMT
ENV JAVA_VERSION=7u171
# Sat, 14 Apr 2018 03:02:11 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 14 Apr 2018 03:03:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:11fc59b433939897498eacd8ad8524f729f8d0386587bb8cc22a5b0673debe18`  
		Last Modified: Sat, 14 Apr 2018 03:24:45 GMT  
		Size: 85.5 MB (85498260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jre-slim-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:f1e1313b2ad45f809ac33de16e126a872837cc9f867f1cd83d206741b7c1fcbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95289822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d78f15409602d3760f95c75baa8698c5f8acbc2ba5e296ceea2cdce7c9cbea9`
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
# Sat, 28 Apr 2018 09:38:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 28 Apr 2018 09:38:44 GMT
ENV JAVA_VERSION=7u171
# Sat, 28 Apr 2018 09:38:44 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 28 Apr 2018 09:41:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:70d5ca1c4cf86840d6623237b916db5e545ca923fed844d4a35e876057363d76`  
		Last Modified: Sat, 28 Apr 2018 09:58:46 GMT  
		Size: 65.5 MB (65511847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jre-slim-jessie` - linux; s390x

```console
$ docker pull openjdk@sha256:f0d1af6fc6732ab9730b92595bbc53c6b9b9f4e4efc5119387cdabdd6888b119
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.8 MB (96827355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3079e064bbf34df46ad8072f504ba3ddee7655069fef93e559ff27e421995326`
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
# Fri, 16 Mar 2018 05:44:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 18:13:27 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 18:13:28 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 18:14:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:6a8dc105db431fd70f6b9252c9c5eef8d0491ca810aa4c2c1500d522400d661c`  
		Last Modified: Tue, 10 Apr 2018 18:18:38 GMT  
		Size: 66.1 MB (66051831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
