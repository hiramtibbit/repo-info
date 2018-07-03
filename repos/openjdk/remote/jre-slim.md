## `openjdk:jre-slim`

```console
$ docker pull openjdk@sha256:051430a9bbda7bd5ed42435dbb63a8025c42a0127c0b8deef2155cc08ebdc26b
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
$ docker pull openjdk@sha256:3aea936b5eddb3a8d20e15192b01d73e75fd9bbc101b7394b38e712aabd98a40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79074932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac84696721cbd2774aafc4ce25cb4b821e3a3313ade834712eb99ef696a0ffcb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 03 Jul 2018 00:00:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 00:00:38 GMT
ENV LANG=C.UTF-8
# Tue, 03 Jul 2018 00:00:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 03 Jul 2018 00:00:40 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 03 Jul 2018 00:02:16 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 03 Jul 2018 00:02:16 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:02:16 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 03 Jul 2018 00:02:17 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 03 Jul 2018 00:02:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 00:02:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d0a4456c6166c7e4ff8efa3b6b95e1a5e07e3d0dec556b733df0f770fef9d1`  
		Last Modified: Tue, 03 Jul 2018 00:36:00 GMT  
		Size: 454.8 KB (454848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3219f68c534ec98dffc52fda4eafef79a3c1c327946513a19fffc3da2a0ea5`  
		Last Modified: Tue, 03 Jul 2018 00:35:59 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e384a78aaa151af7ad8d382b5703d1fee9ce9f18c21b7441738913361dc4c76`  
		Last Modified: Tue, 03 Jul 2018 00:35:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaee34585eb83bbf156e4862210de2ed92b60e621753429ce0f06be3ea5f642`  
		Last Modified: Tue, 03 Jul 2018 00:42:39 GMT  
		Size: 55.9 MB (55850609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550f94f7a2a82984a7b1e4577806adfb81aedbfb868f2f54a7c9ea3eb27a5b5c`  
		Last Modified: Tue, 03 Jul 2018 00:42:28 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:3e7801e16f2477b08004c5b67bb6a35ee05559e65c7b84d5c02f30ab6adf5aec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68479689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33e36f5f8b8a2ecff404edf9c1182f3cc799e8e2fb6e241dc7c3fd957c1c165`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:34:37 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:34:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:34:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:37:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:37:10 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:37:10 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:37:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:37:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:37:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4041ca0a9d46e8ca473e39b754f0d76337a052965077e0bb6147633cfd7e4`  
		Last Modified: Wed, 27 Jun 2018 12:54:57 GMT  
		Size: 447.7 KB (447673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ba81e6d9e9058eabc6f1b3f7ae63406495ca484a6a084b13b9f7f92c0f59f1`  
		Last Modified: Wed, 27 Jun 2018 12:54:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f529b2393d747300b9e77063ee6a43f089f359d4b2bb0fce086f582fa3717c8`  
		Last Modified: Wed, 27 Jun 2018 12:54:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2cf162539cb8deeff09fef732c5e61ea3c0ca64e11c24b36ce545c5f687fca`  
		Last Modified: Wed, 27 Jun 2018 12:57:41 GMT  
		Size: 46.6 MB (46582168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee67ec23e1469fa8f4db3d3bf47ebd6b614c1afc23036c38edd83c4fff64c4d`  
		Last Modified: Wed, 27 Jun 2018 12:57:29 GMT  
		Size: 272.2 KB (272180 bytes)  
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
