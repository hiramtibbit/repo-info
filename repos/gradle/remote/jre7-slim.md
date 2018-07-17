## `gradle:jre7-slim`

```console
$ docker pull gradle@sha256:2aa8e3fa25203b7dd0ef9b05b591cc867791f8d802fdebf6ff4889d9c6017043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `gradle:jre7-slim` - linux; amd64

```console
$ docker pull gradle@sha256:3160fdb6fa4edf5d7e9004c2ea19ddcbfc911b93e4eb8670f1595572d5efeef0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.4 MB (180447744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca1173abefca7a99660517a72b8b29ac7f26025d859bec820c82750460b9ce1`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:23:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:23:46 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:23:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:23:47 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:27:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:27:25 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:27:26 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:28:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:29:32 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:29:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 16:29:32 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 16:30:07 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:30:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 16:30:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 16:30:13 GMT
USER [gradle]
# Tue, 17 Jul 2018 16:30:13 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 16:30:14 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 16:30:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83aaae4a41047243bc7114b57d6abbf93493ca7760a12f1bcb11f7796e792a3f`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 463.7 KB (463742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77071b36c9a8bf79837590aee3dcf02df92603573b10a2f99b154d05a80ed68b`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44de20d9dd075cf58bc5c1696f04dd15b9aa035f0f8a86eda6ded43da087c3d1`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8892ada1858955ed00ab8408454978d93feab29003ea2c3e437e005c724cdc`  
		Last Modified: Tue, 17 Jul 2018 07:20:04 GMT  
		Size: 61.6 MB (61627351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99153e4e35e0ec32b1eb066bbe61846a6a80b2ef024383b67bbb91ed7a8d7238`  
		Last Modified: Tue, 17 Jul 2018 16:40:54 GMT  
		Size: 12.4 MB (12360170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf5629a9f28e62d335c1a1a5a6df39344af6e4157e26abc86b938f6bc5227ea`  
		Last Modified: Tue, 17 Jul 2018 16:40:59 GMT  
		Size: 75.9 MB (75875800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889dbe411ac8b7c2ae2688248a8d1e09d17bac2f6a4043539040bd6063341927`  
		Last Modified: Tue, 17 Jul 2018 16:40:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre7-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:45b01fcbf9ab7a75549597d5a6b7035ee9e7244b7c0f58a36ff57844bc7e955b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168358362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7077c4c8d05e46eb5d58b9fc09ddea9a812ca87e0899ed341991e13a6609f21`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:50:57 GMT
ADD file:e303ac4cacd7ac2a0a69960e76235ca4a7305f8db9cfae9f97c5dafe0cb57c9c in / 
# Tue, 17 Jul 2018 08:50:59 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:21:22 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:21:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:21:23 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:23:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 09:23:19 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 09:23:19 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 09:24:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 13:10:16 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 13:10:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 13:10:17 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 13:10:44 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:10:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 13:10:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 13:10:52 GMT
USER [gradle]
# Tue, 17 Jul 2018 13:10:52 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 13:10:52 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 13:10:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:669d043a9b2bd51eea9e767c0315e0ad02bd9f56f1ef5f6172fa53d78285ac5a`  
		Last Modified: Tue, 17 Jul 2018 09:03:26 GMT  
		Size: 28.4 MB (28430654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c284edd78c5a0cec0dabc2d10500872e2acfb829d77dd47be7bc8901de22b7`  
		Last Modified: Tue, 17 Jul 2018 09:34:38 GMT  
		Size: 456.5 KB (456467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb7a4e02c9453c20bf5f6c4b61f86382c39d0cc51055486accedc5bd8e136d2`  
		Last Modified: Tue, 17 Jul 2018 09:34:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b322e91969e8bed0ecb1c9ed5354b0e1c1c150f2fa66e6bc978dc26b66b1bdab`  
		Last Modified: Tue, 17 Jul 2018 09:34:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1aecbe4486983d55775e55c8abfe1dda93b09522fd74149e03f4cbab9a6624`  
		Last Modified: Tue, 17 Jul 2018 09:36:35 GMT  
		Size: 51.4 MB (51429294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3086a88fd3c1677a7b4d8946256911dcd668a1003b3b64b9e6c984f78018f917`  
		Last Modified: Tue, 17 Jul 2018 13:17:18 GMT  
		Size: 12.2 MB (12165314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f395e004e88934d53662c0d3b092d5ab1dd5ceda5bc1265379ed6b1d39da5589`  
		Last Modified: Tue, 17 Jul 2018 13:17:24 GMT  
		Size: 75.9 MB (75876019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d3ecf272214847129565555b58cf34332d9160bc46f9e5f415e32ffb306c9`  
		Last Modified: Tue, 17 Jul 2018 13:17:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre7-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:02f06132907b90773425125553e8c75f5663268231bed422e7a531c4ac228704
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164916871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9e92e3e10af3f7f12644462444d703b9649051762e63b9ef8e3839e9837341`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:49:25 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:49:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:49:27 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:51:22 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:51:22 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 12:51:23 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 12:52:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:47:30 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:47:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 16:47:31 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 16:47:58 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:47:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 16:48:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 16:48:09 GMT
USER [gradle]
# Tue, 17 Jul 2018 16:48:17 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 16:48:17 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 16:48:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b078f4f7755c20eeb56b303c14bc884b2d44e3e654c17e3bff0cb23722f88b4c`  
		Last Modified: Tue, 17 Jul 2018 13:03:55 GMT  
		Size: 432.3 KB (432315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c65fa31d20562a41d9fc300fedb1915412f1ab5dc29fa5317c356e879c6cb`  
		Last Modified: Tue, 17 Jul 2018 13:03:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f892c36d0a5a971da85854b94cb5ed3fb69996bb9c4ae0ca69995aefe2cd452d`  
		Last Modified: Tue, 17 Jul 2018 13:03:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed0567529edb8f57c81ed22e121560af74e8c1e0e81111b04fb21f752001b9`  
		Last Modified: Tue, 17 Jul 2018 13:05:20 GMT  
		Size: 50.3 MB (50299640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85d263228a7aa6272de00432632a54bedc331c72c88d5707183b1947be249ca`  
		Last Modified: Tue, 17 Jul 2018 16:53:43 GMT  
		Size: 12.0 MB (12021325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b257c5ef5f6025472eb2d09430ec7e412b92979020c3024067ceb5d6df9bac`  
		Last Modified: Tue, 17 Jul 2018 16:53:48 GMT  
		Size: 75.9 MB (75876018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644d88cdb4392572ab73d7ce857e0e7a18344db73d37823ddbc08ab171ee3de3`  
		Last Modified: Tue, 17 Jul 2018 16:53:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre7-slim` - linux; 386

```console
$ docker pull gradle@sha256:e901925c5af2a2cd6c695ed21cdce7c4efc025ba29d9b63c6293b7ed2143f4d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192321726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fc37afeb4ab1f135ed7f6607963339d7ab4d1bbbdce36b5fa6adc876a08e81`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:30:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:31:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 11:31:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 11:33:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 11:33:19 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 11:33:19 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 11:34:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 19:20:25 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 19:20:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 19:20:26 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 19:21:17 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:21:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 19:21:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 19:21:25 GMT
USER [gradle]
# Tue, 17 Jul 2018 19:21:25 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 19:21:26 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 19:21:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27765bec26e1d6c46befeb564ef6ee5f2122d7a68fa415dbd856cb9a7c6df4a`  
		Last Modified: Tue, 17 Jul 2018 12:04:09 GMT  
		Size: 466.3 KB (466284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4434c09ccf5267ea7a53104b29f03ec003ab6f5fc1efac068dcc8be6abe11`  
		Last Modified: Tue, 17 Jul 2018 12:04:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d716a5df985be1ad2420509b15a3773caf63ec7c569984010094855099c2943`  
		Last Modified: Tue, 17 Jul 2018 12:04:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e613cb5a1dc2982676d4e6137f76b02c0c2765cb0ee8ad2ee48ddb1654d39e7a`  
		Last Modified: Tue, 17 Jul 2018 12:07:20 GMT  
		Size: 73.2 MB (73214466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684797ae34b1704a04aa9f59e464acfc81519ab431b6d5cac0e9351ccb302492`  
		Last Modified: Tue, 17 Jul 2018 19:32:08 GMT  
		Size: 12.5 MB (12494658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0eba632a2ff246551377dee4b4675fe7267cb63c97f4016be237486bbb7be2`  
		Last Modified: Tue, 17 Jul 2018 19:32:14 GMT  
		Size: 75.9 MB (75875791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8b3f785ff918cf8fc284f44dc37b28ee8faf93a22b13ef7ef127b5516fab`  
		Last Modified: Tue, 17 Jul 2018 19:32:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
