## `openjdk:7-jre-slim`

```console
$ docker pull openjdk@sha256:5799c116ba7c4ccdf4e07f829e46a1a11b9ea9692aa1ee5aae30e321213a9926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jre-slim` - linux; amd64

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

### `openjdk:7-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:fdc9bc740d81aa72c7f0b476fa10ac2ee044b33bb204c186868dd8afc743a0bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80429922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc4857f8779ce2aaa47a57286428a6ac8c419eae714ea516f3d4dba9e0fa421`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:50:40 GMT
ADD file:b6a1d21b4c9d13e193935387c04d6bf39a4fe4601321ea62128409faebc0dc69 in / 
# Wed, 27 Mar 2019 08:50:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:12:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:12:09 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:12:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:12:12 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:17:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 09:07:41 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 09:07:42 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 09:09:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:381b01d802d70b42a6dbda0acb85a3c3bebbd7a8eb9fb5934b0eaf054de18e44`  
		Last Modified: Wed, 27 Mar 2019 08:57:15 GMT  
		Size: 28.5 MB (28458892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d28bcbb84a003e91ad3f74a2c8b3e363621c1f0bacd43f09b2b76fd8db293`  
		Last Modified: Wed, 27 Mar 2019 12:23:50 GMT  
		Size: 456.5 KB (456530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17735420f81169d04492a72a61d1ce7c87cb59d154eafc5d47599ba1dc06329b`  
		Last Modified: Wed, 27 Mar 2019 12:23:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22b5c2ead47fbbcadacf38e9b7b08639adb9472b508be60b9e5abd463b28316`  
		Last Modified: Wed, 27 Mar 2019 12:23:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e948a827d749d37546eae793e02a220f4ecc8b4e9e1a7db9a87fbf435d6b71`  
		Last Modified: Thu, 28 Mar 2019 09:14:39 GMT  
		Size: 51.5 MB (51514121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; arm variant v7

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

### `openjdk:7-jre-slim` - linux; 386

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
