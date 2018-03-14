## `openjdk:stretch`

```console
$ docker pull openjdk@sha256:e9e0dbf8275a7dcb62ba0f9580ae5e4d8d7ab07043576c93eb60336397f16f13
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

### `openjdk:stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:1c9030c295887c6b099bd89fed13f459fb05b2278f20e400369629e6014dd449
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294670192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db77212ffe0598207c9d1024d86b64abc332382ebb459c48fd5d5631a4cf2287`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:9b9687d5e94bfad02f82b1c2cb626ba55418378e973ff932478eac7f35345613
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259407261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed0b6e8db424b99b833f279175c832889ca12d6c78bc0e9bf5ad7bccb8e20b43`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:stretch` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:1ccb5952c18ff658617a7706b1ab9adee3bae59a80ce7f1b41b977f97260ec80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267833179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee3ec084424faad3b1c91fbe54c1d4f6087e9b7ec8669c0e97cf501ac223a7b6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:15:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:05:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:05:01 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:05:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:05:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:05:03 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 15:05:03 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 15:05:04 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 15:05:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 15:05:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:05:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be4c519488d3f9c0893c7e4aa66f806292ac98c1f509b4387b4eb8e4789e9a`  
		Last Modified: Thu, 15 Feb 2018 14:24:47 GMT  
		Size: 9.8 MB (9824909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e5a3e5bf5f97b01c2bf09851057f8cc68748d43fdde36477492ec435aabd55`  
		Last Modified: Thu, 15 Feb 2018 14:24:46 GMT  
		Size: 3.9 MB (3912530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5727b344ba95e9bd04f25fd92a97ede236a31569adaee62ca3843b214d4d7d3`  
		Last Modified: Thu, 15 Feb 2018 14:25:27 GMT  
		Size: 46.3 MB (46346480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917946f878a23cc8936781cebbf03e6b4152d74fe1fd22a58a5e42422cf733a0`  
		Last Modified: Thu, 15 Feb 2018 15:36:29 GMT  
		Size: 867.5 KB (867523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d652be9c34abb1e5b739d0cbdfca99186ea789cc4cf788e755ddf11e2cfa58`  
		Last Modified: Thu, 15 Feb 2018 15:36:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d51dfbd71fdd5d3df9b94019138e224d07351875e591e982c2cc8f01b4c000`  
		Last Modified: Thu, 15 Feb 2018 15:36:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f5a1789acf2fc3cb8c72f4b544182dc991e1d7eed7e45170b9c055bee16934`  
		Last Modified: Thu, 15 Feb 2018 15:37:10 GMT  
		Size: 164.7 MB (164749621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25211e5b66588cf8045fa565a8454fc81ea115b3fa4990b1065cd5bf258109cb`  
		Last Modified: Thu, 15 Feb 2018 15:36:29 GMT  
		Size: 272.1 KB (272071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:84372790495678e45ab3e50c3863287c7d99cacec8619738c73ac6c101082d2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274258717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6920daa5b2a117b6244233b6a6f8e5a56e2f080fc2f02712ba18fe7a2b7c7d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:stretch` - linux; 386

```console
$ docker pull openjdk@sha256:a5df75ae3bdaccbc006f9e16681238b07a99df5bb0f63b371ea10fe083b8ce3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299724770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa3971fd796b0a4db7f21c85fa6fab760a2c0e32c2aaffba69773e45e956457`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:538259e6955ec67cd6ddc01008873d4f8597036b0db0222d3a5dbdeac274af26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282908205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdce8b1a33cdf40b0a4b6a7028c1d49c491c637825191e555f0c48c7eb47a1c9`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:7fe32cd5ea6f8ce0fc1a8e8f322d78aeb77215cb9a2b8a8c4eae915511b04e57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265343636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09c7743eb3a85bf6c20c3d6b3a3d3fcf97ebc884751b505230e001a89d49ffa3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:44:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:44:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:44:04 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:44:04 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:44:04 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 06:44:05 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 06:44:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 06:44:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 06:44:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de9975a4667ee41bbcb2f980a2130cefec90f8e4e68bf790301bc263ee65fd`  
		Last Modified: Wed, 14 Mar 2018 06:58:04 GMT  
		Size: 903.2 KB (903250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dde24fe3073810f5a1d766aa8ffe0c2d1daf8baf47fa7af5f5bbbcbecd21e4d`  
		Last Modified: Wed, 14 Mar 2018 06:58:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24411596df6ee26653c9979e4ee3abe6907359c64ddd4ccefa12a94c37b9eacf`  
		Last Modified: Wed, 14 Mar 2018 06:58:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1decbec5c423f54f1cdaa204f5d5bff62caacf9f080cf30470d08b5bf4d6cf44`  
		Last Modified: Wed, 14 Mar 2018 06:58:27 GMT  
		Size: 153.7 MB (153708221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa83b3ee49e27f45b6794be2bb522f8f4cea2364fe29f8c584f95323f9f21d2`  
		Last Modified: Wed, 14 Mar 2018 06:58:04 GMT  
		Size: 272.2 KB (272178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
