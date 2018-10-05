## `gradle:jdk11`

```console
$ docker pull gradle@sha256:31830a8e6d7adc2bf7a0aec885a25cdb86d1aaba854426ad3ce7dda29d44258c
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

### `gradle:jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:0278ea1a5ba3e147b8538c677d6e0d9defa8ecddf0d85bd6eef57c301fe4d869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.4 MB (588404363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490dec80342a0c0587f8f35d314d6f4dc664374d995221638d52848acc44f54b`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:51 GMT
ADD file:6b6ece05e75fbdccfdd76433844e066f0ec636fb62e74326f1747ccde948c381 in / 
# Tue, 04 Sep 2018 21:20:52 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:31:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:31:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:14:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:14:23 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:14:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:14:24 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:14:24 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 28 Sep 2018 18:22:40 GMT
ENV JAVA_VERSION=11
# Thu, 04 Oct 2018 20:19:46 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Thu, 04 Oct 2018 20:21:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 04 Oct 2018 20:21:02 GMT
CMD ["jshell"]
# Thu, 04 Oct 2018 20:45:44 GMT
CMD ["gradle"]
# Thu, 04 Oct 2018 20:45:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 04 Oct 2018 20:45:44 GMT
ENV GRADLE_VERSION=4.10.2
# Thu, 04 Oct 2018 20:45:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Thu, 04 Oct 2018 20:45:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 04 Oct 2018 20:45:48 GMT
USER [gradle]
# Thu, 04 Oct 2018 20:45:48 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 04 Oct 2018 20:45:49 GMT
WORKDIR /home/gradle
# Thu, 04 Oct 2018 20:45:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:5164339600396c4bdb97f111e5236c5fc64911bbd2bfe6d2343ce45fe79ea7d8`  
		Last Modified: Tue, 04 Sep 2018 21:24:41 GMT  
		Size: 49.1 MB (49071704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083ed1d8baf85dbda1151434e9afe28ad5efa36397cda6ff66cc5e7a888d2a4f`  
		Last Modified: Tue, 04 Sep 2018 22:51:37 GMT  
		Size: 7.4 MB (7350084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973ddf6ced7131822a05e3dd20803610fd06a8c695d3d814713f6ece58d616fd`  
		Last Modified: Tue, 04 Sep 2018 22:51:38 GMT  
		Size: 9.3 MB (9303992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febb8320d7db45f4fea60cc567f2cf18032e0996273d8e63d6af5953f756d185`  
		Last Modified: Tue, 04 Sep 2018 22:51:55 GMT  
		Size: 51.4 MB (51443158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affad348605132419a057b8d81c7261439d651c1b2211d826c6bcc86ebb42bfe`  
		Last Modified: Wed, 05 Sep 2018 01:31:32 GMT  
		Size: 900.7 KB (900730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9702fa0409b03c3a115803227ac769d6850b2da7027a11757fc2241e47e130ce`  
		Last Modified: Wed, 05 Sep 2018 01:31:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd219431247b808000b0314fd0f997b7edba52854d82433060282024e3d86889`  
		Last Modified: Wed, 05 Sep 2018 01:31:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96dcb97eb3d1da3564457b394d7891b82f6e5917e753d0064c62eb933a76c443`  
		Last Modified: Thu, 04 Oct 2018 20:26:13 GMT  
		Size: 391.9 MB (391928290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963d1c9662e6a8f607a2fbf45a82440e339bc7a9ca8287f19cab8ae1e1d527ef`  
		Last Modified: Thu, 04 Oct 2018 20:47:15 GMT  
		Size: 78.4 MB (78405897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52e51329b0f27c4208b04807079542e4cb7388c21277b72d1c390f6194035cf`  
		Last Modified: Thu, 04 Oct 2018 20:47:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; arm variant v5

```console
$ docker pull gradle@sha256:7f01a37712abd3c55834dcee40e4f51be7c4e35ddcd7a8d4ed9ff4ca895c9fe0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.5 MB (503452138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410a6e8350c3e4eff42bc3343df5adc200f4cf422edfede418ec27a109f1ea9f`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:05 GMT
ADD file:197405a6e437f7755c9e1eaaeffa366cbbed5d22b6433e8985fc72c0399c9741 in / 
# Wed, 05 Sep 2018 08:53:10 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:18:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:18:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:18:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 14:18:15 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 14:18:16 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:48:46 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 09:00:23 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 09:02:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 09:02:28 GMT
CMD ["jshell"]
# Fri, 05 Oct 2018 09:29:02 GMT
CMD ["gradle"]
# Fri, 05 Oct 2018 09:29:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 05 Oct 2018 09:29:03 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 05 Oct 2018 09:29:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 05 Oct 2018 09:29:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 05 Oct 2018 09:29:10 GMT
USER [gradle]
# Fri, 05 Oct 2018 09:29:10 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 05 Oct 2018 09:29:10 GMT
WORKDIR /home/gradle
# Fri, 05 Oct 2018 09:29:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:d249ae748c1383631885fe6ef102c9f4763c974c7e2ed31cbd7b8ec3b469b01e`  
		Last Modified: Wed, 05 Sep 2018 09:02:23 GMT  
		Size: 46.8 MB (46817101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd45a59e2fb41f181140d262402692b7bb09adb957eecafdeb3c8a5534ab243`  
		Last Modified: Wed, 05 Sep 2018 10:09:53 GMT  
		Size: 6.9 MB (6917036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fe315336f45a33182829fb9bc3dd66b77a0251800dc947f7872e4abb3393a9`  
		Last Modified: Wed, 05 Sep 2018 10:09:53 GMT  
		Size: 9.0 MB (9043599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272ffe9dac308caa185c4952004783691d58dc1ed47dac2e1b87a47b09b2b35f`  
		Last Modified: Wed, 05 Sep 2018 10:10:27 GMT  
		Size: 48.8 MB (48786952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0606143b70af1f37ea160d1aba3412f685749d420fe7b395c447bf73a046bc`  
		Last Modified: Wed, 05 Sep 2018 14:32:54 GMT  
		Size: 892.9 KB (892869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac23b8bd0498a5b8df2954f5eb73c101fb25a32cd767ffe8b96ae01eadd0d2ba`  
		Last Modified: Wed, 05 Sep 2018 14:32:53 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe51cbcfcbfe19dc726c7476d6255fd2163df3d6aabbdc9086aea8fed5e03b97`  
		Last Modified: Sat, 08 Sep 2018 08:58:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343e9d9c7da688b32fb90f85830b92d42ce732b68df7be8fec20c5f2f11d48e`  
		Last Modified: Fri, 05 Oct 2018 09:08:15 GMT  
		Size: 312.6 MB (312588100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b0c1a79738ccc97d6ea531f068a3fed48917ff472bcd2bef298f480301c27e9`  
		Last Modified: Fri, 05 Oct 2018 09:31:49 GMT  
		Size: 78.4 MB (78405877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd468f70a709c8d38287b18d9f42a8d8cf93c7409de5c0606666c313ad836544`  
		Last Modified: Fri, 05 Oct 2018 09:31:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:6f0c7f9135ffb9fbc5d57290518cb7c53e5b31f1b6887e99d3f4573f807c5ac8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **524.0 MB (524036404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9a245239311a92374fcd34faddca508b82b4ff4dda33ebc9c1f4817e5c8dca`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:03 GMT
ADD file:6bce3a6eaae154a74bd434bc6087c35774f3ca30b31179bd9d3a8ccc883e6356 in / 
# Wed, 05 Sep 2018 12:02:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:09:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:09:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:09:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:09:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:09:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 11:57:48 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 11:57:48 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 12:00:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 12:00:06 GMT
CMD ["jshell"]
# Tue, 02 Oct 2018 12:02:09 GMT
CMD ["gradle"]
# Tue, 02 Oct 2018 12:02:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 02 Oct 2018 12:02:09 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 02 Oct 2018 12:02:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 02 Oct 2018 12:02:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 02 Oct 2018 12:02:24 GMT
USER [gradle]
# Tue, 02 Oct 2018 12:02:24 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 02 Oct 2018 12:02:25 GMT
WORKDIR /home/gradle
# Tue, 02 Oct 2018 12:02:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:41ac34bbb663ff9b66612cbe07ba88955dbe37f15f0732d7438ed9d75ffef0c9`  
		Last Modified: Wed, 05 Sep 2018 12:11:20 GMT  
		Size: 44.7 MB (44660481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4a6a41cc4abd0bf494829b7c229c8b0332e0fa15e4070e51e196a72e0e9f8f`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 6.7 MB (6684465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff85737d1afda4a28ad503d9827b69fbb9a8cb0c387134d95a9099dea0d22d0e`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 8.8 MB (8752299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f942d01e599eb3af73eb31be8169a4ea25e5805aad28a71fdb278bc7d3c1ac`  
		Last Modified: Wed, 05 Sep 2018 12:55:38 GMT  
		Size: 46.6 MB (46571890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2354edd34c62b656a4ae8626d1e2294f9c2bb024d003fdde19dc21b89faefad7`  
		Last Modified: Wed, 05 Sep 2018 13:32:39 GMT  
		Size: 875.8 KB (875772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218f1f52dd5542be1fbd9d9cf5b3efa1ed5b9b0466ee070a34f286958f6b5780`  
		Last Modified: Wed, 05 Sep 2018 13:32:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4c23a0fdfdd80b5257d8faefe0656a4eecf1e96493f83d09f9f882256d4637`  
		Last Modified: Sat, 08 Sep 2018 12:19:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac770263bf62d22f3491cde0311f83587fafd9894d97a96ae6a67ccd69c6b1`  
		Last Modified: Sat, 29 Sep 2018 12:19:30 GMT  
		Size: 338.1 MB (338084979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86e1c02144271c7eb6b819939ce07db53092bf0c967693e484f42b06e6cead6`  
		Last Modified: Tue, 02 Oct 2018 12:05:49 GMT  
		Size: 78.4 MB (78405912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5effff1ead48699f087ce503f1fab8e845b21ac7edb39984b1b592bd5cbf4ac`  
		Last Modified: Tue, 02 Oct 2018 12:05:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:92267444a53e0a8a6272ab79ace4e3e72314d19494586fa5abec9ef893919c09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.5 MB (566454794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3c8d5e0e674fa9ff4c3c1c57e60906ce753cbec2d6ad5ed7fb2b93ebcf8071`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:44:44 GMT
ADD file:cac51be1621603e67cd0c6a08ff297ca705beef482ba784194fe06790776dda8 in / 
# Wed, 05 Sep 2018 08:44:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:48:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:48:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:51:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:56:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:56:25 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 15 Sep 2018 10:12:17 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 15 Sep 2018 10:12:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:50:13 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 08:50:13 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 08:56:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 08:56:34 GMT
CMD ["jshell"]
# Tue, 02 Oct 2018 08:44:29 GMT
CMD ["gradle"]
# Tue, 02 Oct 2018 08:44:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 02 Oct 2018 08:44:30 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 02 Oct 2018 08:44:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 02 Oct 2018 08:44:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 02 Oct 2018 08:44:55 GMT
USER [gradle]
# Tue, 02 Oct 2018 08:44:56 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 02 Oct 2018 08:44:57 GMT
WORKDIR /home/gradle
# Tue, 02 Oct 2018 08:45:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ff5ead7611ad86204643cd46d308599be45fefaca7a358aa65ccab791156f31f`  
		Last Modified: Wed, 05 Sep 2018 09:02:06 GMT  
		Size: 47.2 MB (47246205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b9b5a56863c55df9af02f6c80c86602c59da911f5cae6082cd55967a1e138c`  
		Last Modified: Wed, 05 Sep 2018 10:21:41 GMT  
		Size: 7.1 MB (7127800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6977204ca040a8a731305a3c0e13830646c7649eec3fec0e6cbed16c6de0eb0`  
		Last Modified: Wed, 05 Sep 2018 10:21:41 GMT  
		Size: 9.2 MB (9238554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a628be1a676dbdde587710d61dd019ae5dacbc3a3d981e7411e4431e83974c`  
		Last Modified: Wed, 05 Sep 2018 10:22:52 GMT  
		Size: 51.3 MB (51290248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab0a25425fb93c2eb6e20a2a808620dd1b3b5ba1eeba55f88e32afa7c782d95`  
		Last Modified: Wed, 05 Sep 2018 13:42:23 GMT  
		Size: 887.6 KB (887638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155545660b0ed2f624026fd09561a2c6ad650693341aa8c110931149c386359e`  
		Last Modified: Wed, 05 Sep 2018 13:42:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67978f5b4f74c3c19deae6d8ebe0553b0f1ad666e946a6f7363444ed9c738f09`  
		Last Modified: Sat, 15 Sep 2018 10:35:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af10be4d1344402fe6050a2fa9514efee3171c224f8216f2d7e3912e06b952f0`  
		Last Modified: Sat, 29 Sep 2018 09:24:25 GMT  
		Size: 372.3 MB (372257863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcac13520425f92a1d75b6afd590e25d575545b5096e021de13fc094f305a98`  
		Last Modified: Tue, 02 Oct 2018 08:48:30 GMT  
		Size: 78.4 MB (78405908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495aa0f2b8d6e10d1864ed7830e4e250356eb514c543702a010f91751e598645`  
		Last Modified: Tue, 02 Oct 2018 08:48:19 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; 386

```console
$ docker pull gradle@sha256:63e3aac77b18098036604480c95a616aff153796175070c5e372ea9de120ef09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.1 MB (672141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efee0230d0c3638375b068af71788026717bd9faefe49192e71977dec389bccd`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:05 GMT
ADD file:8de67e0fc0d437844f80c43c2040a020c9b920f19c3af0645d06ad1f79099fd9 in / 
# Wed, 05 Sep 2018 10:42:06 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:36:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:36:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:37:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:45:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:45:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:45:54 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:45:54 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 10:47:57 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 10:47:57 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 10:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 10:49:32 GMT
CMD ["jshell"]
# Tue, 02 Oct 2018 10:40:38 GMT
CMD ["gradle"]
# Tue, 02 Oct 2018 10:40:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 02 Oct 2018 10:40:38 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 02 Oct 2018 10:40:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 02 Oct 2018 10:40:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 02 Oct 2018 10:40:43 GMT
USER [gradle]
# Tue, 02 Oct 2018 10:40:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 02 Oct 2018 10:40:43 GMT
WORKDIR /home/gradle
# Tue, 02 Oct 2018 10:40:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c5ab6b8677b80e3d03b9cf7f6d60c5ea5e55c3ef5201228d2a1e02348632bc3b`  
		Last Modified: Wed, 05 Sep 2018 10:50:26 GMT  
		Size: 49.8 MB (49764498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3334592e8df26ecd8135ae4d98e26ee5c2152c588781fdbcb617525eab00347d`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 7.5 MB (7502763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22424c58e25912b79ad47701b7d26c1644849d325d1095b43486c45357dce9e`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 9.6 MB (9583883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606003a3bac6354e2e80ce2f5036fbff540fbcf335b2bd782faa2a3abf25bc7d`  
		Last Modified: Wed, 05 Sep 2018 12:06:47 GMT  
		Size: 52.8 MB (52818485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1edfe86ce1828686e87eb3d96eeab9812e6e0d86c9aa5ac50c9a8859a9c3e7`  
		Last Modified: Wed, 05 Sep 2018 13:15:17 GMT  
		Size: 909.0 KB (909034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c99b60662ce436305522f3d87c92f2e10f80d71e4a6b9384c787d6883f4adba`  
		Last Modified: Wed, 05 Sep 2018 13:15:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374b3543af67be465f86ddf215834d447d839d155d2690493e8b4e1b780a61dd`  
		Last Modified: Sat, 08 Sep 2018 18:26:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d98582f2b676774e0666e2a796116e6eee8cc77771ba2d8a11b19ab8b048916`  
		Last Modified: Sat, 29 Sep 2018 10:58:06 GMT  
		Size: 473.2 MB (473156266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3baab4d55a9969c9aff8b7f0b5cf3322572bfd0a8eb0e1f7397a95831b07a6e`  
		Last Modified: Tue, 02 Oct 2018 10:42:12 GMT  
		Size: 78.4 MB (78405878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69423b891219b2c3333e9c37dc8e466ae9cf039b05055801918b4209fcaffc49`  
		Last Modified: Tue, 02 Oct 2018 10:42:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:121a4f3af12c3a650585cb53d2c920ac820832189bb5b3553524774d80563a90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **570.0 MB (569999218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1cb92e0b49a0693ae5df3b65072691119f515a916511d8bb0715c40dfae411f`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:17:51 GMT
ADD file:74cafd19c9f92f0bcf0ebf8af7c5fab91202cd413254da05d5a2b9191ecbee2d in / 
# Wed, 05 Sep 2018 08:17:53 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:56:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:56:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 08:58:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:44:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:44:24 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:44:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:44:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:44:35 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:17:44 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 08:17:45 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 08:22:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 08:22:02 GMT
CMD ["jshell"]
# Tue, 02 Oct 2018 08:24:27 GMT
CMD ["gradle"]
# Tue, 02 Oct 2018 08:24:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 02 Oct 2018 08:24:39 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 02 Oct 2018 08:24:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 02 Oct 2018 08:24:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 02 Oct 2018 08:24:52 GMT
USER [gradle]
# Tue, 02 Oct 2018 08:24:54 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 02 Oct 2018 08:24:56 GMT
WORKDIR /home/gradle
# Tue, 02 Oct 2018 08:25:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88839b4f566005ace21b4fb23e56b4a9638df137ee204c622d554444045423e4`  
		Last Modified: Wed, 05 Sep 2018 08:23:23 GMT  
		Size: 51.8 MB (51843930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5080e7dd5658ca43e5ab2c481fd673297ba9af3c9873b12896d7b0afb50375be`  
		Last Modified: Wed, 05 Sep 2018 09:15:01 GMT  
		Size: 7.6 MB (7623087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d33c3810da3865f1a4b8e646406ec32e5b89f1595d3a9b780139a5aa99ca1e`  
		Last Modified: Wed, 05 Sep 2018 09:15:00 GMT  
		Size: 9.9 MB (9854750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d8586b90ff807723abb2d80e53f27f00ad40782f143ee6542c4cbad679edfd`  
		Last Modified: Wed, 05 Sep 2018 09:15:46 GMT  
		Size: 56.9 MB (56858899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d516269a2175adf9f1906744812df8dd2f7a9bd3142ea3e79ee825bc38a2bbb`  
		Last Modified: Wed, 05 Sep 2018 12:19:29 GMT  
		Size: 899.5 KB (899476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36a5848a0d935e163767418980e664f0baa477a4babe6d63734384bb4185beb`  
		Last Modified: Wed, 05 Sep 2018 12:19:24 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c046ed55c138ece973d6325ed0cdcb47607ba410f1de5f761b0c16ee2eca65e`  
		Last Modified: Sat, 08 Sep 2018 09:31:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f779414098659f651d1e71e4b2ba2e5d46464bd6006fb3361d1c0e6b9e25f8c`  
		Last Modified: Sat, 29 Sep 2018 08:57:56 GMT  
		Size: 364.5 MB (364512551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89179ad2509c1fdb3c24800ddfce8efb903da5cdc5e6454ae88f1881974a163`  
		Last Modified: Tue, 02 Oct 2018 08:28:47 GMT  
		Size: 78.4 MB (78405919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60ff82455bc4bd9b85eaf66ca50482fefde98199a186905b8b7b44132738e7`  
		Last Modified: Tue, 02 Oct 2018 08:28:38 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; s390x

```console
$ docker pull gradle@sha256:b1f2a001a5e07f3627b09443f76044877524af1fe66ad37d169f32ca58e3fd2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **524.5 MB (524540020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d754d54c8ff0e8182cfab696840a4b8c9786bbc7bd38ebc0d8dd19f3c0992a34`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:29 GMT
ADD file:832b68a7f8033560aa3536d9163f28d197490633c05d49240dd2bed266d9504e in / 
# Wed, 05 Sep 2018 11:42:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:42:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:42:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:08:41 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 18:08:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 18:08:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 18:08:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 11:55:25 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 11:55:25 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 11:58:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 11:58:04 GMT
CMD ["jshell"]
# Tue, 02 Oct 2018 11:44:14 GMT
CMD ["gradle"]
# Tue, 02 Oct 2018 11:44:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 02 Oct 2018 11:44:15 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 02 Oct 2018 11:44:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 02 Oct 2018 11:44:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 02 Oct 2018 11:44:18 GMT
USER [gradle]
# Tue, 02 Oct 2018 11:44:19 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 02 Oct 2018 11:44:19 GMT
WORKDIR /home/gradle
# Tue, 02 Oct 2018 11:44:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b9886f96c1f9394ba76a75262b09bb6ad6b8100a8d94cf87089d43cb2068efe3`  
		Last Modified: Wed, 05 Sep 2018 11:47:17 GMT  
		Size: 47.7 MB (47670424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203b1cc1f2b55f95ed71809ae9ea5d67d78156f617f3321574955a3bf2c43e96`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 7.1 MB (7059600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11d48b0ceace2a58877479a5838ea5f51cbc6bd1e0b4f5823e44e519817de19`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 9.2 MB (9222100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059acf3f028d654702f3596c76e3c5df197bc5c9682b500da63636d224ef5974`  
		Last Modified: Wed, 05 Sep 2018 12:49:08 GMT  
		Size: 50.7 MB (50664680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e385ec24203bc99e7ec9f492c7980d7597f86796c0d8679ad6355799913ee78`  
		Last Modified: Wed, 05 Sep 2018 18:22:01 GMT  
		Size: 909.8 KB (909804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620a26c43a47cc042a20da609bc0c4a3a3a8731e5412df11c57b7daf601a651b`  
		Last Modified: Wed, 05 Sep 2018 18:22:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0741414a2b5d5bcf8e5808698abc84e396ce075710694dc80718b694dfb79c61`  
		Last Modified: Sat, 08 Sep 2018 12:12:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331352f9d09b281b4228c5badf37466767a05182d09309915320cada040014ec`  
		Last Modified: Sat, 29 Sep 2018 12:14:59 GMT  
		Size: 330.6 MB (330606916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01eb35beea42fcce5693cd5cae5689d1543e943e4ea28d6776e0a02509183261`  
		Last Modified: Tue, 02 Oct 2018 11:46:04 GMT  
		Size: 78.4 MB (78405917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2373f3ba5c7222a1d04e742f7e6d6052741d68a80f04a375a74b3c76b4d53`  
		Last Modified: Tue, 02 Oct 2018 11:45:57 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
