## `openjdk:7-jre-slim-jessie`

```console
$ docker pull openjdk@sha256:289d33ea2b62cf88173b0c489a7184c6b25e9dbfefef32e6a6fbb1482136788e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jre-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:b5fb7568d8e2394c4843d9ccc1dec95901a3749777441dd71f82446c3b230030
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92334576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebd4428afc2828dd97d7d87348ba66d9506d0722d7befdfbc680155f17a9257`
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
# Wed, 08 May 2019 05:23:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:23:08 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 05:23:08 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 05:25:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:d48b08648f73292a05f6493fb7c424ff5a9cae21d9c81c809c2a60af6bafc99e`  
		Last Modified: Wed, 08 May 2019 05:32:09 GMT  
		Size: 61.7 MB (61716319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:1f7775136ca50a81fa1a5f35d37c75c31acbaefec47aa3107cb818a108aa2a55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80429939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7508ae43fef223f1d27759979099e28abe45b85d9171c34a5d06f46a58b08f01`
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
# Wed, 08 May 2019 11:46:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 11:46:14 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 11:46:14 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 11:47:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:ef2534cc56eb11522ba5d11c6465a57ffdedda7f3c25aef2761d79bb0d9b77c4`  
		Last Modified: Wed, 08 May 2019 11:55:15 GMT  
		Size: 51.5 MB (51514009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:b681104748af7b4895db526a8f1c70cc7686223a2262663dccce2bbfb3868bef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77125467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5031af07730b7e8647198274dedd91f1cc7f6eaab20a96447fa760772e43e949`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:04:17 GMT
ADD file:41289becce270534012f48a6689e46dd1f96fd510fdd169a3641864a0e35fd2f in / 
# Wed, 27 Mar 2019 12:04:18 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:09:38 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:09:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:09:41 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:14:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 12:15:02 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 12:15:03 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 12:16:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:80ee02f1493958c68f241edb0d71b84092fb026a0ffdbdabe9c7243de469f8ba`  
		Last Modified: Wed, 27 Mar 2019 12:11:04 GMT  
		Size: 26.3 MB (26306415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbaa7df0294fadef50d0e1c79cbaaa0bb6e214c8a1feb8de9a6ac64cb4e8946`  
		Last Modified: Wed, 27 Mar 2019 15:19:00 GMT  
		Size: 432.4 KB (432403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e468e412cc4600ab6dbc86addc288013b0e3b2c92ee5a545c33dbdfd4a7927f4`  
		Last Modified: Wed, 27 Mar 2019 15:19:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682037c33d40f1855307c10e56f25527a2242c82a5030b6ae62df2bc7dc780bb`  
		Last Modified: Wed, 27 Mar 2019 15:19:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef7e5f817fd1a3936d3829808e5a540c5751895acf9f168a37560189aa4fbba`  
		Last Modified: Thu, 28 Mar 2019 12:21:32 GMT  
		Size: 50.4 MB (50386270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:d6093f87f5cf399005c470362263370d8595a07664209956f31fac70f04e800d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104082334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e58a5c67acc08690ca93c466bfc65109abf8898ca17e3d643a50fde105c2e5`
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
# Wed, 27 Mar 2019 18:22:17 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 01:12:07 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 01:12:07 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 01:15:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:14f15f048dad50ecf7a05e883b84bcd613b474ffa62cc7ea80a6fa55b000b96d`  
		Last Modified: Thu, 28 Mar 2019 01:20:46 GMT  
		Size: 73.3 MB (73316494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
