## `openjdk:slim`

```console
$ docker pull openjdk@sha256:7b5d378c49a0b088585edac9ee88dcbf4ba9adab48e924a461bc08dffcd5aac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:slim` - linux; amd64

```console
$ docker pull openjdk@sha256:e35424081cd038d1a8645ffcc724bb759daa2bb72b07bf618cade43197a848c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90749553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb6789fd0c2a7271f79093ef90630e5d1172c26ac638a47b77f4e02ab78dd44`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:29:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:29:08 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:29:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:29:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:29:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:29:10 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:29:10 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:29:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:29:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:29:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70619f8ac7d8d30832d1ec95e08fb6d5d17d1d86d39dd8f018764e63c3f588`  
		Last Modified: Tue, 26 Jun 2018 23:50:42 GMT  
		Size: 454.8 KB (454842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959035743ee62348be1a940c042038c0304d1652d7c4d807fe7e6df899b700e0`  
		Last Modified: Tue, 26 Jun 2018 23:50:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db98f43f72929d9b60fa58b30adfefc8ddb6fc691e06283e0b9ba0769c72d17`  
		Last Modified: Tue, 26 Jun 2018 23:50:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0125f8b7b45a03041467fdc09b27aa97290854cacbbbeca69d7cb4f5effc094b`  
		Last Modified: Tue, 26 Jun 2018 23:51:01 GMT  
		Size: 67.5 MB (67525241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b101251de801db62634849463a4f26977353b45fca225a7e590662a476eba7fb`  
		Last Modified: Tue, 26 Jun 2018 23:50:41 GMT  
		Size: 272.1 KB (272117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:slim` - linux; arm variant v5

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

### `openjdk:slim` - linux; arm64 variant v8

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

### `openjdk:slim` - linux; 386

```console
$ docker pull openjdk@sha256:c0f7a7c8049267254622b1486b8695e0bd8cc6825f732ca1f11b26f9d6df65c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90543418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3bbd87bc965f9ca701d0f715a0b3c27a51cb347b929b47a7bcfe25ce8a2b1f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Thu, 31 May 2018 06:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 06:01:53 GMT
ENV LANG=C.UTF-8
# Thu, 31 May 2018 06:01:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 May 2018 06:01:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 31 May 2018 06:04:05 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 06:04:05 GMT
ENV JAVA_VERSION=8u171
# Thu, 31 May 2018 06:04:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Thu, 31 May 2018 06:04:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 31 May 2018 06:04:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 06:04:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b454a28067110bf421699f878a0aae15d8ce26c443b4c1a8e0f3af04aafd21`  
		Last Modified: Thu, 31 May 2018 06:40:22 GMT  
		Size: 463.5 KB (463489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b99a754209b8eeff120bad47d735c30883fe13221341d29571db09ecf50d2c7`  
		Last Modified: Thu, 31 May 2018 06:40:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e46b4733cab8906e21512f53a48ff56245cb1b49e1faf71d19c64483631019`  
		Last Modified: Thu, 31 May 2018 06:40:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be86e6cd1143ef6b72ded0088f962555a00c1019c049b945e202969ceef0ff9c`  
		Last Modified: Thu, 31 May 2018 06:43:40 GMT  
		Size: 66.7 MB (66668934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278a48626add25381f2055113d5b6a677ce0c93834326666d16f50980e57be9`  
		Last Modified: Thu, 31 May 2018 06:43:17 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:slim` - linux; ppc64le

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

### `openjdk:slim` - linux; s390x

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
