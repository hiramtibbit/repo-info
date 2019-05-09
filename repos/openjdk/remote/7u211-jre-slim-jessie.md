## `openjdk:7u211-jre-slim-jessie`

```console
$ docker pull openjdk@sha256:258ebcd37d1bc41b5c25997bc6b12e2e8553492f8119a280589c1f36b5461b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u211-jre-slim-jessie` - linux; amd64

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

### `openjdk:7u211-jre-slim-jessie` - linux; arm variant v5

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

### `openjdk:7u211-jre-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:e02500edca08c6b40a6cde9f36ff0f421ecab31fc7252f68cfdb2ff7d74c4d40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77127200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743478e52f20f249ad1af3f19df0b96039a8f80b0e4cc4f226a7f44dbaa3d101`
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
# Wed, 08 May 2019 14:26:23 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:26:24 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 14:26:24 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 14:27:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:612014a81db6b38982cd14714d3e85f802e11e729ae960e79ac60165f260b331`  
		Last Modified: Wed, 08 May 2019 14:36:15 GMT  
		Size: 50.4 MB (50386202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jre-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:8f141902ce3a593cf255e9012af79fc50ceeb77f758a26ee3569da70faeeb2fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104082646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1cde7d20347532d1c62511de400baf0afdc7cae05696fa35e356b3a3395d48`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:43:09 GMT
ADD file:36912bcf0cabb99f7c34c1ef9281884de54d7c93fa512d2dc869584a3fd48bc4 in / 
# Wed, 08 May 2019 10:43:09 GMT
CMD ["bash"]
# Wed, 08 May 2019 22:27:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:27:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 22:27:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 22:27:39 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 22:39:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 22:39:21 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 22:39:22 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 22:43:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:869527f326197631fcfd0ac41c8ce8837a469221bd968469b3ec80cba4d4a5b1`  
		Last Modified: Wed, 08 May 2019 10:54:26 GMT  
		Size: 30.3 MB (30299450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d779fb3916918555f0407dd5b8614fc78528eb700e0d4ab01c240082409e05`  
		Last Modified: Wed, 08 May 2019 22:54:04 GMT  
		Size: 466.4 KB (466365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c366d1823cbaf2f8585655478630658dde74a758fcd8c994dc6d882776c18e44`  
		Last Modified: Wed, 08 May 2019 22:54:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89c669e53883e241e45364c1cfcdaf566c31dd4fe806276e69543ec9c865acc`  
		Last Modified: Wed, 08 May 2019 22:54:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bd55a43ee7b0d53c384fdf405d5b8040fccfd23b377b4a31ad6b9662c60f1f`  
		Last Modified: Wed, 08 May 2019 22:55:54 GMT  
		Size: 73.3 MB (73316453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
