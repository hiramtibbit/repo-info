## `gradle:jre10-slim`

```console
$ docker pull gradle@sha256:c14e0f6862b92defe148af1b168117e5fa9766673dd5f4a9f613fc290e542157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jre10-slim` - linux; amd64

```console
$ docker pull gradle@sha256:5335fc781e7fb7665867028fe6b0d229b7468999e2ec059574d5e482b373ee22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179425408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025c3bc8afc1119c088d98b76eb8933aa15789fbe192146f9e27c66e84531e75`
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
# Tue, 17 Jul 2018 16:36:25 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 16:36:32 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:36:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 16:36:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 16:36:46 GMT
USER [gradle]
# Tue, 17 Jul 2018 16:36:46 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 16:36:46 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 16:36:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
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
	-	`sha256:9b07ef5443e2fba0d842852d65816c98234d82dbf4c0487c2172a259c10ced8b`  
		Last Modified: Tue, 17 Jul 2018 16:54:49 GMT  
		Size: 581.1 KB (581149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa93d2a93fac69b59944f8440896fe8b7bf337aa5efac38fdbbc869a210f56c`  
		Last Modified: Tue, 17 Jul 2018 16:54:56 GMT  
		Size: 75.9 MB (75875597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6aee003feaadd0962406462d51bd2905017f41078cb7b60db2b6f37395093d`  
		Last Modified: Tue, 17 Jul 2018 16:54:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:93ae2efe019d0de7f2d12d8e9ca8d6169da93aa988491318031ce618ec4af5fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.2 MB (162243612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ffea164485b70cdbb98b14ab7757331f4db48bdc42c3c79c13dd4e82a8b925a`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:54:21 GMT
ADD file:0107574479f07d37c0ea231a8738bc043ef67d41f1a4730c4004055700bb0492 in / 
# Tue, 17 Jul 2018 08:54:22 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:14:16 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:14:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:16:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:16:38 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 09:16:39 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 09:16:39 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 09:18:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 13:14:32 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 13:14:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 13:14:33 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 13:14:42 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:14:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 13:14:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 13:14:48 GMT
USER [gradle]
# Tue, 17 Jul 2018 13:14:48 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 13:14:49 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 13:14:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:acea72f1ecd7951289e77c440c4f3aaf77848b2faad76bd7e8db097abfd2d14d`  
		Last Modified: Tue, 17 Jul 2018 09:06:47 GMT  
		Size: 24.1 MB (24086179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f1b1d984fcd3ca8b479950705e6b86d08f519f9188906659654128bb914826`  
		Last Modified: Tue, 17 Jul 2018 09:24:51 GMT  
		Size: 453.7 KB (453659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f488e93cd0d679131e5e9688de12c41011ef24684777d7b3752a1f7b3ff8f8`  
		Last Modified: Tue, 17 Jul 2018 09:24:50 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7ade75d811335a8b747fc901bd34343e48e667e2625f9203c81b8c1b492afb`  
		Last Modified: Tue, 17 Jul 2018 09:24:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4e6b4d96b583f06b6781964966c8ebc008d3401898ea13d78e8187028c68b2`  
		Last Modified: Tue, 17 Jul 2018 09:28:42 GMT  
		Size: 61.3 MB (61258433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e142ce028412eb8b0f5c185b5b2f90874b6e117d8d84d49b939068827039b6`  
		Last Modified: Tue, 17 Jul 2018 13:24:58 GMT  
		Size: 569.1 KB (569149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476361a63539093b7958df2d1f918b9e4c19a846ef9bb2cbd23232c830d1b969`  
		Last Modified: Tue, 17 Jul 2018 13:25:06 GMT  
		Size: 75.9 MB (75875587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8028e9de538d12f1ff5f3f58a41cd7328a9695d64d1cdbd912d6a80dbadbbd`  
		Last Modified: Tue, 17 Jul 2018 13:24:58 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:fd6d831a93d248215b14c800cd54f53f71a162df5db184c06429dd1b17804e21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.1 MB (162122775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba48c9ae38f4d4c2183fb242be296b7e55a76e80ce131895aad8302a399ae44`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 12:03:40 GMT
ADD file:430c173aee26cd9ee26f12a79095a7590ef88c7c48a0ae19a07a09942eaae79a in / 
# Tue, 17 Jul 2018 12:03:41 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:34:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:37:47 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:37:47 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:37:47 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 12:37:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 12:39:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:50:17 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:50:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 16:50:17 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 16:50:25 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:50:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 16:50:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 16:50:39 GMT
USER [gradle]
# Tue, 17 Jul 2018 16:50:39 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 16:50:40 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 16:50:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:1e5341b5f8a7f0c7e651d696478846f375e478fc35a15daad21057ed34c86aa0`  
		Last Modified: Tue, 17 Jul 2018 12:16:07 GMT  
		Size: 22.1 MB (22054548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201706a9d8742be6b39b2112a52a81180a89c547979584ec52ab950ef13a4768`  
		Last Modified: Tue, 17 Jul 2018 12:55:17 GMT  
		Size: 436.3 KB (436272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db9f0721f2ca238b0a84c406f829b0b7c9a960dd91b6ebd65d2e4825db85f79`  
		Last Modified: Tue, 17 Jul 2018 12:55:17 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ed576d8b5e79e9f11a620b7f8ba0faa366e3fa9dbf558f0c98439c6eefb3e0`  
		Last Modified: Tue, 17 Jul 2018 12:59:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6bc638083ff9773474892a1bb51074f9d16846cd087972c7e7ae43ee6a8b9`  
		Last Modified: Tue, 17 Jul 2018 13:02:48 GMT  
		Size: 63.2 MB (63205503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9913f833bda4b26390840441017fbaa3a911c150d4d2823b81ed6a4cb5c1c8ba`  
		Last Modified: Tue, 17 Jul 2018 16:57:04 GMT  
		Size: 550.3 KB (550260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c84dd1b4b2c42e39a6a2897bd15eef1b1ed5d590c533b8c9dddf20c62bd61ea`  
		Last Modified: Tue, 17 Jul 2018 16:57:12 GMT  
		Size: 75.9 MB (75875588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5386bca55d0172b574061b673e2f9313b4a62a38d003f00f52c4a2cf3ff7ef1f`  
		Last Modified: Tue, 17 Jul 2018 16:57:03 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b885156b9237084e6359daf501521171fd8e0d84c509396e734694f04a75c6ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (165036577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d872b58aee0bfda730ae6d85beab2da8affb02ba23eff225d176d9336c1ccfb`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 08:45:15 GMT
ADD file:43ec4f040b626f1ded3ce1a923597ce0c4c7f95f69f95f086a3847e8aeb74bd3 in / 
# Wed, 27 Jun 2018 08:45:17 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:20:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 10:20:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 10:22:39 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 10:22:40 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 10:22:41 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 10:22:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 10:34:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 30 Jun 2018 08:53:17 GMT
CMD ["gradle"]
# Sat, 30 Jun 2018 08:53:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Jun 2018 08:53:18 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 30 Jun 2018 08:53:29 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 30 Jun 2018 08:53:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 30 Jun 2018 08:53:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Jun 2018 08:53:41 GMT
USER [gradle]
# Sat, 30 Jun 2018 08:53:42 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Jun 2018 08:53:42 GMT
WORKDIR /home/gradle
# Sat, 30 Jun 2018 08:53:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6a0581b8511ac26263e1c081abe6382d7ce4481f47612f79a5460165410d1da7`  
		Last Modified: Wed, 27 Jun 2018 08:55:56 GMT  
		Size: 23.5 MB (23467711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a41f0f7beab1d044e8af784988f7edba4c2864fc3c3a8895b4a9923cf8688a`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 445.0 KB (444977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a408113d860847fc397e2efe7e9e5b70c792848f6cdd53715333f04f14d5151c`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360f23b6c1f5ff2fd50f4c1624b12135cad6b44e5fcad2ca644809184db95729`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b838544e25b2cd9cf7f46ac62c889776bfd65414990379f41aa30654b37069e4`  
		Last Modified: Wed, 27 Jun 2018 10:48:49 GMT  
		Size: 64.7 MB (64684558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910b71c48f26ed1474f08723351678f14fb031f64eaef25b250f4bb5f12f0b38`  
		Last Modified: Sat, 30 Jun 2018 08:59:14 GMT  
		Size: 563.2 KB (563202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be7cacc43a1dc21cb5915f1540195a09e927349194195f0aaec09e91032880d`  
		Last Modified: Sat, 30 Jun 2018 08:59:25 GMT  
		Size: 75.9 MB (75875554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7544c80de09b13f57dd4951b5ea2a1a7855d9818a8e36762c8a271dff96887a6`  
		Last Modified: Sat, 30 Jun 2018 08:59:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10-slim` - linux; 386

```console
$ docker pull gradle@sha256:0c5df22aeb6d07ff14c0d3e401fd7d977ddb65eef58a587a6e3d82b94c87f58e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184690958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07395be0c5a5a37726759c2f1cd87830c2cf624b44f4f2a65e7edf4048a4fcdf`
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
# Tue, 17 Jul 2018 19:27:14 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 19:27:23 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:27:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 19:27:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 19:27:41 GMT
USER [gradle]
# Tue, 17 Jul 2018 19:27:41 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 19:27:42 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 19:27:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
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
	-	`sha256:a374147103915924ff0bfd78122d3c2ad3244d837515830ba980e082120a0e0e`  
		Last Modified: Tue, 17 Jul 2018 19:46:28 GMT  
		Size: 598.3 KB (598253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39834d10d70816abc48b8d7a84e0df33bf69f9bbd47070f2ce678a86fbf59f9`  
		Last Modified: Tue, 17 Jul 2018 19:46:51 GMT  
		Size: 75.9 MB (75875589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06de6b3b6062abfceba616880439d2fffdd927d6986fb41bce23aab0a3fd249`  
		Last Modified: Tue, 17 Jul 2018 19:46:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:79de424b059ac97273f1da217cd403d3ea3d3e7be5bfe13da8b74781a0b7d870
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170273716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e01edb99a49bb2aae88b87b62e3caa62428234497a71d21cad21e9960947982`
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
# Tue, 17 Jul 2018 18:22:10 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 18:23:10 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:23:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 18:24:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 18:24:25 GMT
USER [gradle]
# Tue, 17 Jul 2018 18:24:27 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 18:24:28 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 18:24:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
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
	-	`sha256:d280400635494ba0d4ffc6a577a891b13f610cd1e82449d2be50b80ef3dd918a`  
		Last Modified: Tue, 17 Jul 2018 18:32:17 GMT  
		Size: 598.1 KB (598076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862865144d284d3e866b283dc2130f00b480b41f1cd9ed5499c7e7b38c3f2086`  
		Last Modified: Tue, 17 Jul 2018 18:32:31 GMT  
		Size: 75.9 MB (75875756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5588c798ffa08854fc6b73c72c0c475b3b60cc92956ea92dbcbf184037a7d05`  
		Last Modified: Tue, 17 Jul 2018 18:32:17 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10-slim` - linux; s390x

```console
$ docker pull gradle@sha256:8fd347e47e663884da63f68a30fd00a151cf8812abab939e87659d3cf45b59dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167706966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46bb98fc91c7f5f411582a5dcd56250fc2e8321d00c0647c62be6c12524b65ee`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 11:42:33 GMT
ADD file:34516dd4f3a5de10b651fdb63328fddb718471eaf74d2efaa6760e1cc35f585c in / 
# Tue, 17 Jul 2018 11:42:34 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:03:10 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:03:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:05:16 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:05:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:05:17 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 12:05:17 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 12:06:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 15:02:58 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 15:02:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 15:02:59 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 15:03:03 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:03:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 15:03:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 15:03:08 GMT
USER [gradle]
# Tue, 17 Jul 2018 15:03:08 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 15:03:09 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 15:03:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:1a7175b896da3e09b9a3ca6e3eb08f48c4a4243431b90adbec26e8baa7abec49`  
		Last Modified: Tue, 17 Jul 2018 11:45:48 GMT  
		Size: 25.1 MB (25130390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae7fd283a35bc996c3e40072f47e06f5a1863d130778afd8486985973fe079c`  
		Last Modified: Tue, 17 Jul 2018 12:10:30 GMT  
		Size: 470.9 KB (470909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b36a405f4357de759ca613cac9db408120a959b381a08b4c3ca780fe0e66965`  
		Last Modified: Tue, 17 Jul 2018 12:10:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9036c33525890fd71c86b6384e69ece5f4ef4ffab9a39099589053c95738977a`  
		Last Modified: Tue, 17 Jul 2018 12:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d3100d922b63296525c0c248e168f1d5d7a32a51a0ef1b0aff03e3981738a8`  
		Last Modified: Tue, 17 Jul 2018 12:14:28 GMT  
		Size: 65.6 MB (65648321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf4af489afb989e75d73251a6ac8ec21d03980c045a05d699b2a8048d485bf`  
		Last Modified: Tue, 17 Jul 2018 15:07:27 GMT  
		Size: 581.2 KB (581157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994b6120cbe1de9bd88a96851495b9fd1175088af32dfef3c58ab09e3c5fb19f`  
		Last Modified: Tue, 17 Jul 2018 15:07:34 GMT  
		Size: 75.9 MB (75875611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c790da8775cf64b21f2332d20f4610c1124c1aa72e3313ab9354608a53f9f5`  
		Last Modified: Tue, 17 Jul 2018 15:07:28 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
