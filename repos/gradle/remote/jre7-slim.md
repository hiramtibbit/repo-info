## `gradle:jre7-slim`

```console
$ docker pull gradle@sha256:98237f0340702b80dd240de3070b32e08dca5bf94fb6913df65188ec449499e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `gradle:jre7-slim` - linux; amd64

```console
$ docker pull gradle@sha256:ee6eadd543d989b5ff82687c9133ae63529341acfd3e4679f2ebd925f097c7a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182975226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6db85157f44edbf19450ef38916d6a2529d36e51d7d7e45ea538af44b0ca72`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:26:42 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:26:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:26:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:29:40 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:29:40 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 01:29:40 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 01:30:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 15:05:34 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 15:05:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Sep 2018 17:21:37 GMT
ENV GRADLE_VERSION=4.10.1
# Thu, 13 Sep 2018 17:21:56 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Sep 2018 17:21:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Thu, 13 Sep 2018 17:22:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 13 Sep 2018 17:22:00 GMT
USER [gradle]
# Thu, 13 Sep 2018 17:22:00 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Sep 2018 17:22:00 GMT
WORKDIR /home/gradle
# Thu, 13 Sep 2018 17:22:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2298fd4ed9840c0f93526d2c58380cf647aa4579e0fa6eae9c6b2cae2a19f7eb`  
		Last Modified: Wed, 05 Sep 2018 01:43:48 GMT  
		Size: 463.7 KB (463743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c7c6172ee282cedb73af91509beee5d91b6d5b3b7d35c8f05b7b0cd499145f`  
		Last Modified: Wed, 05 Sep 2018 01:43:48 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf960a7af9a0a2e14f22b99bdf374464ae406f18ee32cacbfdb8eac4bd05405`  
		Last Modified: Wed, 05 Sep 2018 01:43:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda13eb4b28d5103ad5c6e24a0ca05e02193e165833cd4b19b33b625c2da12c`  
		Last Modified: Wed, 05 Sep 2018 01:45:47 GMT  
		Size: 61.6 MB (61627332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cf61bf06988f258eaaef5369d344723bfaf215327b961a49f044d57132129d`  
		Last Modified: Thu, 13 Sep 2018 17:27:28 GMT  
		Size: 12.4 MB (12360213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2d78ecffaa6f676c091541e8b7ccccf5c5e70f9d1797721d0b84c003408f29`  
		Last Modified: Thu, 13 Sep 2018 17:27:32 GMT  
		Size: 78.4 MB (78402856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a1e51160d0a0b9bb45899612715f996ab1706efa477ce571f9880ba81bb88`  
		Last Modified: Thu, 13 Sep 2018 17:27:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre7-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:571a7f8ab14e2508f9f8ca6a9e1e7e96e2f6b936053f9d877087257a7139d57a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170885380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899f4fb434b88f5916fecbaff928f75d30af60d06d4bcf260c65bb1056d9fcc9`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:35:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:35:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 09:35:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 09:35:18 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 09:37:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 09:37:13 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 09:37:13 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 09:38:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 14:08:32 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 14:08:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 14 Sep 2018 08:51:10 GMT
ENV GRADLE_VERSION=4.10.1
# Fri, 14 Sep 2018 08:51:38 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 14 Sep 2018 08:51:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Fri, 14 Sep 2018 08:51:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 14 Sep 2018 08:51:54 GMT
USER [gradle]
# Fri, 14 Sep 2018 08:51:54 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 14 Sep 2018 08:51:54 GMT
WORKDIR /home/gradle
# Fri, 14 Sep 2018 08:51:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a245f95ad46b15c78ec19eb0d32f981a711a9e37a232279c86281687a39306`  
		Last Modified: Wed, 05 Sep 2018 09:44:21 GMT  
		Size: 456.4 KB (456444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba25b8e00f177f6e1247013c6ecf636f768670af2925c9f7363d76420407ebd4`  
		Last Modified: Wed, 05 Sep 2018 09:44:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b532d67597d91cef35fd564ccf339cd65f5e002856ae29bcb3f52d56c2e44856`  
		Last Modified: Wed, 05 Sep 2018 09:44:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bf5b80250d7a239799f00e1554236d1c38007d6cf9f7f444dae342ccf74b87`  
		Last Modified: Wed, 05 Sep 2018 09:45:35 GMT  
		Size: 51.4 MB (51429377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420aac0ed5bff6d440fcb871cc2549b78f7b69b3b62b7f8943a786082128304e`  
		Last Modified: Fri, 14 Sep 2018 08:59:07 GMT  
		Size: 12.2 MB (12165313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99261b92305993300c3fd5c0335c03a21abe52bf48e2392b53e17a70c4a1cf9d`  
		Last Modified: Fri, 14 Sep 2018 08:59:13 GMT  
		Size: 78.4 MB (78402891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8347c0f0a9f787fe7cccb5ae141f57aaa8573b1edad213017134a32d81a84aa3`  
		Last Modified: Fri, 14 Sep 2018 08:59:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
