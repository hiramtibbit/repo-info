## `openjdk:11-ea-jre-sid`

```console
$ docker pull openjdk@sha256:cf002ca6d418cfe1ef6073283d8801a249ca4f3c5c9ce92f37a74cd594c24375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:11-ea-jre-sid` - linux; amd64

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

### `openjdk:11-ea-jre-sid` - linux; arm64 variant v8

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
