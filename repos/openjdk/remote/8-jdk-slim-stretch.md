## `openjdk:8-jdk-slim-stretch`

```console
$ docker pull openjdk@sha256:0aff86a8b0a78d3f89704650a498ab9e0a84c16664685c03b665db38a2717364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:8-jdk-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:a8349f47d28eeb4f2d6a78709e513bb8a649ebf3871ff047c05aa9bf5a6cc873
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90748955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5743387a814e170c3f62afd4b92e623f22fb619e4f00460a32865754d0319d6c`
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
# Tue, 03 Jul 2018 00:00:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 00:00:40 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:00:41 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 03 Jul 2018 00:00:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 03 Jul 2018 00:01:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 00:01:02 GMT
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
	-	`sha256:50086b9d778eae8f79a543fa6a1539e1daddeee3fe8ba3cd69099adf0a7acc16`  
		Last Modified: Tue, 03 Jul 2018 00:36:11 GMT  
		Size: 67.5 MB (67524665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1682a461b22427e1831c97335df7139f44bf65a88871bb778c3ba322f5e14e32`  
		Last Modified: Tue, 03 Jul 2018 00:35:59 GMT  
		Size: 272.1 KB (272089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-slim-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:8fc37924c87a0a28087da75f1b5569b37ee555682491305c3f9d8e4e34f14cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77780968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b737acb9ed4374c7c2443b50929a5eaba1a7e15f77ff0e58f9ec4c123ea02dc9`
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
# Wed, 27 Jun 2018 12:34:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:34:42 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:34:42 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:34:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:35:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:35:25 GMT
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
	-	`sha256:536b85fa77bd51e78d353a1b22166cd885cd5356b662ede7b013cdd78cff4cae`  
		Last Modified: Wed, 27 Jun 2018 12:55:11 GMT  
		Size: 55.9 MB (55883446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51d37d502da4395dc2424e2e19032ad2bb3a9bb0ce6608bb273c008cb23a42d`  
		Last Modified: Wed, 27 Jun 2018 12:54:57 GMT  
		Size: 272.2 KB (272181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:34008df2be50c6a2ed7975ca1fd68fcf7e307fef1c1f28281a1b449c6edc85ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78361049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01788c3caa7603a866fc47a4ee631c71b93b9fccd8a908f77cb50fc06447abb`
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
# Wed, 27 Jun 2018 10:35:33 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 10:35:35 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 10:35:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 10:35:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 10:38:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 10:38:14 GMT
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
	-	`sha256:455eea5a7e0c966f4cafb06633035c58e6af97f6d86d4c0063da25cb88b73104`  
		Last Modified: Wed, 27 Jun 2018 10:50:29 GMT  
		Size: 57.3 MB (57299655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb837725e7ff66a676b4e84649f5fa7c41168b2a12fbf9653814db3fb834e50`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:52f8f07bf85495419acd83af1ec41855ee36b195695d52378a297e4e1760babb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90544753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fc8b45c9e66aa087d0bc5710fcf4d4044d62655dd35d015e41cb4754040baa`
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
# Wed, 27 Jun 2018 15:14:36 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 15:14:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 15:14:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 15:14:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 15:15:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 15:15:14 GMT
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
	-	`sha256:fe627502cbc110f7c39d30a175e8833374c5eaf5790bdc876b6a3bc1ab8e054b`  
		Last Modified: Wed, 27 Jun 2018 15:28:50 GMT  
		Size: 66.7 MB (66668662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91d42a5d03a30989334eaa07714342d4b4f126ca27f92f62a1815a058a71a29`  
		Last Modified: Wed, 27 Jun 2018 15:28:29 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:b21d5fca926506b17bf7b1a11391fde493faac936d27a58a3d57fb6dcb9b08ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81295778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3474feea2a5ffad5131b3f57023bdaba0fb4b5f7d06537174441640a45e245`
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
# Wed, 27 Jun 2018 13:44:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:44:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:44:59 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:45:00 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:46:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:46:52 GMT
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
	-	`sha256:8e0d12b256675e139c63abc1242872cf22ee0eb82e5c2cac2e2853dfb8e4389a`  
		Last Modified: Wed, 27 Jun 2018 14:11:23 GMT  
		Size: 57.8 MB (57820486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2958651e29c2fbdb14d8df74922629dc84147ab1e52aea3f6c506233ee6380`  
		Last Modified: Wed, 27 Jun 2018 14:11:00 GMT  
		Size: 272.1 KB (272075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:7ad4e4b715bd9f21da87cd88f6d9d63b271c0711d06252b8ddce61248ce88102
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80066662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df3624798dcf00c32c712477ea8d3c63626f9822eaf8f906552770f8e7deb18`
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
# Wed, 27 Jun 2018 13:56:50 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:56:50 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:56:51 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:56:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:57:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:57:19 GMT
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
	-	`sha256:5275da8820f1c0886960508213dff0c972b4b47fa3f0cf6913fff71263e71210`  
		Last Modified: Wed, 27 Jun 2018 14:06:41 GMT  
		Size: 57.0 MB (56978537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168d95102f02ea122c7368761d0675d79ac11e9923cbcb65f7a80f910e00ecba`  
		Last Modified: Wed, 27 Jun 2018 14:06:32 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
