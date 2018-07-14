## `gradle:jdk7-slim`

```console
$ docker pull gradle@sha256:a7f3a91f4b267865423b6c7ad1b6b966ec07044ab28607a71448994d83eebcd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `gradle:jdk7-slim` - linux; amd64

```console
$ docker pull gradle@sha256:babc12bfe84fb79191a3fb224ede7e822cf0055b231d4bfa56705501f1e2e50c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 MB (204118793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407b5b410304246ae3770c61dde9b3f5ae0a825f0350856997a92cff5774f976`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:33:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:33:58 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:33:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:33:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:34:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:34:00 GMT
ENV JAVA_VERSION=7u181
# Tue, 26 Jun 2018 23:34:00 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 26 Jun 2018 23:35:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 29 Jun 2018 22:24:50 GMT
CMD ["gradle"]
# Fri, 29 Jun 2018 22:24:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Jun 2018 22:24:50 GMT
ENV GRADLE_VERSION=4.8.1
# Fri, 29 Jun 2018 22:25:26 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 22:25:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Fri, 29 Jun 2018 22:25:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Jun 2018 22:25:31 GMT
USER [gradle]
# Fri, 29 Jun 2018 22:25:32 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Jun 2018 22:25:32 GMT
WORKDIR /home/gradle
# Fri, 29 Jun 2018 22:25:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b466fd40b39060e96cf1326c3764f3186bb062bb692cf9f130d477fdccf9aaf1`  
		Last Modified: Tue, 26 Jun 2018 23:57:03 GMT  
		Size: 463.7 KB (463741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d0ac1dcec173c9698e3586eb1889ea24d359fbd1f735863f5742072496ece6`  
		Last Modified: Tue, 26 Jun 2018 23:57:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711da6835f07d1b38e4677dafe89be66bb2a1de6dc07f652c470b58a22152ed`  
		Last Modified: Tue, 26 Jun 2018 23:57:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f0ea548726a61e052138c0d44ba8e5b43a3c305bca8cd2546a426daf1cb752`  
		Last Modified: Tue, 26 Jun 2018 23:57:15 GMT  
		Size: 85.3 MB (85274174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e7719aea231e7d1e40d5a23301e4302a630967fae850cb62dc4590bdab26dd`  
		Last Modified: Fri, 29 Jun 2018 22:34:31 GMT  
		Size: 12.4 MB (12384656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2197c50363c8538ff4e867eb3bb2409eb8129728de98153ee12c2badc7d34427`  
		Last Modified: Fri, 29 Jun 2018 22:34:38 GMT  
		Size: 75.9 MB (75875868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c35d1595f23d6bbd26743aae5ea2bc02767c036a73fc577fef7cd411c3ea2b`  
		Last Modified: Fri, 29 Jun 2018 22:34:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:70c1d4ee1a7e8d49ce266a6dfb8f86ac625fedccc8bbdae1e1fe246e6620721a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.2 MB (189197366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c403d062a4524706fe29d79797e16e6752635284925d477c3000d584364e129`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 08:50:04 GMT
ADD file:f9c252e838b8db10a094c47436a079487e2fe317ebc0013a271810fe968cf999 in / 
# Wed, 27 Jun 2018 08:50:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:40:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:40:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:40:32 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:40:33 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:40:33 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 12:40:34 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 12:41:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Jul 2018 08:48:34 GMT
CMD ["gradle"]
# Sat, 14 Jul 2018 08:48:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 14 Jul 2018 08:48:34 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 14 Jul 2018 08:51:22 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Jul 2018 08:51:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 14 Jul 2018 08:51:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 14 Jul 2018 08:51:29 GMT
USER [gradle]
# Sat, 14 Jul 2018 08:51:30 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 14 Jul 2018 08:51:30 GMT
WORKDIR /home/gradle
# Sat, 14 Jul 2018 08:51:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:174cee00e71be1a79f61029d2ef1a01e0060cb74e2d18dc5aca18cbea3159528`  
		Last Modified: Wed, 27 Jun 2018 08:58:54 GMT  
		Size: 28.4 MB (28430287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a502f46feaf43e90f170639559ea3f575f855d4dbd5f942544851c62d5b04f7b`  
		Last Modified: Wed, 27 Jun 2018 12:59:20 GMT  
		Size: 456.4 KB (456446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9452e24aa94632019691517d67876e62050292ad552dd5960429943406beda`  
		Last Modified: Wed, 27 Jun 2018 12:59:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e84410dfaeb9b116e226930dbeee42f39ad8c9611864e13f5a0d592ad0f788`  
		Last Modified: Wed, 27 Jun 2018 12:59:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f5c567dd55339ecc707122c448fe56a015712dad5a94f9a7336b1502f0ffc9`  
		Last Modified: Wed, 27 Jun 2018 12:59:32 GMT  
		Size: 72.2 MB (72242387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94888032651f3e9aab14af173031e486f8c6b74cba8993c8571346c05aa9c83c`  
		Last Modified: Sat, 14 Jul 2018 08:55:12 GMT  
		Size: 12.2 MB (12191606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ddd7860a5a9e3ccb776bbb511c6b018c23ebff664315fd2799e52631cbabb3`  
		Last Modified: Sat, 14 Jul 2018 08:55:17 GMT  
		Size: 75.9 MB (75876028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd23fc62f8e85f6bb4a08257d814eb49cff47a72d858126f318fe96410d231dd`  
		Last Modified: Sat, 14 Jul 2018 08:55:08 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-slim` - linux; 386

```console
$ docker pull gradle@sha256:b2a3923a91c7591196fa395dddae9577ad83de7d6ebaf9ed6ebfba065b5f7600
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216328007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5386d78c94270080a9a5d049e84f39d8628ad78b80c47389c83b1bea1f59c4da`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:20:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:20:03 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:20:05 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:20:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 15:20:06 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 15:20:06 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 15:21:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 30 Jun 2018 10:42:59 GMT
CMD ["gradle"]
# Sat, 30 Jun 2018 10:42:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Jun 2018 10:42:59 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 30 Jun 2018 10:43:43 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 30 Jun 2018 10:43:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 30 Jun 2018 10:43:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Jun 2018 10:43:49 GMT
USER [gradle]
# Sat, 30 Jun 2018 10:43:49 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Jun 2018 10:43:50 GMT
WORKDIR /home/gradle
# Sat, 30 Jun 2018 10:43:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ecc1d61c7e4f9d92c42aa04c2c34df4a177075b5e03757cd2e9763398cdfeb`  
		Last Modified: Wed, 27 Jun 2018 15:34:05 GMT  
		Size: 466.3 KB (466301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c7e2782264f446bd837b4d66b7a139ab8eaa08fc2cd1b899df57f6d2209fcd`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104cf7f40f84e06d4be0be1bb678f84432eedb0d07eaab0f1e54bccfd21e2e40`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26438957b3628d59e1abb9dd905665eabb1a1d3093aa241010d37bc71aed6bbb`  
		Last Modified: Wed, 27 Jun 2018 15:34:30 GMT  
		Size: 97.2 MB (97195128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50209f3949a55f22a2f25289bb2537b3fe814da145eb794c85e898ccbe0631d`  
		Last Modified: Sat, 30 Jun 2018 10:48:35 GMT  
		Size: 12.5 MB (12520557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e73807efc73d0b3c641acc3b8e7c55bb247de7ec27c480645ca100537ba7d3c`  
		Last Modified: Sat, 30 Jun 2018 10:48:40 GMT  
		Size: 75.9 MB (75875825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40393b26fa040d4384adb381ba82c5d3911338a21265f09402dc049ce19ef40`  
		Last Modified: Sat, 30 Jun 2018 10:48:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
