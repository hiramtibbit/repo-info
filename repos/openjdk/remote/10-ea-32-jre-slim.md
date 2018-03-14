## `openjdk:10-ea-32-jre-slim`

```console
$ docker pull openjdk@sha256:642287d77b3c9d837ea0a2dc8f44214b081319790fa97947a7b0d62ae7fd4b4d
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

### `openjdk:10-ea-32-jre-slim` - linux; amd64

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

### `openjdk:10-ea-32-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:8fa025ef4d0edfa81bcdb7c3a20b06b17ea904112ced9b9d59675a014a0933ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85366270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6243eecbca523049911928c3a7939506c54e0a0c1da1947033518648f1240bdc`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:58:51 GMT
ADD file:b4a773bdf36e1d5ffd1a18e572d68931d4c543bb8f15550118ca2dc3b56e82da in / 
# Thu, 15 Feb 2018 20:58:52 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:35:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:35:58 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 21:35:58 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:35:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:36:00 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:36:00 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:36:00 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 21:36:01 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 21:36:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ad9f8330a554b5ea58298fafbf1a911d1e58c0fb81693513c0861ceb96632b59`  
		Last Modified: Thu, 15 Feb 2018 21:08:42 GMT  
		Size: 23.7 MB (23716725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d914632b097b3facb2d4406d1d30059488f13e396bae18eae347e863f9251b5c`  
		Last Modified: Thu, 15 Feb 2018 21:50:46 GMT  
		Size: 453.8 KB (453776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752eb93763bdcdfc7c6be14f2a50e07dbecf1476f6cd86ef006d61fb6839d9ef`  
		Last Modified: Thu, 15 Feb 2018 21:50:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de83ef3ae4a4bc308640e89eb0bb74e66ccfe4205092088ab7d771f7f9efb11`  
		Last Modified: Thu, 15 Feb 2018 21:50:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c470d67ec28472095d8099ed3371dfcab699514ac9e1f634cb36dc5957eafc7`  
		Last Modified: Thu, 15 Feb 2018 21:50:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ebd80404b01243a6625a5d8c61713b02ef044edc9d7316b20cd5d700ad14a`  
		Last Modified: Thu, 15 Feb 2018 21:51:03 GMT  
		Size: 61.2 MB (61195181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:39617fed6b64157a422ac52362c1ad8d904f1b31d67a80b75b4e164983ee6f2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.3 MB (85301821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a729b31b52ea5c0ecc01e852527d0ae6cac320f425423bce0863e768a6a3ad`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:29:36 GMT
ADD file:7daa4de7b314b856e7fcdb5f371c7b945c14b0c7caa86846eb2c49fe9979bd32 in / 
# Thu, 15 Feb 2018 13:29:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:52:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:52:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 14:53:00 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 14:53:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 14:53:03 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 14:53:03 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 14:53:04 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 14:53:04 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 14:53:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f5167d994364c066eea50fc16a99c559bdcafc5c8351ccd492d7917624d883a2`  
		Last Modified: Thu, 15 Feb 2018 13:39:33 GMT  
		Size: 21.7 MB (21734810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79887eeeb3c90499aefa18a2df783bb582abcccd01e38a5b53315e05cf40b7`  
		Last Modified: Thu, 15 Feb 2018 15:17:33 GMT  
		Size: 436.4 KB (436392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d9edaf94c20e5e3400a151aab5ef7bc4bd7c2443c448449def4bec875be07a`  
		Last Modified: Thu, 15 Feb 2018 15:17:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20709348423b242493f81a049918ae964419ef757ae82cd2f5e612da8dada6a1`  
		Last Modified: Thu, 15 Feb 2018 15:17:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fad827e1ac218ebd0d2c1eddc8852fc458ab7731b381d57650b9319937776e`  
		Last Modified: Thu, 15 Feb 2018 15:17:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58375732311b985cbce651ed0833b8b60ea18bba99daa56868293e2675929e9`  
		Last Modified: Thu, 15 Feb 2018 15:17:51 GMT  
		Size: 63.1 MB (63130028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0fc27ea43cb7130e837b12668d656bf6ea9563a75e3c03fb45d2e869f67db26e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88209192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9778c12bb1fd8b2a3160de7ad7f07864bfcca816c4916ce3da88a00c4086d769`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:27:10 GMT
ADD file:c88d10e67b1798acdb635ddc0f61d822ef61e0d3ec33a1c4e2cffbc886d457f5 in / 
# Thu, 15 Feb 2018 18:27:13 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:49:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 21:49:39 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:49:43 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:49:43 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:49:44 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 21:49:45 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 21:50:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:314e7324202544a982e975f5f851b7261aaad42f2e9b14b91716a5e0c3c6369b`  
		Last Modified: Thu, 15 Feb 2018 01:01:20 GMT  
		Size: 23.1 MB (23102391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d32396f67588f74628efe8c74109298589fde30acca5e0bf38a8e05b7b6b2`  
		Last Modified: Thu, 15 Feb 2018 22:55:42 GMT  
		Size: 445.1 KB (445098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccaab6d8fc6ac1bf2b804ddf82246f567cbd51d4e04fbef43dd36218e04c09c3`  
		Last Modified: Thu, 15 Feb 2018 22:55:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846ec33984ce1a8bbb56990615b16e57d49c7d8f20627dae397db7f5345f6e4c`  
		Last Modified: Thu, 15 Feb 2018 22:55:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49605397ce272e47f2742199d2b7adb7fca818ae9f0d9a1e6274bf85896ae010`  
		Last Modified: Thu, 15 Feb 2018 22:55:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e935c287bdf01e7d20d12eb8f0989f0a07c7053573f0dbd5557f95c436e96d5`  
		Last Modified: Thu, 15 Feb 2018 22:56:05 GMT  
		Size: 64.7 MB (64661114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:4ee9b3b0f1c7f05d962f59f29b3ed2869ed7e7e56fda4a1e5ad87973aec26de4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107543412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478c9f84ee5f3d8c41ccaf196f34afd39b4d3ca0eeae5dc44c669641524583dd`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 16:51:57 GMT
ADD file:8f960dcf48be7b5f9cd5e77981116810dc05da4b2b6a17221b8f461f93ba60c1 in / 
# Thu, 15 Feb 2018 16:51:58 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 15:14:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 15:20:18 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 16 Feb 2018 15:20:18 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 15:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 15:20:20 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 15:20:20 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 15:20:21 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 16 Feb 2018 15:20:21 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 16 Feb 2018 15:20:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:be56e166276f67c204f772591a93fbb1018c56a1e2cde7af2f366608b506d0ce`  
		Last Modified: Thu, 15 Feb 2018 01:08:50 GMT  
		Size: 26.3 MB (26341098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a752fc63aea2ba845dd5dcc121982b440db2c074c967b876d367f2fb6186b1d4`  
		Last Modified: Fri, 16 Feb 2018 20:11:35 GMT  
		Size: 468.9 KB (468899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb44a98c8bb5566dad3701d15b19af0cbf91c5f005d897a31247696890b98400`  
		Last Modified: Fri, 16 Feb 2018 20:11:33 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10456ec223d99ca1164932c9a005724a7bc32f2c6d194daef90c072efd5f1935`  
		Last Modified: Fri, 16 Feb 2018 20:11:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ec811ea297d0ce15ab81da52bc7e30176662691e18d1fb84a9571a542cf3b7`  
		Last Modified: Fri, 16 Feb 2018 20:11:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3aee13821a40094b026a00197d9882cfe5c601a69f0de079ebea32f73697412`  
		Last Modified: Fri, 16 Feb 2018 20:11:57 GMT  
		Size: 80.7 MB (80732825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-jre-slim` - linux; ppc64le

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

### `openjdk:10-ea-32-jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:44a455ba07de0852c82df188405fbee21424f7129d6309a5d8555c3c7d6441af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (91045694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5865a3ba4a272a7f2f129f3c77d1f384f1e8374d6845051668e9231d17155bc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:08 GMT
ADD file:6f68d1b98f1844e4f556be18e2db7a2f1262097f9dea14071f46d5f8dfbd22e7 in / 
# Wed, 14 Mar 2018 05:23:08 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:35:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:35:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 06:35:37 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:35:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:35:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:35:38 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:35:38 GMT
ENV JAVA_VERSION=10-ea+32
# Wed, 14 Mar 2018 06:35:38 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Wed, 14 Mar 2018 06:36:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:298af72285f6bd87726f47a71d44a9089da15048e0eb38a6b2ad0d5f6eef4cff`  
		Last Modified: Wed, 14 Mar 2018 05:27:48 GMT  
		Size: 24.9 MB (24881607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fa0f98e9ab2b7efe654e711de6bbee6c0afc5d2a8d62d21d8f7b9f5dd611b9`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 471.1 KB (471066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf9bd37faf4b01e8ce07fbb2e78b05f74bc20c16bd189b199c1844b9af4eb2d`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fb1f77914d3a0c3d99ff5e81cb4b402918a8dbff220dc8f3b6aaf00250723d`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f6516fe841568983cb1d49b9d42fa55b5c6fbba2c31e52c82df6c602a1763`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb100ad9c65d54903b48865c57871a561e5c6cec83e1853c34003d7d36e27aec`  
		Last Modified: Wed, 14 Mar 2018 06:49:24 GMT  
		Size: 65.7 MB (65692433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
