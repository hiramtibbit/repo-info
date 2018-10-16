## `gradle:jdk11`

```console
$ docker pull gradle@sha256:39fc1d74d97512abafc866012d1f8f59d0e44f78f59226f9924117733c4374e3
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
$ docker pull gradle@sha256:ba3b515b302f93023521db977d424e60944de76a1a4b4783229332c45185499e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **524.2 MB (524214743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5a1dc073c0e589829713c6392a47f506f4d90eb8a3b6f2cad2ff0af9aeb6ae`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 12:03:01 GMT
ADD file:3d47e4eafb1700975274b7c68ee1bd156e101e5252d990f75937d97a90f7b613 in / 
# Tue, 16 Oct 2018 12:03:02 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:56:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:56:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:14:15 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:14:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:14:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:14:21 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 13:14:22 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 13:14:22 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 13:18:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 13:18:12 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 13:51:54 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 13:51:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 13:51:55 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 13:51:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 13:52:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 13:52:02 GMT
USER [gradle]
# Tue, 16 Oct 2018 13:52:02 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 13:52:03 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 13:52:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:4760d7874360cf16afc72e3ed07e58414d51cccfc8023f0bf68562c82bc5c471`  
		Last Modified: Tue, 16 Oct 2018 12:14:27 GMT  
		Size: 44.7 MB (44685243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf3556848531bb0de55219dfc3b1b3ead9022491a581f3743bb1deed1be8020`  
		Last Modified: Tue, 16 Oct 2018 13:08:04 GMT  
		Size: 6.7 MB (6695969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff12a4449485ceb38e16a1bd08c8ddf2cb0f1ab093e8bf728aa26f5a57eb3143`  
		Last Modified: Tue, 16 Oct 2018 13:08:05 GMT  
		Size: 9.1 MB (9147432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d2c4fc3e2ae61ecf280521f31277e7e3a7402650d05fbc344154d64376bd35`  
		Last Modified: Tue, 16 Oct 2018 13:08:35 GMT  
		Size: 46.7 MB (46655506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9a03ed5bb81df2dae86b6f7b8aba584673fee038bfe4ae6eb7ad9a1c78f70c`  
		Last Modified: Tue, 16 Oct 2018 13:36:54 GMT  
		Size: 871.4 KB (871406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068a6e1ae2d0f633949a6a36c810b1ddcf17f3432cba4c4f9824e547c0f79a5b`  
		Last Modified: Tue, 16 Oct 2018 13:36:54 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5bf09a6663a7a9de232ce93dfeb671a7ae37f4cfd895b2dc44d08f03a14784`  
		Last Modified: Tue, 16 Oct 2018 13:36:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151190822f0578a1b63007a30fb619f62f786aa7e08b58b7d9e1384b5d335135`  
		Last Modified: Tue, 16 Oct 2018 13:37:51 GMT  
		Size: 337.8 MB (337752693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7335efb97666c6ab184fff2a236bfda993d9da294c5b8683409a436e3487e195`  
		Last Modified: Tue, 16 Oct 2018 13:54:18 GMT  
		Size: 78.4 MB (78405888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5eb0f9c706526be4c3efb80db5718fa19ffa875e77488d81d829686833034`  
		Last Modified: Tue, 16 Oct 2018 13:54:03 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a16331d0ed70f421469b9ea512eba310737d1046efe28ee0f36bbeb248d1b113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.2 MB (566219983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1cd82d1277d8e091bdab29d3df0cd5638de9887faafed4d812927695038e5eb`
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
# Fri, 05 Oct 2018 09:21:50 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 09:28:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 09:28:20 GMT
CMD ["jshell"]
# Fri, 05 Oct 2018 10:04:31 GMT
CMD ["gradle"]
# Fri, 05 Oct 2018 10:04:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 05 Oct 2018 10:04:32 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 05 Oct 2018 10:04:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 05 Oct 2018 10:04:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 05 Oct 2018 10:04:49 GMT
USER [gradle]
# Fri, 05 Oct 2018 10:04:50 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 05 Oct 2018 10:04:51 GMT
WORKDIR /home/gradle
# Fri, 05 Oct 2018 10:04:56 GMT
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
	-	`sha256:0e6b5030e3bd31f4cd5f24417c37c4a1708257af696016d3cb0e2a13c43a74b3`  
		Last Modified: Fri, 05 Oct 2018 09:41:22 GMT  
		Size: 372.0 MB (372023002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0dd66c75a0971a0479549c10a4256b06deca3b19ad498da07be31abd4fbd7f`  
		Last Modified: Fri, 05 Oct 2018 10:08:29 GMT  
		Size: 78.4 MB (78405957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaa226a63c8ba932fc4453bd870a5eaac00e1d597b0e787e2a5f8eb5c93c5ee`  
		Last Modified: Fri, 05 Oct 2018 10:08:18 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; 386

```console
$ docker pull gradle@sha256:6b1196584f750e01966c1aab383b5843d569e022344d5d23ca81bc240e66de45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.1 MB (672101269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42299b265991255908fa1683947cb6dea7bcc21a6c429f45a9d4e0d5eb5005cf`
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
# Fri, 05 Oct 2018 11:06:16 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 11:07:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 11:07:55 GMT
CMD ["jshell"]
# Fri, 05 Oct 2018 11:34:29 GMT
CMD ["gradle"]
# Fri, 05 Oct 2018 11:34:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 05 Oct 2018 11:34:29 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 05 Oct 2018 11:34:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 05 Oct 2018 11:34:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 05 Oct 2018 11:34:34 GMT
USER [gradle]
# Fri, 05 Oct 2018 11:34:34 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 05 Oct 2018 11:34:35 GMT
WORKDIR /home/gradle
# Fri, 05 Oct 2018 11:34:36 GMT
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
	-	`sha256:e7279fdf630a8ba77560f6be824cb65aa902e99baeee98fc0a679c70ee408175`  
		Last Modified: Fri, 05 Oct 2018 11:12:20 GMT  
		Size: 473.1 MB (473116226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5e393a160168b2f38ae1b18cdf2db785c3e1d2cecdc7a7b3c87c3b337f1aba`  
		Last Modified: Fri, 05 Oct 2018 11:36:06 GMT  
		Size: 78.4 MB (78405873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a354a236003e30ad090ec55a7854e7e0405e48619f6ebaa9d514c6e362be23`  
		Last Modified: Fri, 05 Oct 2018 11:35:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:3360e009c6e5d50be3f51cf6cfb987ae908bbee1859ce0acbb7f3d26676aea8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **571.2 MB (571179576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5555086b01913a3ae2afd776561a838dc7bb7edc62aa0c9f6f6dda1d5fe0c419`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:05 GMT
ADD file:d9b7fdbd5284d601c2fa0ac9ef56d94501675e8bb1272b818f990813457dad97 in / 
# Tue, 16 Oct 2018 08:19:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:33:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:34:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:39:54 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 14:39:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 14:40:00 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 14:40:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 14:40:02 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 14:40:04 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 14:45:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 14:45:44 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 16:29:44 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 16:29:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 16:29:47 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 16:29:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 16:29:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 16:29:57 GMT
USER [gradle]
# Tue, 16 Oct 2018 16:29:58 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 16:29:59 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 16:30:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:266ba3ea23b4937c573be52c8dbda3ecd61615aa8a826c0f19bd1519b482bc99`  
		Last Modified: Tue, 16 Oct 2018 08:27:28 GMT  
		Size: 52.1 MB (52120737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e6f3713eef6a8650ec4bf4167b39cb239334429d5c2733fa67322152e2f75`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 7.8 MB (7767281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c1406edfbf4000946a084c99d2dcae8c42613c41d2b8837c867e2f41f42551`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 10.5 MB (10523368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6649af4f26043502717dc3f793eef48c195aecea7c6b420c3bdd490bda630`  
		Last Modified: Tue, 16 Oct 2018 11:04:20 GMT  
		Size: 57.0 MB (56995714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d3107bc827d46e838f91f7a855e45ba8bb724763cffa361eab9390233528db`  
		Last Modified: Tue, 16 Oct 2018 15:22:33 GMT  
		Size: 895.1 KB (895077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10f9dc091878a59fe5a65300f96ca378e6872e0394f79137d987d13165511b0`  
		Last Modified: Tue, 16 Oct 2018 15:22:32 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc28bf59648a798af4885abf77d3f2bffbb90721fb4077bcdaddb7a200853815`  
		Last Modified: Tue, 16 Oct 2018 15:22:32 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37b6893fdf00deda4b292121347f74b600d52269b7f825d80726492ed45232a`  
		Last Modified: Tue, 16 Oct 2018 15:24:01 GMT  
		Size: 364.5 MB (364470874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961dbeab637db721836d65f44360a848090a34f85e2223fce172c3335cfbd505`  
		Last Modified: Tue, 16 Oct 2018 16:40:26 GMT  
		Size: 78.4 MB (78405915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec985d1db2ac17098cdb3c1835a94f249667133b5f16047c7e163c0f1ff08bc`  
		Last Modified: Tue, 16 Oct 2018 16:40:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; s390x

```console
$ docker pull gradle@sha256:972c2d1bd1abb10f5cae78ec8fcb845233fe85e706cb4ee62a2828725746ebdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **524.7 MB (524653764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9419c71b3b9e5d24dd2daab3d182766d5099d14c0fc27e827a145a5205a8cc`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 11:41:58 GMT
ADD file:c2788418bf37902fd1afb90f8c09580137baf257270ad310c93f4617b2910c5c in / 
# Tue, 16 Oct 2018 11:41:58 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:52:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:52:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:52:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:00:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:00:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:00:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:00:36 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:00:36 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 13:00:36 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 13:00:36 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 13:01:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 13:01:48 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 14:54:27 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 14:54:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 14:54:28 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 14:54:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 14:54:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 14:54:35 GMT
USER [gradle]
# Tue, 16 Oct 2018 14:54:36 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 14:54:36 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 14:54:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3d678438ae7450e08efed3c628d6a7e353e585928d4dfe02330f09708b274772`  
		Last Modified: Tue, 16 Oct 2018 11:44:43 GMT  
		Size: 47.7 MB (47695841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370423f265313c06fe7dd635c4b99d81682ced500c2b77a849335c6f0d80cc04`  
		Last Modified: Tue, 16 Oct 2018 12:57:15 GMT  
		Size: 7.0 MB (7035166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeca24a03568efca643ee17996da4af2979d3da4313f8c2b884ffa852c56204`  
		Last Modified: Tue, 16 Oct 2018 12:57:15 GMT  
		Size: 9.7 MB (9670377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab206992eb083e779de5da810384a9c84c11310c45a5b9fd82ebae123edb8722`  
		Last Modified: Tue, 16 Oct 2018 12:57:31 GMT  
		Size: 50.8 MB (50751889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c97637c1b8d048ca5122be0234a07c8c53ec52e4b613135f7ec43459787f01a`  
		Last Modified: Tue, 16 Oct 2018 13:07:24 GMT  
		Size: 906.0 KB (905960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ce8bd73bdaca7e23dcb5e1584bdbeeaf16d6f510e1f0beab7ee056d561f71`  
		Last Modified: Tue, 16 Oct 2018 13:07:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c868eecc1c1ace184f8d3454e584223b69154c73c3641710c81d145a6b11e8`  
		Last Modified: Tue, 16 Oct 2018 13:07:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385f413fb1d3282008e9159ebb3a4c6fcfad15b782c10ffc7af3a1bf8c0a267a`  
		Last Modified: Tue, 16 Oct 2018 13:07:59 GMT  
		Size: 330.2 MB (330188048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15e6bd98eb07647fac6a173182632ee4f98c588dcd7e6ff26d58ccd3d3ac864`  
		Last Modified: Tue, 16 Oct 2018 14:59:53 GMT  
		Size: 78.4 MB (78405909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05de4b2528bb7dea0b9ce7a5953cd3b54cab954c0099adf0692e8df2e30cd83d`  
		Last Modified: Tue, 16 Oct 2018 14:59:45 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
