## `gradle:jre10-slim`

```console
$ docker pull gradle@sha256:05e32fd4b0299398e602a6b178fc0c27c11d03296cad0a50a0f36da611d7f0f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `gradle:jre10-slim` - linux; amd64

```console
$ docker pull gradle@sha256:fcdac454882aedd3635dfa36fb38983fdf5254b4b3d36b3adbdb43dc5143c29d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.9 MB (179872296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb7988221213eb0047423daac9ce95352c74f40a4bf0ab3ef82339b70311c0e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 00:25:12 GMT
ADD file:f91110c5482cb29a759356df06fea755606755e05306ca55f921f44a5b9470fb in / 
# Tue, 17 Jul 2018 00:25:12 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:09:54 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:09:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:14:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:14:14 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:14:15 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 06:14:15 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 06:16:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:36:25 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:36:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 23:33:28 GMT
ENV GRADLE_VERSION=4.9
# Tue, 17 Jul 2018 23:33:34 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:33:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Tue, 17 Jul 2018 23:33:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 23:33:50 GMT
USER [gradle]
# Tue, 17 Jul 2018 23:33:51 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 23:33:51 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 23:33:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:21c77be511c9830e11f7da7f8796340d6103e5b1e4124bb1639947aa0f11c19e`  
		Last Modified: Tue, 17 Jul 2018 00:40:27 GMT  
		Size: 26.2 MB (26153708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a9bc4c131a474462e235e575844d60055d3904745b1cd7e9bcb0bbd1ed82b7`  
		Last Modified: Tue, 17 Jul 2018 06:33:28 GMT  
		Size: 460.1 KB (460144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85403034af41f2da36b479c531eb04f843b0af4715e65ee84a91e1fbb5f1bf9`  
		Last Modified: Tue, 17 Jul 2018 06:33:27 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aab55a95cbe8505bad8207b291a71574247d047b00b7b0256d27cd342623b79`  
		Last Modified: Tue, 17 Jul 2018 06:45:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570df493dd5bf1f6cdaad88b8d4ea747194100b23e1901d470f00cdc58ed5b07`  
		Last Modified: Tue, 17 Jul 2018 06:53:03 GMT  
		Size: 76.4 MB (76354303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333fd91d8aed9e28a7f35cd041934926b30c37bba16957b87ab88d0800935d26`  
		Last Modified: Tue, 17 Jul 2018 23:57:19 GMT  
		Size: 581.2 KB (581156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3f96016fe9a48d03420be523b680b70d7717cda890b760106ef3afc2ed83c6`  
		Last Modified: Tue, 17 Jul 2018 23:57:31 GMT  
		Size: 76.3 MB (76322478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b80bf761064f48b1143214e2a74153c8ca24ff69f0ab14b48a9b39b2f5337`  
		Last Modified: Tue, 17 Jul 2018 23:57:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:80db2d1939091ecc7406edcd2170a8058e4833f6e71a8c76a6828f9d937f5a4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165483965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b785b5fef25a9ebfe55775a65455ea9a41a641bdf03c2a5b8cb644f34c1ccbac`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:44:27 GMT
ADD file:7441783fb02cfd0ec33462b944c21331e3ad1da6f38a9c835f677cb88c6dd7ec in / 
# Tue, 17 Jul 2018 08:44:33 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:56:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:56:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:57:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 10:06:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 10:06:39 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 10:06:39 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 10:06:40 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 21:34:42 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 21:34:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Jul 2018 07:39:07 GMT
ENV GRADLE_VERSION=4.9
# Wed, 18 Jul 2018 07:39:20 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 07:39:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 18 Jul 2018 07:39:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 18 Jul 2018 07:39:35 GMT
USER [gradle]
# Wed, 18 Jul 2018 07:39:36 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Jul 2018 07:39:37 GMT
WORKDIR /home/gradle
# Wed, 18 Jul 2018 07:39:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:458ba916572f94d66f19aa3ff0115bc9864ed4d91c67787dcfcbb4b00bfbdb97`  
		Last Modified: Tue, 17 Jul 2018 08:53:47 GMT  
		Size: 23.5 MB (23468736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e2b81cd49e56ea3c4cae916184f441c675aa527aa693a54010d266d76746f7`  
		Last Modified: Tue, 17 Jul 2018 10:23:50 GMT  
		Size: 445.0 KB (445018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a478f77447653d89e7bb16b1270e51445b598b0c48ed8f7046fcc124bae1ae83`  
		Last Modified: Tue, 17 Jul 2018 10:23:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01739fd7fc001c331d8e1198f0fbba5b85522f69feaf74321f78180073301d`  
		Last Modified: Tue, 17 Jul 2018 10:31:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c460314301d3de965bafb25508cbcfd231ec0fa68863eef71ddfc8a32b866b5`  
		Last Modified: Tue, 17 Jul 2018 10:35:45 GMT  
		Size: 64.7 MB (64683933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee6e0f842528279acbab91e550b4a75bf3d9dfd34189622b8d3ce4c245fc031`  
		Last Modified: Wed, 18 Jul 2018 08:06:13 GMT  
		Size: 563.2 KB (563203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1978818f1589de175a33b779102f66473746dafeab89ce6e0dba1b521022d06`  
		Last Modified: Wed, 18 Jul 2018 08:06:25 GMT  
		Size: 76.3 MB (76322499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6c34f59f085a05f617defd09f55ed377d5d47e90a958cd24079bdea3dd110e`  
		Last Modified: Wed, 18 Jul 2018 08:06:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10-slim` - linux; 386

```console
$ docker pull gradle@sha256:382b5ed5caba72cb11609ddd6fe80257573ff23dab59f8adae6a18c0d63f7705
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185137850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a30b02f72ff309e7448b0ae9c3ed720b788ec9e6c6d5c0dd9ee93ff914ac5d4`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 10:47:10 GMT
ADD file:20144dcfd227e7e2fd2fa000865bff7a8586b26f763501c4602235f1d4f04119 in / 
# Tue, 17 Jul 2018 10:47:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:22:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:22:06 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:22:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 11:25:32 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 11:25:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 11:25:33 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 11:25:33 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 11:27:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 19:27:14 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 19:27:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Jul 2018 00:58:08 GMT
ENV GRADLE_VERSION=4.9
# Wed, 18 Jul 2018 00:58:16 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 00:58:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 18 Jul 2018 00:58:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 18 Jul 2018 00:58:29 GMT
USER [gradle]
# Wed, 18 Jul 2018 00:58:30 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Jul 2018 00:58:30 GMT
WORKDIR /home/gradle
# Wed, 18 Jul 2018 00:58:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:5dfc5302b4bfc84b249f67f2e7094fdf4be54645eb3b6ce014c0c7ecca1e6df4`  
		Last Modified: Tue, 17 Jul 2018 11:04:29 GMT  
		Size: 26.8 MB (26847422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2f3a405923c070ef2fc1a30ce2d9036eee908d3d315c21569898eb8390c12e`  
		Last Modified: Tue, 17 Jul 2018 11:40:12 GMT  
		Size: 468.8 KB (468803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d96811d096ea29f146e1f9e59c6100f66189bee526673d4cc256ae946095fe`  
		Last Modified: Tue, 17 Jul 2018 11:40:12 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c87cc8b7a196c1115781e18b928f3a64611eb3b77eff6bd62a2084d3cc5a61`  
		Last Modified: Tue, 17 Jul 2018 11:49:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013dda71481cb9e98f785f6268b5d9635376777426f0362bfe5be27561ada873`  
		Last Modified: Tue, 17 Jul 2018 11:55:10 GMT  
		Size: 80.9 MB (80900384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca780576a2269d12b2b9fa4612a28ce3149a8780a9ce71bcfac35c6983e50f`  
		Last Modified: Wed, 18 Jul 2018 01:26:23 GMT  
		Size: 598.3 KB (598259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f22d45dca7bbc40ad2d547dcbbda1f116ad9005553f8920442e01cdd14698c`  
		Last Modified: Wed, 18 Jul 2018 01:26:32 GMT  
		Size: 76.3 MB (76322475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2467f46428b6fb2d25987ea7eff477f341958217b299542c62f6fb55cc0c4ca1`  
		Last Modified: Wed, 18 Jul 2018 01:26:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:2b9452494533294efcd9c58041089c7b37f097b746ecc711654b6cffa530e4aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.7 MB (170720575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cea5f0d20049874c436ee904826a88f2603742b5af4d081f6cd3d4aa9540a65`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:51 GMT
ADD file:2854a5536a6cd3d364473dbde290890875599447fe57e02214642a7ea4c4199a in / 
# Tue, 17 Jul 2018 08:18:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:49:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:49:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:05:40 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:05:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 09:05:45 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 09:05:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 09:15:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:21:58 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 18:22:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Jul 2018 01:05:07 GMT
ENV GRADLE_VERSION=4.9
# Wed, 18 Jul 2018 01:05:16 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 01:05:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 18 Jul 2018 01:05:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 18 Jul 2018 01:05:23 GMT
USER [gradle]
# Wed, 18 Jul 2018 01:05:24 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Jul 2018 01:05:24 GMT
WORKDIR /home/gradle
# Wed, 18 Jul 2018 01:05:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c0079deb5131e41ff48e218a11dc6d4aaf2ee6f48d4674431d4da149f01bd944`  
		Last Modified: Tue, 17 Jul 2018 08:24:11 GMT  
		Size: 27.4 MB (27423639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf7a34d4ae23534bc74ed18c6c3b2d4528589acd4a6c4ed1172442e070315e5`  
		Last Modified: Tue, 17 Jul 2018 09:43:03 GMT  
		Size: 454.8 KB (454843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2189ec7f1e039011f776c44f0becd3e5065e0a06e25dca83d56e0698d7c16fdc`  
		Last Modified: Tue, 17 Jul 2018 09:43:02 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb42b4f85888ec77389f7da02b093a0b3c84dec414a590fd40f586afaf4ff`  
		Last Modified: Tue, 17 Jul 2018 09:51:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606d5fdf5e4b3eb78bbad9561277649c343eb5731e2446f39427147130195c0c`  
		Last Modified: Tue, 17 Jul 2018 09:56:36 GMT  
		Size: 65.9 MB (65920797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce7401e8452d7f9fb64ea1a35da0b370886d4d446174ea05bdee1cac767c444`  
		Last Modified: Wed, 18 Jul 2018 01:17:57 GMT  
		Size: 598.1 KB (598064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15e3efd8c1cb3691881c89c317bce3f5c2eced6666c4e1c7ff05679142edb30`  
		Last Modified: Wed, 18 Jul 2018 01:18:09 GMT  
		Size: 76.3 MB (76322626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930cf19fe82f222071f75cc35a80919deca951ff6d2a807bb88f3aa3ed3ee6e2`  
		Last Modified: Wed, 18 Jul 2018 01:17:57 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
