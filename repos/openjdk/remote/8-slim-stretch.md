## `openjdk:8-slim-stretch`

```console
$ docker pull openjdk@sha256:6e8dee3fdb34c899d5d2f1cc9f036ee24879c4004dcd8fe6ee5318c2d43dba7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:8-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:9884ec80fac73ce9a5217dc3f9450b4d812b451c8191e9e88b007516b8901203
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90449253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010fa2be06dc53a31aeef58d847865b8510fa217bb0fe5d1f0c4c6124e83ce74`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:59:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:59:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:00:02 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 15:00:02 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:00:03 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:34:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6dd39b85823bd8b7dedf55493b2571443143909aa32cecfcce74bf0280d18`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 454.8 KB (454816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0730514ffad1a18c952b64cb142bc90d2fb8dae84958e7f4cbe0f45fc77fd`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dae24989f4b7d5e9ffab8e282103fd96960a02525281093fac8c2fac3e3e35`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af745200416d9af6fd37fbbf9c6acd6aef6c5d407ada0409118b14b790ce0e7`  
		Last Modified: Wed, 26 Dec 2018 08:40:43 GMT  
		Size: 67.5 MB (67507782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:e48d79502f8ec85ee44f7d906f719ce3b2a4f5b2029f3263edbca668210ed526
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77541729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1713c95622a03dbe9780c8e0146ab454ef50292fb09adf5c7e2962cdfd89b128`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:38:22 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:38:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 18:38:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:38:27 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 18:38:28 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 18:38:28 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 09:59:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170d2c781892c05bd05b5c851c59acbae264c3e02d21a48a19aa82348b10a947`  
		Last Modified: Fri, 16 Nov 2018 19:04:05 GMT  
		Size: 447.7 KB (447702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a7d478573e48ad0a5b84dca7009edd6d7170bb8b119ed9d6c53a88265b8de5`  
		Last Modified: Fri, 16 Nov 2018 19:04:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cdde692cfa5c7650264a023d71ba27c14ae38f3fe3f3250933cdee1452a15`  
		Last Modified: Fri, 16 Nov 2018 19:04:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37520d00f3fa63ddaee6920668ae0fc6880097a2cb498470b4373cedfb023e09`  
		Last Modified: Wed, 26 Dec 2018 10:07:35 GMT  
		Size: 55.9 MB (55930642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:4480561fb82342fa402ecb5a4c119227bfe4c05cadfd45df574382cdad102956
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78119969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7dcdac22d31e87563770522f535a65986c40f46debd07322dba818d5b6aca99`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:01:31 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:01:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:01:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:01:37 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 05:01:38 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:01:39 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 10:13:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d594caf9c11b4dd5588375b02cdab683c1f3ff4e66526d98aa006e849a8dea`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 440.9 KB (440857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df53400c62e60586cf50ab4f031bb0ef450d7bc7d26fa4f1e82718c5748e3f9`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2767e9387e76b486b12cc446ecd4a98e7cc06bc83637d321ab0f1d062a46136`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55697e33184a95294ffeeca8a68b9b7875b6abda8b68cb74ac93221266b70d45`  
		Last Modified: Wed, 26 Dec 2018 10:29:01 GMT  
		Size: 57.3 MB (57347424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:22986e787a4a37c55d3d6b3ac1af8912ca1c60f2c5f47288ff131c89e80fb84b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90550026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b6b17ec1b81216f525cb0e577379de50d617162f46ddc8715054c1d71cc1c4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 14:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:03:06 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:03:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:03:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:03:09 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 14:03:09 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 14:03:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 14:03:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 14:03:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 14:03:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d03dee212f9be81a5e3d859461fb2bb45b3e94124fc8ff506a0cc3ad8828de`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 463.5 KB (463502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad2774990f145bcde797451ac3caf264e19234b890f04cc57a4543a270667c3`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61514c2e9cb4d1c0abb7718cd06259d36ee12042eb3667a4fb010f27b00039d`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86679125e09b7b576918ff24f37cc06e97fa30470465ddbfae2aa77d0d35b5`  
		Last Modified: Sat, 17 Nov 2018 14:49:30 GMT  
		Size: 66.7 MB (66712587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946b1da6785b4c54156000413a36c259cfa80bed54a35a1c87747b685e7016da`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 246.8 KB (246784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:9c540d4079f48c7e633917a3654b47ba684d3f2658fd03eae09687a9f2b8e36d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81056087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b097e1c6748b0108d1bfd0a293f5f4f41d44554d2c224771c35be970152a0e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:11:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:11:41 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:11:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 22:11:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 22:11:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 22:11:48 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 22:11:48 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 09:58:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4afa5814d1a6b68fcdc7af12ef2fb2e6f8776d66c8deb23ca45c4577c7377`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 449.8 KB (449757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f374edcd3118d2ac0f97ab11ef65aab9ea9a45af261412d47d94fb07d75e82e`  
		Last Modified: Fri, 16 Nov 2018 22:50:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68e4c4957a701e3624720cf48efb880aa7d40694f94f872dd918e8e6a3de5c6`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae16cf070719c7e45d55d3e7dc4d180f735a0b2b46487f1ec81a0e63af94639`  
		Last Modified: Wed, 26 Dec 2018 10:12:07 GMT  
		Size: 57.9 MB (57865235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:b8d61ad1b0429218aba9afbc5785cf0ffe2a26b3e5bf64d96b051f1c6c838785
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80062889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a78e7dd708c0c6e531190e64f8b06132f71e3acfdc6bdbb0a33f3cae1c61ec`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:54:05 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:54:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:54:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:54:09 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:54:09 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 20:54:12 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 20:54:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 20:54:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 20:54:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d91749347b96136484261ecd380323abe2a6e1239b2fc43f11ac5b40645a54`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 465.7 KB (465732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b17441b229bdf6d8137039af83db434911ea884c98bf311a515910007f282f`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480ba75456ebba63a18eb0020102f636815ca680c262e5e090de03dff12dcef`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9487ba7e9f84c2718183e65997f0d6fcc3d701f3503749ce2993f6e316c1029`  
		Last Modified: Fri, 16 Nov 2018 21:11:10 GMT  
		Size: 57.0 MB (57015362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5be88ac447675bf69867d69d1c097378545ebdf709496d20ed50cf368862e07`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
