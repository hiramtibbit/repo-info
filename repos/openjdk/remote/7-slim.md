## `openjdk:7-slim`

```console
$ docker pull openjdk@sha256:1e70e0b2ae1701bf77da5cb6b74a3fcd85ebe49fbcae86f474fd29d3d27e1c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:6e29d469389589dcb89e2c5a6b7a653c204c0f3ae58f1dd5ab14bc627c41619d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115907341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbf8e5978aa17d868e1e9a995ed69f4aad1ee33608cb76fe71f5e8bf176dc6a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:30:43 GMT
ADD file:2a97e6ac5eb5fead96f0d2bf3dc1f8732ff2a912450eb7d01a5f81731f66c2b6 in / 
# Wed, 08 May 2019 00:30:43 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:16:18 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:16:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:16:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:16:20 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:16:20 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 05:16:20 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 05:18:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:80e253c906dee8d7b26d7dafa4166149c57cb763d43ba6d483710370c32da5cd`  
		Last Modified: Wed, 08 May 2019 00:36:18 GMT  
		Size: 30.2 MB (30154060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359b1e5bffc36ffeb13a6993169cc333fa6661a6c4eed575d232ce4946cde837`  
		Last Modified: Wed, 08 May 2019 05:31:10 GMT  
		Size: 463.8 KB (463820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f816a1ef6133e8f97fa4b0edb9b7e83432b998f2d5018b90bb97231273f6821`  
		Last Modified: Wed, 08 May 2019 05:31:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e0fb57abef91b68244295d0ba40eff5bd83f23133d267124b13df7c99f3fd0`  
		Last Modified: Wed, 08 May 2019 05:31:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057954033f3f919d53b03cab6fc7b5d03e5e9e769efd56da714cbcbea79c22f5`  
		Last Modified: Wed, 08 May 2019 05:31:21 GMT  
		Size: 85.3 MB (85289084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:b61be4fd5c4e9b3aa32d92226cbc0fc985132243055c17ceeeb063396c161754
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101182250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c85103bea49ce6c7f6a5b26628741fec1ad71ad70bcf078c4e27616a31fb83f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:50:21 GMT
ADD file:324956f1f259bd99cf6108fbdb8fc733ce537d0b89ba31739395b1328bfb819f in / 
# Wed, 08 May 2019 08:50:22 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:41:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:41:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:41:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 11:41:26 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 11:41:26 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 11:43:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1c07eeafb49b1794eef3297c027b386341a5b14d957a4e321aaa6d4ad6f42ea0`  
		Last Modified: Wed, 08 May 2019 08:57:05 GMT  
		Size: 28.5 MB (28459029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228762bdec103beaeb65f3455093cfc85e41b2d89a2e5ff52a6ac14a9d2aa11`  
		Last Modified: Wed, 08 May 2019 11:54:15 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a665f82611f1ea20211f63de2856d67df20f44f10f43f02976a13bc2df2b3cc2`  
		Last Modified: Wed, 08 May 2019 11:54:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d7f236471d69f54dd2ed55d4071f993075eed9b525bb939b78503237aad64e`  
		Last Modified: Wed, 08 May 2019 11:54:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a252643ef5298af0fb5642cb9f0506a9efe55243cc50f6d3e65228f36b8330ad`  
		Last Modified: Wed, 08 May 2019 11:54:31 GMT  
		Size: 72.3 MB (72266320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:1d89c35671ed6ad04867efb92c15f10421c8001e13f6e7eb3318850bc4a243b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97351635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05e1cb5a4c203b46ca24e4a337aafbf25a6be8bee8a89f6280ae6bb802cbef8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:00:01 GMT
ADD file:bb152e954677aa990a56cf43a95243715ae81fc63067d4c1dd692e140bc80d36 in / 
# Wed, 08 May 2019 12:00:04 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:21:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:21:05 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:21:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:21:08 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:21:08 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 14:21:09 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 14:21:09 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 14:22:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e087398f59c8258df1419a1dab97ac7f54b57bb151a24b88dc99be00bc7546bf`  
		Last Modified: Wed, 08 May 2019 12:07:40 GMT  
		Size: 26.3 MB (26308224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe4a7ebf76e8a3f2d4742cd8502a63033c71a56cfaea279451f52304eebe85`  
		Last Modified: Wed, 08 May 2019 14:35:15 GMT  
		Size: 432.4 KB (432396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699be4fc2145cba7ae971d162a5631dcef0a166e9ab31f18868f81e6bcfc32e3`  
		Last Modified: Wed, 08 May 2019 14:35:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e9aa1e5a626a6a010f06a4167cadb37dcccf2a7af44145bf3677116542535`  
		Last Modified: Wed, 08 May 2019 14:35:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fada09c4ca0ddee6a9d75f2b48ceac1dc7062ad65702284dfc2c81be0ce83892`  
		Last Modified: Wed, 08 May 2019 14:35:28 GMT  
		Size: 70.6 MB (70610637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; 386

```console
$ docker pull openjdk@sha256:caa1f3761cd50bcd5b00df337d9c003aeec129fd3252c487e7b6eb83b3f00396
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c958176e1924d2f18c50c7e92c49a7c085aa8543449ff5dec430ab766e15a9aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:40:26 GMT
ADD file:e89fbfe1dacb99a1410da8591a637f15be7ea427f1b62531b1b65d120a51065f in / 
# Wed, 27 Mar 2019 10:40:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:08:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:08:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 18:08:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 18:08:36 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 18:08:36 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 01:05:05 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 01:05:05 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 01:08:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6f2bc3c048dc6c822ca9857e6126bb9093bbe3b765c2ead20413c77e88de8d5f`  
		Last Modified: Wed, 27 Mar 2019 10:47:04 GMT  
		Size: 30.3 MB (30299096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92d2f4ae52e29c69dd9da73fbd1768c5243dbab97a922ba6bdacf44f1406329`  
		Last Modified: Thu, 28 Mar 2019 01:19:32 GMT  
		Size: 466.4 KB (466365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c445d893ead75ca6130534fe7530bb3147b9bb56808f3c732d2bb9884683948`  
		Last Modified: Thu, 28 Mar 2019 01:19:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce4f857e3494421920f34c5ef8c69354b568419fff5025026c0327e49d39880`  
		Last Modified: Thu, 28 Mar 2019 01:19:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee6b241f72c61f100f53242e084be959a90c7cf7a72b92072261e74e5c88390`  
		Last Modified: Thu, 28 Mar 2019 01:19:51 GMT  
		Size: 97.2 MB (97242697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
