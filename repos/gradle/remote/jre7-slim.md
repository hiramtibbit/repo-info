## `gradle:jre7-slim`

```console
$ docker pull gradle@sha256:efd8739dfe2e20e78f3f244534f8fd22458f7bcde939eeda234416b0c8ed0a86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `gradle:jre7-slim` - linux; amd64

```console
$ docker pull gradle@sha256:d41ab2105d04a99b59c18fabe35a4783678dbb79a04850ff69d906a4a6cb81a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182978061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e372487d541e5b3bb72cc289c85a559ed8ba5d99445402914c60ff87a373df`
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
# Mon, 24 Sep 2018 20:21:38 GMT
ENV GRADLE_VERSION=4.10.2
# Mon, 24 Sep 2018 20:21:57 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Sep 2018 20:21:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Mon, 24 Sep 2018 20:22:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 24 Sep 2018 20:22:01 GMT
USER [gradle]
# Mon, 24 Sep 2018 20:22:01 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 24 Sep 2018 20:22:01 GMT
WORKDIR /home/gradle
# Mon, 24 Sep 2018 20:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
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
	-	`sha256:0447b6e6a7e3353db587c16cd2ba21dc2a3b443bdd3c5e0e911d4dcea021023e`  
		Last Modified: Mon, 24 Sep 2018 20:29:30 GMT  
		Size: 12.4 MB (12360220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b48e2234e8b6e976eac6a9c1aee16bb20c08f4bfdc16015b10b809c1a9e489`  
		Last Modified: Mon, 24 Sep 2018 20:29:35 GMT  
		Size: 78.4 MB (78405684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8215f1f9f2413326c2a14e5f740891941817bf88f4430702fa40396f782d0881`  
		Last Modified: Mon, 24 Sep 2018 20:29:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre7-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:1748edc2db0014121d34b5c0b043079f62d57069099d7f74f243dc325f1b4862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170888070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eaccd686ff906c0e9f681435a8f54decba632ab1dae8b71cd9a37e4923b6b9f`
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
# Tue, 25 Sep 2018 08:51:01 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 25 Sep 2018 08:51:41 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 08:51:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 25 Sep 2018 08:51:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 25 Sep 2018 08:51:50 GMT
USER [gradle]
# Tue, 25 Sep 2018 08:51:50 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Sep 2018 08:51:50 GMT
WORKDIR /home/gradle
# Tue, 25 Sep 2018 08:51:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
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
	-	`sha256:7a3102a96905091359ff73aeb1900c210d96259c58e129aa68506eca30624d50`  
		Last Modified: Tue, 25 Sep 2018 09:01:04 GMT  
		Size: 12.2 MB (12165299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63d0bf08bc8ae2efdcf6c7160684d8b9c7882fc335845118e49499cbe0fc583`  
		Last Modified: Tue, 25 Sep 2018 09:01:13 GMT  
		Size: 78.4 MB (78405595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df9d64439b27921cb4ff5ea2c62043d04b9870325478c32112f2ac1a2eb11de`  
		Last Modified: Tue, 25 Sep 2018 09:01:00 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
