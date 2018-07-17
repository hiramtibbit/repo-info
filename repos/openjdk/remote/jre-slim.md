## `openjdk:jre-slim`

```console
$ docker pull openjdk@sha256:d3dde81b994e2b708304fa749c0ffa8af638276f9200d0fedb27aa082ff0eb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:a433473aaca44692c15ca5c583520b3a242abc09e203b3bbef1478ef10d2511b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78997779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:578940672555e3996a9c1f5d6f5e51d58dcdbaeca72f6165080d09290bb78dc7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:18:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:18:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:18:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:18:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:20:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:20:32 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:20:32 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:20:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afd40ffc1e2ac132b1073f4b57c9f62d1a1096c3dcbd2cb5f5311a51598569`  
		Last Modified: Tue, 17 Jul 2018 06:58:30 GMT  
		Size: 454.8 KB (454827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c26bf1484f75a142df43d755acb0f4c9330ca74998af12b47b943409d48ed6`  
		Last Modified: Tue, 17 Jul 2018 06:58:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4da1ccc6247932be19ef1746b2e94063a6e08b9fa5da79d6ba35e71e0b7c25`  
		Last Modified: Tue, 17 Jul 2018 06:58:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff62c1670db20052cd2e1e78933b2647fb63d9687e1d702bf28d5ffbd2b064f`  
		Last Modified: Tue, 17 Jul 2018 07:07:21 GMT  
		Size: 55.8 MB (55809942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48888ade711f696d9d716f55aa7e5e7b48aa4af8e7b91310d159bf26426df850`  
		Last Modified: Tue, 17 Jul 2018 07:07:05 GMT  
		Size: 246.7 KB (246727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:d24f87ffd162f573a1f27f64dd3c4682aebf8fdd96f75a2a6ec24b058d1190c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68400938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c37c7e272e6a8b4318edbc95e1c241003a480a418e35c5c8c373405977182de4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:18:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:18:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:18:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:18:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:20:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 09:20:02 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 09:20:02 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 09:20:02 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 09:20:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 09:20:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c354f9816a0a1d1eca71695570ca0f466fdfd2ea89b752e7c197ef4276b2738`  
		Last Modified: Tue, 17 Jul 2018 09:30:21 GMT  
		Size: 447.7 KB (447660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b67bd2c9978a6015002e17d5302d98f2f10b9f819d50bd44d1d15e97b91344`  
		Last Modified: Tue, 17 Jul 2018 09:30:21 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4f4f79cf2d84a7ddcb77255a867f1623d652df942f1b9bf9bb7bb60b70d2c5`  
		Last Modified: Tue, 17 Jul 2018 09:30:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a008d5f02c974bfd7d51bcbd2f31c742061b87bad76cc4f02b9daa4a286f0c`  
		Last Modified: Tue, 17 Jul 2018 09:33:21 GMT  
		Size: 46.5 MB (46543528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fdc1484e0f0035415e71c99b51bcd8584e0d26beb5ca6932377553b3500944`  
		Last Modified: Tue, 17 Jul 2018 09:33:09 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:31bbf1bfb6c486fc722a53758da013396002442b54cc708b4be064c91cf3b8ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69082920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:740f0ae5405f49a0759666a527b563e8737e06ec14ec6e2716b4e67490d0c91e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:35:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 10:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 10:35:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 10:38:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 10:38:42 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 10:38:43 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 10:38:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 10:41:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 10:41:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c188af2663c2692b617929ecc379feec18f8c714a163e91ffefe4892b20ebe`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 440.8 KB (440827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bae1d6e46f95e052f094dc4f2dacf47cb7d307e2f57d0d521ef848ee9862f4`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469228b6cf78d13c8c9fad07633d71418ff610b9a6407eaf3af0bd4e6a59ab69`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003badcc6ad1bb82ce8988e2393f6612f0002d580896c91c100cf9340f4c873`  
		Last Modified: Wed, 27 Jun 2018 10:52:42 GMT  
		Size: 48.0 MB (48021532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e107cce4cc0c933a008a5e63d72b2339afbe6e29a3feb88c5e6b86dcd713eacc`  
		Last Modified: Wed, 27 Jun 2018 10:52:29 GMT  
		Size: 272.1 KB (272107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:471de8058578f9b9ecdf013dcdcf0193701822f78b5f1a824495ba87414dc827
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79255075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b02f51d4e015d40f405b11632447d74bb9450a8eb83fdcb5e8ff9d74add4c7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:14:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:14:33 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:14:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:14:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:15:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 15:15:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 15:15:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 15:15:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 15:15:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 15:16:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf7f487754d69c6458537dd6a19ed49991ba093043ca5a37cb6b01ac586415f`  
		Last Modified: Wed, 27 Jun 2018 15:28:30 GMT  
		Size: 463.5 KB (463495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c60e2b319fe6cc1958f76d7f2fa2d982a3f2681283f6681172805207404a936`  
		Last Modified: Wed, 27 Jun 2018 15:28:30 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ae03f3d4451c49de540d77018d0b6c17b0a514a548984f1dab3c67371540ea`  
		Last Modified: Wed, 27 Jun 2018 15:28:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f530a982c29fa248855f4d7805fb80591ce2117b055ca665f0c92a2cae7b600`  
		Last Modified: Wed, 27 Jun 2018 15:31:18 GMT  
		Size: 55.4 MB (55378993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357f5854e6c99255204461fdcaeab89de366ba955eac4f4ff320acd2bdc3fa55`  
		Last Modified: Wed, 27 Jun 2018 15:30:59 GMT  
		Size: 272.1 KB (272107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:270ad7955997addf38e30d89c7d6c338da5456c8ddc1dea096bbb96ccde6051b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71966912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ec64a7e89f5941ee2997e75e8f0d2fb281c3339f8e263cf2f1fde6b5966b6c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:44:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:44:51 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:44:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:44:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:51:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:51:13 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:51:13 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:51:14 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:52:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:52:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3f2f3bec21c77b0bb00fd053562418a32d70a144874c18cf3f041808391767`  
		Last Modified: Wed, 27 Jun 2018 14:11:02 GMT  
		Size: 449.8 KB (449802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8392e4c37bc89e662ac333e2e634d85bb23adb1493bd7e2ae45e0717541104`  
		Last Modified: Wed, 27 Jun 2018 14:11:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364768a32c4c7bb2424148af1ed464f2bc83fbd9c68aae5bc41788f6114c1b72`  
		Last Modified: Wed, 27 Jun 2018 14:11:00 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e90042f9d1353387a590bd4886509186121ff85eb4709ba499e81690bd92158`  
		Last Modified: Wed, 27 Jun 2018 14:15:38 GMT  
		Size: 48.5 MB (48491633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2989aeac6e4133cd3ca2a9fb6eff020ee515b3f9e8ef2afb05fc374005232b0f`  
		Last Modified: Wed, 27 Jun 2018 14:15:00 GMT  
		Size: 272.1 KB (272062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:bdc5dab119adc5a0dd138ea184cf807555c6c61b76cbee35d506e8399db1b725
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70780575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3e77caef4c74623dec868b5e4f7ea640518770d8b36ec0cefa0dacfe832187`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:56:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:56:49 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:56:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:56:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:58:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:58:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:58:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:58:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:58:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:58:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98864f72d2f50de28cbc4c21989e206ade45beee445470d5998e020e706a28b8`  
		Last Modified: Wed, 27 Jun 2018 14:06:32 GMT  
		Size: 465.7 KB (465712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80055cec33c71631fdda816b6a3a1287ebde60cf763f4769406656a2b09f85fd`  
		Last Modified: Wed, 27 Jun 2018 14:06:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98774c95b6812a87cdf99c9c16d8b0f3dcf5cb9337e8659fb4d3d3ae8db7bc2e`  
		Last Modified: Wed, 27 Jun 2018 14:06:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13210122de3c0c93aac8ae55267034350324fa078bc7f0ad4f9ceb4a9b568b02`  
		Last Modified: Wed, 27 Jun 2018 14:08:27 GMT  
		Size: 47.7 MB (47692447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732f2a352a747acf949ae645ea9c6b4dbdf65bf912b0425ef40c9714138838c9`  
		Last Modified: Wed, 27 Jun 2018 14:08:19 GMT  
		Size: 272.2 KB (272165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
