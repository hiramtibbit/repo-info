## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:7a6d16da619d980150afb0070f15f16cc4b4050eb6b1eca53f49488f436d8e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:bdbc2850d01c5c0e7cf37d4985116bc2d46733a85713cb0a552cd4c6587a684d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154608824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062bdcc89dcbc30057a308c8ff5a22fc309040176d9263c4ac57d4f7827080ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:30:19 GMT
ADD file:47970bdb20c0c84f9d64aeb394f690c79bfceefd0331c1fc4041af1de0d5bcb1 in / 
# Wed, 08 May 2019 00:30:19 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:31:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 05:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:20:32 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:20:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:20:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:20:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:20:34 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 05:20:34 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 05:22:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:db0035920883a73fe23c2f4c2c361e2508a9f8b9b410080817800c1f906323b7`  
		Last Modified: Wed, 08 May 2019 00:36:03 GMT  
		Size: 54.4 MB (54385705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ebd83b4a4725c8e5e54f2aa7d3ee259492cbb89de0a4315c3533b84b32d3ee`  
		Last Modified: Wed, 08 May 2019 01:43:57 GMT  
		Size: 17.5 MB (17541651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ef9e65a664c31717d28b5860445405dc277057ca1a1e3aabdde053669bc4f0`  
		Last Modified: Wed, 08 May 2019 05:31:34 GMT  
		Size: 795.2 KB (795180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2786dccb0cc0174c18ba7cea8cb9e3ad67a9c6967590c1b2aa93a9947a1707b`  
		Last Modified: Wed, 08 May 2019 05:31:34 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b809e89f352cb980641786f9fed5c83af31c74caeca25ed068677fe9149d9c6`  
		Last Modified: Wed, 08 May 2019 05:31:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e9aefc2bf740c48f120043ec92fe21954194b1688a49d690b0485193294612`  
		Last Modified: Wed, 08 May 2019 05:31:53 GMT  
		Size: 81.9 MB (81885912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:4dbca7732cc1c727df6380b807d2acc2acd030246e02858e0d145dbbd9567ee5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141944350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30194a248b7b8131508ed77605420af553cde99988abea5084c865038d54ea21`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:50:00 GMT
ADD file:997d555f96b00623491142f0b815ef37769d2f880a8b40c0fff320960771453d in / 
# Wed, 08 May 2019 08:50:02 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:53:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:44:22 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:44:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:44:24 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:44:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 11:44:25 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 11:44:25 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 11:46:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6d0312bf9f8207dd961236544595b270fcfea05ff71dac15ac7c00f5e0427a7d`  
		Last Modified: Wed, 08 May 2019 08:56:45 GMT  
		Size: 52.6 MB (52575055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c5b66973862969fdf9e67a84145501ba3d04f73b4611e6d46d7728d5e9e606`  
		Last Modified: Wed, 08 May 2019 10:06:51 GMT  
		Size: 17.0 MB (17032492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46949af4d7aece585f16cab14d12372f3e0662e72a742aba443eb280ad4c6f18`  
		Last Modified: Wed, 08 May 2019 11:54:45 GMT  
		Size: 788.0 KB (788004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dddb6c9472653686b94536761170e18c98acde6abc6f88de1a66b36b5e1c2b`  
		Last Modified: Wed, 08 May 2019 11:54:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d958aa9801ad5afe27a102c2f1e1b46d7d1452f441dd41ee9382927fe52c0a`  
		Last Modified: Wed, 08 May 2019 11:54:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2831e1ed2e48367b0602bd144b9f22258c294b969799bcd2ef8c311fe6aa82c6`  
		Last Modified: Wed, 08 May 2019 11:55:00 GMT  
		Size: 71.5 MB (71548422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:545aa0afce3daffb14089f1302dee059d0fa7d2896a807db0de9ea4c076377e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137868368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f41238d9898011dc74ed56450ccdbdb38561034eb6b18c2c4f092625741349`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:59:37 GMT
ADD file:8608ce29a1acb528a48ba5eb2c83088709ec606374a9247e14b143e6893abb4e in / 
# Wed, 08 May 2019 11:59:38 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:56:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:24:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:24:13 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:24:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:24:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:24:20 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:24:21 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 14:24:22 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 14:26:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:15cfb32571a95dcaa3a8408897c92bd923327a52abf09ce9c125ed6b5e9257ef`  
		Last Modified: Wed, 08 May 2019 12:07:22 GMT  
		Size: 50.3 MB (50297181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284ec6226ea641062369562b37a4579db6937f39a7a9f2141e2aee7b588399c8`  
		Last Modified: Wed, 08 May 2019 13:09:39 GMT  
		Size: 16.7 MB (16718239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017beffb8b23665d3f1bfdcb56a278510037d249ac21c0a493a6da43357db7c7`  
		Last Modified: Wed, 08 May 2019 14:35:44 GMT  
		Size: 762.5 KB (762533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74637465dc72fdd6abbdbe209e7f14282b804bd972b94fe8c5193a26a70851b6`  
		Last Modified: Wed, 08 May 2019 14:35:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03aaffeaa1278167851170a5e71b1b27817427d4b7521998d3b895d92e29033e`  
		Last Modified: Wed, 08 May 2019 14:35:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6b0a7b948269e7aa3987eb352b7d1476356f3727b3c6acf2e41fba810a6e31`  
		Last Modified: Wed, 08 May 2019 14:35:59 GMT  
		Size: 70.1 MB (70090038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre` - linux; 386

```console
$ docker pull openjdk@sha256:4c37d5a1a7159d99a2fe84c0e6d4efd26eba30f2408cd29a7b15daa8ac93f57e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (166997089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304c732fe3b3190c294d659992b3d293cccb30dfa15961d0ec9947d06476c654`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:42:11 GMT
ADD file:383a4648827e4920fc38f6ee93e3a1b0198694530961012a3ac4ff2b60d469f0 in / 
# Wed, 08 May 2019 10:42:12 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:57:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 22:35:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:35:07 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 22:35:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 22:35:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 22:35:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 22:35:10 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 22:35:10 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 22:39:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6b6ce677eea2e67f795221107c4a01e07d07480fa9706aa20331a88f2a6f8617`  
		Last Modified: Wed, 08 May 2019 10:54:05 GMT  
		Size: 54.6 MB (54605091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f48be8120c22e9a5375fa05aea15ce2e87362772a9df12046625d8fcaba344`  
		Last Modified: Wed, 08 May 2019 19:12:01 GMT  
		Size: 19.8 MB (19849905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a8e2c6eb765550667da189d586c3b73d307abeeea430d6d5c95f55d65c9056`  
		Last Modified: Wed, 08 May 2019 22:54:56 GMT  
		Size: 798.2 KB (798171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861335b3e62345784c37710932c592a66747027b4ad36cba37649d6dd5894e79`  
		Last Modified: Wed, 08 May 2019 22:54:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8cd31e512b600c9e451dd70c35aa35ac41226a2b3b6b7bb8a381d4e8e564e`  
		Last Modified: Wed, 08 May 2019 22:54:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454f5e8f66468101f115e0bf0a8b6864b9cd98c9d9c32eb1d324cbc5ca88e691`  
		Last Modified: Wed, 08 May 2019 22:55:26 GMT  
		Size: 91.7 MB (91743543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
