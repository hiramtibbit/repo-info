## `gradle:jdk10-slim`

```console
$ docker pull gradle@sha256:275bbeb59be77e9181aa60a9a369c5bdbbb33c4622b960d3e34873cff6611d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jdk10-slim` - linux; amd64

```console
$ docker pull gradle@sha256:1e2f0fef17bb5366d863fc2174d54e5b95d221f4d0edd2a99e47c57196952a44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379533170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a93f4f1b310ed8e02a8ff6df9977c70112310759af6013535e1aab28350d805`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:58 GMT
ADD file:a391d9232725a03d7b21f24be4d387c1d11f905c3ba448c0a3793745ca8cc6f3 in / 
# Tue, 04 Sep 2018 21:20:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:15:51 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:15:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:19:52 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 15:09:24 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 15:09:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Sep 2018 17:23:57 GMT
ENV GRADLE_VERSION=4.10.1
# Thu, 13 Sep 2018 17:24:03 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Sep 2018 17:24:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Thu, 13 Sep 2018 17:24:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 13 Sep 2018 17:24:06 GMT
USER [gradle]
# Thu, 13 Sep 2018 17:24:07 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Sep 2018 17:24:07 GMT
WORKDIR /home/gradle
# Thu, 13 Sep 2018 17:24:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:a7e1658cb0533dfcb5baa38a0ce3230fd3aea217be1a52d0b46f5521b305d608`  
		Last Modified: Tue, 04 Sep 2018 21:24:51 GMT  
		Size: 26.3 MB (26269506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d7fab3f2f9f524ee8ab66d9bf80ff7ce89278ff495a4c665481d069832089`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 460.8 KB (460788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7705f8b8f1de989ae8e63828bc91553d1aa32563ed57bd05b21828c0ef89920`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2baa561332e300334fa017ef5b45151657527137d6c5d1996d8e8b7fa714bbba`  
		Last Modified: Wed, 05 Sep 2018 01:36:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4c901852afa436a0d3eb0e94858582b1dda5691a1a5f2828376aa5c7a7e20`  
		Last Modified: Wed, 05 Sep 2018 01:37:09 GMT  
		Size: 273.8 MB (273787323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82f73b2d6d7cadd48e86c5ee74fc621bd1a7bb7a0a48b6bb4e46fbb0435ab91`  
		Last Modified: Thu, 13 Sep 2018 17:33:41 GMT  
		Size: 612.4 KB (612420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9c0d74f238152e0a579e3627ea2a56547c1d8f0a542bc4e3559e413c17cbd7`  
		Last Modified: Thu, 13 Sep 2018 17:33:47 GMT  
		Size: 78.4 MB (78402625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89ca1dd6cb0555bd13a5cc26d58bb07da6b6fa87f8098dd730c628d8af6e502`  
		Last Modified: Thu, 13 Sep 2018 17:33:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:fbef6d132d1d2724f41381bd64537206bf47534c50b764c8ee347930ba3e9366
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.8 MB (327774790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be38d3d4244341eab06ae98e5c54bca73ad0b66e22e135914abc2514973a9a8d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:37 GMT
ADD file:c7d4df0199eabe1be20064e36b7f406cc093e6e4b249fe3d5e80efbdd9d11396 in / 
# Wed, 05 Sep 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:28:42 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 09:28:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 09:30:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 09:30:14 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 09:30:15 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 09:30:15 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 09:31:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 09:31:45 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 14:11:01 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 14:11:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 14 Sep 2018 08:55:07 GMT
ENV GRADLE_VERSION=4.10.1
# Fri, 14 Sep 2018 08:55:18 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 14 Sep 2018 08:55:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Fri, 14 Sep 2018 08:55:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 14 Sep 2018 08:55:24 GMT
USER [gradle]
# Fri, 14 Sep 2018 08:55:25 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 14 Sep 2018 08:55:25 GMT
WORKDIR /home/gradle
# Fri, 14 Sep 2018 08:55:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:242ba358ac12243e79ea9900990c026a4b2a428ee912e82307cda7137ce87b08`  
		Last Modified: Wed, 05 Sep 2018 09:02:45 GMT  
		Size: 24.0 MB (24046737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9be3091e0f7f183201efb4d0d133657219a4951278ed991b57026f1390a136`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 452.7 KB (452681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c6149e9cffbd63a5b8711d29fa55ec8913d650f6ba47eae844fdcceb45afd`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c38bc6cad5552a2a60388a28ced2c9c70a64a36b5f04205c9c672ff1d84b699`  
		Last Modified: Wed, 05 Sep 2018 09:38:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f49dddd690de9d458ebacc79c9c2e7e1cbd788397100089e961fdee61a585e`  
		Last Modified: Wed, 05 Sep 2018 09:39:11 GMT  
		Size: 224.3 MB (224272227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3587daa7fd1a161fcc2f5ddb93c1f886aef088cddadecfaf27575a6e3fa9888c`  
		Last Modified: Fri, 14 Sep 2018 09:06:08 GMT  
		Size: 599.9 KB (599922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d377a6fd62960dc101947c5a9a8e6d112096a0d66013b043470c72ae0cf3fb`  
		Last Modified: Fri, 14 Sep 2018 09:06:17 GMT  
		Size: 78.4 MB (78402618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dade13428ff36c7f76728e98304a2c42e36a26c66294ec4a87138e246364ec6`  
		Last Modified: Fri, 14 Sep 2018 09:06:08 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:36268d64237a8611234e601824ba41a6e1c2edbb1797d16e1a71b8b7dee2a459
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.7 MB (339667996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:286b2ac78a532071d73d6c1f5f10025fdce11fc15afd3a57a7f8ce7490401fa5`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:34 GMT
ADD file:d966b641bd0795de9f6442fec893e1b9449c978d22fd9094d193b1535602d0a2 in / 
# Wed, 05 Sep 2018 12:02:35 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:10:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:10:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:14:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 13:15:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 13:15:16 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 17:54:33 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 17:54:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 14 Sep 2018 12:05:49 GMT
ENV GRADLE_VERSION=4.10.1
# Fri, 14 Sep 2018 12:05:58 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 14 Sep 2018 12:05:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Fri, 14 Sep 2018 12:06:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 14 Sep 2018 12:06:04 GMT
USER [gradle]
# Fri, 14 Sep 2018 12:06:04 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 14 Sep 2018 12:06:05 GMT
WORKDIR /home/gradle
# Fri, 14 Sep 2018 12:06:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ba8445defddd24c3f2ac1eee6211fd2c3b937fa4fb76c2b8e6cff179fd515555`  
		Last Modified: Wed, 05 Sep 2018 12:11:44 GMT  
		Size: 22.0 MB (21986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7054fed937aa9eb213be249c9e83d066ebfc81075a7ac56b5fcc5ea9db7df2bf`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 435.3 KB (435302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9fa9b089781c7e685cb03827f255eaddb539c9ca57b5a62119f11f2f48816`  
		Last Modified: Wed, 05 Sep 2018 13:36:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111e6a305987c8f4221f0f1b980a91e385498b2b08dade9597055697d681b88`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e358f7bcdd89e3e0304c86be7989445863751f4f3df51f256242e2a21539a9aa`  
		Last Modified: Wed, 05 Sep 2018 13:37:09 GMT  
		Size: 238.3 MB (238261797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d6ae304acdcc3c96e6869291c59b4f2b60832fd35836c11d760938524a9dbe`  
		Last Modified: Fri, 14 Sep 2018 12:16:15 GMT  
		Size: 581.1 KB (581116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01663a7739e66b592998cfe7f38ff234ba29abcf3d04581e705be79a6d7994ac`  
		Last Modified: Fri, 14 Sep 2018 12:16:25 GMT  
		Size: 78.4 MB (78402618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18db9e6522a5df6a43e3f2d22993ed639b3ba8666c4d20e02395692958c1a60`  
		Last Modified: Fri, 14 Sep 2018 12:16:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; 386

```console
$ docker pull gradle@sha256:a683bc22a5f1fab3474cc82f9ca0056b483e14102f5d502bb32a674cd4ab1f1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.6 MB (445603796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c12c38bfe6b0e77eb71701b4feef64f6885c2c78d8a6406119e7ed86cabe2d5`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:28 GMT
ADD file:d4af5b170a1dc9b1a5129aad95a449a0412bc890b20f7bcc406b10765217d72d in / 
# Wed, 05 Sep 2018 10:42:28 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:37 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:46:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:51:15 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:51:16 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 12:51:16 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 12:51:16 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 12:52:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 12:52:52 GMT
CMD ["jshell"]
# Fri, 07 Sep 2018 03:09:13 GMT
CMD ["gradle"]
# Fri, 07 Sep 2018 03:09:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 14 Sep 2018 10:44:04 GMT
ENV GRADLE_VERSION=4.10.1
# Fri, 14 Sep 2018 10:44:12 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 14 Sep 2018 10:44:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Fri, 14 Sep 2018 10:44:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 14 Sep 2018 10:44:17 GMT
USER [gradle]
# Fri, 14 Sep 2018 10:44:17 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 14 Sep 2018 10:44:18 GMT
WORKDIR /home/gradle
# Fri, 14 Sep 2018 10:44:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:5b7c4e2e64859070ddb846c8d1995c868828ca3f0747e700ce525cca0c668ead`  
		Last Modified: Wed, 05 Sep 2018 10:50:43 GMT  
		Size: 26.9 MB (26855389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe790305403cfefcd04e2c7141ec9c0cdf63365ea7cb2266f45810018349d1e`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 469.7 KB (469687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ab579a9b26299f67deeeff886666f4181e13e5ff5abf594e0cc6b5c92241e0`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e89b90599f0895ab1c534d8de2562ce3a6f075cefe4de08fc3b6d51484bdfc5`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea476fa9934693d50a7374178dac981eb244ff17114cce04b9277a4943fe5d`  
		Last Modified: Wed, 05 Sep 2018 13:19:33 GMT  
		Size: 339.2 MB (339246686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d8e53ea14280867c526fe49fe25cc1a368a16311e44bab1a5b0d75ed58adcf`  
		Last Modified: Fri, 14 Sep 2018 10:53:24 GMT  
		Size: 629.0 KB (628974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98df289915d6c3bfa92d7e6cba92ff223ed0702903d705add108312d1b4685fe`  
		Last Modified: Fri, 14 Sep 2018 10:53:31 GMT  
		Size: 78.4 MB (78402554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621972f014dc9ad8fb9da35a2be41afe5f39b05c5e27e3a5133a8c24ddf36337`  
		Last Modified: Fri, 14 Sep 2018 10:53:24 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:eb2210b5a50b4a2f54f2a31d6ba0047dea0d93c182f88d93182686e2911e2f9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.5 MB (359519036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50296d76f773a71076c4474afb7d009c2d47a7cb8049fe9a7835e85ea69b15b7`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:18:11 GMT
ADD file:2c83f3c9e6ae13dc30fafc9ae3805ad69b08b4da3106915ed14ab1f30f967f23 in / 
# Wed, 05 Sep 2018 08:18:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:45:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:57:02 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 11:57:03 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 11:57:03 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 11:58:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 11:58:22 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 18:01:42 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 18:01:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 14 Sep 2018 08:27:17 GMT
ENV GRADLE_VERSION=4.10.1
# Fri, 14 Sep 2018 08:27:34 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 14 Sep 2018 08:27:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Fri, 14 Sep 2018 08:27:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 14 Sep 2018 08:27:44 GMT
USER [gradle]
# Fri, 14 Sep 2018 08:27:45 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 14 Sep 2018 08:27:46 GMT
WORKDIR /home/gradle
# Fri, 14 Sep 2018 08:27:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ad06b39b761d5d0d233a1f9ed85dd96e65a277e736303cc95163a7aff63a44ec`  
		Last Modified: Wed, 05 Sep 2018 08:23:53 GMT  
		Size: 28.7 MB (28718549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bca90424a7272ac7b846fddea3728bdaaae7093a26bda8e0596bdd046aa8d2`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 458.4 KB (458392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e875ef1b7436e18e8f4d510cd11b49d70c3cc15aadbdff5eceb47089e22b733`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70776989c90e7bf1525a8eda7b904cd78325751c1c4a02b57a879c362c1d105`  
		Last Modified: Wed, 05 Sep 2018 12:24:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d030986ae7618511c529788d3947eedbadbb74076b2f53ae9e36c9f75d49ac75`  
		Last Modified: Wed, 05 Sep 2018 12:25:31 GMT  
		Size: 251.3 MB (251309541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b846c07ca650c02aff3fb70886a1fc61caf6ca89d8847c1ab6ea910d9034e72`  
		Last Modified: Fri, 14 Sep 2018 08:44:35 GMT  
		Size: 629.3 KB (629299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb20c488bb8f3140841f0cfb28dd6cd8ee441761ca6e5ca60c595dd9963bfbfb`  
		Last Modified: Fri, 14 Sep 2018 08:44:48 GMT  
		Size: 78.4 MB (78402647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a27d885be46cf422968cea707494784f7e807ab3728b7e92ab511f310a77c2b`  
		Last Modified: Fri, 14 Sep 2018 08:44:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; s390x

```console
$ docker pull gradle@sha256:121665a50829d863596578a6f752650af1eab6ac797fba6d58b957147f225bf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.1 MB (354070616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8eaa813e3d0e770c70bf62a76dd09d82cebc0b2e5329759608c8b55e454ab5e`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:49 GMT
ADD file:7095b21d997eff90a29af9f20d020b10d14cea2f20456b08af38e55cc6c5dcfb in / 
# Wed, 05 Sep 2018 11:42:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:06:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:06:45 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:07:55 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:07:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 12:07:56 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 12:07:56 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 12:08:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 12:08:38 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 15:26:30 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 15:26:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 14 Sep 2018 11:46:06 GMT
ENV GRADLE_VERSION=4.10.1
# Fri, 14 Sep 2018 11:46:13 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 14 Sep 2018 11:46:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Fri, 14 Sep 2018 11:46:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 14 Sep 2018 11:46:17 GMT
USER [gradle]
# Fri, 14 Sep 2018 11:46:17 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 14 Sep 2018 11:46:17 GMT
WORKDIR /home/gradle
# Fri, 14 Sep 2018 11:46:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:0141ef1e371b0b8a4fc6d4d5118bbbf6045c295fad232833a634af2cf45bd823`  
		Last Modified: Wed, 05 Sep 2018 11:47:38 GMT  
		Size: 24.9 MB (24910961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc3bfe0feae05698cb0859fa53d95daee2e1eaab41cfebb8f0ce0069be8249f`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 469.8 KB (469760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb38e1f6e0d29149721db25f9fbb79505806393a70c856ce96f12151c543441`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622e8c23a6cd95f633fc06b7d0f1738dad7c31e9d3124e92c3c647ee51eed9b8`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46fd515f8bdf1e966ac199f762f0bf769dc673e31620830721578c1f2567013`  
		Last Modified: Wed, 05 Sep 2018 12:11:49 GMT  
		Size: 249.7 MB (249674186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111accd1284d450fd94a93267165656efd7a42ff399309b8135cc4616388740`  
		Last Modified: Fri, 14 Sep 2018 11:57:24 GMT  
		Size: 612.6 KB (612551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39741b434de7026300a32f232fcc33f6822b1e04e11369783180c00d593f0a62`  
		Last Modified: Fri, 14 Sep 2018 11:57:30 GMT  
		Size: 78.4 MB (78402584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a929e1ec50c989c07fb8ac430255b5437d9ab76fd4502ad49a115cb3c2ea84`  
		Last Modified: Fri, 14 Sep 2018 11:57:24 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
