## `openjdk:7-jre-jessie`

```console
$ docker pull openjdk@sha256:3b82a33053116c87cc164d35202ce1adae94cef9b3123970424f4dec70f01c93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `openjdk:7-jre-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:f9d3eefc593539bda3312354a20d5a715ea49377c898fd62b6c5f1c28d7d735d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.9 MB (154926378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d1f2f9e8335b552b9454c43094b5d1da00f699330d747a41f339daf2a46088b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:07:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:07:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:48:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:48:03 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:48:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:48:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:48:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 00:32:40 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 00:32:40 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 00:33:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2f329349632fac6046432536420d15d630b68e7c536dcb28714fadb45a8a14`  
		Last Modified: Tue, 05 Jun 2018 23:37:57 GMT  
		Size: 17.6 MB (17584925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddbd23379289c18b84482ad4cd36dd37132ec2524e3ab15cb8e55e520d35694`  
		Last Modified: Wed, 06 Jun 2018 19:08:29 GMT  
		Size: 795.4 KB (795368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9362ba1f9a4f2d5e05b7070ee3e48fbec0bd1266ca08bd8e0ad185c808ecbe`  
		Last Modified: Wed, 06 Jun 2018 19:08:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaf25a6c03a762fb7b02c56530d212d94b7a9fb7576cbd52bd849b0f6bce1da`  
		Last Modified: Wed, 06 Jun 2018 19:08:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff401ba50bfd66cdca5b6fceeff8a0f49d1d022202d6ffac51164f4eea6ca431`  
		Last Modified: Tue, 12 Jun 2018 00:49:16 GMT  
		Size: 82.3 MB (82283141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:43eb8e55d307ffafe518164c06d1d041b34afc577942ea5b2e46832ec55c75e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142291367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac3c29b0233960f2e7d60ae2633a8bbc68aafb07f202bea9e393375118f30d3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:53:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:35:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:35:58 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:35:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:35:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:36:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 09:03:17 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:03:17 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:04:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceea42ca1c50a28c4602df4c2da5d4a49162eeeb7bd7c9b9bd9593f4ae0ccbc8`  
		Last Modified: Sat, 05 May 2018 09:09:51 GMT  
		Size: 17.1 MB (17084448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a66ea1754bee5106ca283a42342ae8d4c979c243c5d3bf3479ff0f70da2811`  
		Last Modified: Sat, 05 May 2018 10:02:46 GMT  
		Size: 788.1 KB (788105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d6c139fa427247de53422a1b0aeb2e8c054026f113523a3d78dd75783f262c`  
		Last Modified: Sat, 05 May 2018 10:02:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984619550ec48c1ca7f0056e409f5a55748b9bfd97f81b838e26c1958ab14ff2`  
		Last Modified: Sat, 05 May 2018 10:02:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03bcd8dbbfc64a07fd3c95a3823e9a5d53f18ee85f572ea4dadf4ed8c91d654`  
		Last Modified: Tue, 12 Jun 2018 09:12:26 GMT  
		Size: 72.0 MB (71962399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:592e0517969bb620a974dbc0a76e15401ef2938a95331c86cee3cd1fb7eac2fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142287152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dff28a202701aed7c195da0a3f5dd8be524e2dc8c81e75b846dcc891e3aba44`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:23:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:23:13 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:23:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:23:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:23:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 09:27:47 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:27:48 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:33:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5a7eee17f6bef9ce5302547df05502e21dcac9b6267c7278c219ee2c708b37`  
		Last Modified: Sat, 05 May 2018 13:08:41 GMT  
		Size: 789.2 KB (789162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ce7463a7e9eae4cc97131c58d9692029eef5b8f004c62ed65742a00c70773e`  
		Last Modified: Sat, 05 May 2018 13:08:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882b9550551affc5f6b6d20713252201f4d2633d8be9a4763e11fcb60f99f1a`  
		Last Modified: Sat, 05 May 2018 13:08:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cca9fb180900266ac32872326adbd48d14c1186f2b2571fdfc703a65cd865a`  
		Last Modified: Tue, 12 Jun 2018 09:48:52 GMT  
		Size: 72.8 MB (72836916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:39c6e0bd631172316f0e58ef9ed0f67ecd92a7ebdb3d6ea9a1271db55fca4f49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167294170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbf4aa9e72b953d8b8fb0a7fe40b8dde6b9572cfd584172b3671f9bb7c6a904b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:33:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:30:21 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:30:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:30:23 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:30:23 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 10:56:23 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 10:56:23 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 10:58:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea56a1d0660db2d98662e1123cf4c76981e83fc15a761aae4015085b0d051d7`  
		Last Modified: Wed, 06 Jun 2018 12:12:39 GMT  
		Size: 19.9 MB (19880810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c0d3a4f85b5fd090d0d6affff15606440e71d0811c9d82376bb748f9530022`  
		Last Modified: Wed, 06 Jun 2018 13:58:20 GMT  
		Size: 798.3 KB (798332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e79ab5eaced1035c504dd89f71a511f3e53c293ee01c17c2e394d3fd0e6f2`  
		Last Modified: Wed, 06 Jun 2018 13:58:19 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d633cbaedd8e78bac9e9c2c0a64056decfe8f3d373a0dc3b113f4db52ab7e4`  
		Last Modified: Wed, 06 Jun 2018 13:58:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb2fbbba6b50ba5cf4fcc5b04eda5f3fabef28e498e1cf699b00d6616de69f8`  
		Last Modified: Tue, 12 Jun 2018 11:14:09 GMT  
		Size: 92.1 MB (92127867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:33937e99f8f9349f300bbe4c188312b9d0eade0f967d069de25a0535c21b0650
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145718843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8460819769174b92b79cedad0ea4f0af4fd3bcf6758e5f9f014685e5e5807115`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:58:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 14:40:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:40:50 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:40:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:40:54 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:40:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 08:54:35 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 08:54:38 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:00:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4330bc6a5e0bcfbe95c4a5b5982f6866f41b6cdc2d95042061dac233ebb605c`  
		Last Modified: Sat, 05 May 2018 10:53:05 GMT  
		Size: 17.6 MB (17586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62808c556cbd0edb13c1bdc0672028bc333139d66cdd2f508eb98becf5d5ecd4`  
		Last Modified: Sat, 05 May 2018 15:17:37 GMT  
		Size: 791.0 KB (790978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bd439f7dc98417f8b4e0b334b6a8f3e349b1c8bd81c4af83e0344ee9f9bd0e`  
		Last Modified: Sat, 05 May 2018 15:17:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802e363d6798794314c4626d0bf023452db3024b735b510b634d6d21866d6eda`  
		Last Modified: Sat, 05 May 2018 15:17:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d4683fa5e55a3169ffd52657f1ee2158e7c4eb6143833439074d9ae4cd59f`  
		Last Modified: Tue, 12 Jun 2018 09:15:01 GMT  
		Size: 73.9 MB (73947674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
