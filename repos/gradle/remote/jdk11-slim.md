## `gradle:jdk11-slim`

```console
$ docker pull gradle@sha256:d4c077ab992396eec90f90212ebca2deaa6eb473b8fbe4e82428f0e826372e4d
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

### `gradle:jdk11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:b2f0cf59c8b649c8de73f25f8ec92c1bdbb079145bd7c5e1bd233ab19b5af968
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.1 MB (381102457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abca575be470c020c0da2bef2eae18c724e1c3608dc8c1222e5ec57505984d3f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:54:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 02:54:21 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:54:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 02:54:24 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 02:55:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 02:55:12 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 10:48:00 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 10:48:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 29 Dec 2018 10:48:00 GMT
ENV GRADLE_VERSION=5.0
# Sat, 29 Dec 2018 10:48:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:48:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Sat, 29 Dec 2018 10:48:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 29 Dec 2018 10:48:15 GMT
USER gradle
# Sat, 29 Dec 2018 10:48:15 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 29 Dec 2018 10:48:15 GMT
WORKDIR /home/gradle
# Sat, 29 Dec 2018 10:48:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762c9dfbe1b522fbb875c7c59c8952d87108fc60057e726c938bd76ffd15e861`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 454.8 KB (454826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3e7cdb7598b8fa0a59f7e3a30e4b0004d9e66fe8d3e2f43a5eecfa646b842`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0b10575b21db56a473d5c1a3633bd1f411b74536bb6aec22f0ea04889b1c61`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e429842a7076cd1d06b9b635993971d64b7a9b08f5cfc1f1ef5fba4ff2653f`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87db85bb6be6051a47734f67014e7c7ed425a55afbec761010d91bf70bb2250`  
		Last Modified: Sat, 29 Dec 2018 03:22:53 GMT  
		Size: 271.6 MB (271568870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6441372bdc84932659825db655e3998328c96329e21cfbfea560f011f0e1a75`  
		Last Modified: Sat, 29 Dec 2018 10:51:25 GMT  
		Size: 1.1 MB (1100023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d28a435b0e5189b83cf186a441ef7dc39cd3c841d6c849a4813bc7d810dadf1`  
		Last Modified: Sat, 29 Dec 2018 10:51:31 GMT  
		Size: 85.5 MB (85485081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a6ca23ca39c25b0302297d9e68d82aa0a4dcbba5d5b502c3534aade385bf89`  
		Last Modified: Sat, 29 Dec 2018 10:51:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:2b11f988a5c9052d711a8380d7bbbba07978298a2669fdf3c9f1d3372a2149f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317215898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f3d4bb3258aa16a60fd9385f95381203b7d726a43536ffeb5bc150d38b2a3d7`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:52:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:52:21 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:52:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:52:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:52:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:52:26 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:52:26 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 09:54:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 09:54:10 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 10:19:42 GMT
CMD ["gradle"]
# Fri, 28 Dec 2018 10:19:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 28 Dec 2018 10:19:43 GMT
ENV GRADLE_VERSION=5.0
# Fri, 28 Dec 2018 10:19:54 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 10:19:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Fri, 28 Dec 2018 10:20:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 28 Dec 2018 10:20:02 GMT
USER gradle
# Fri, 28 Dec 2018 10:20:02 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 28 Dec 2018 10:20:03 GMT
WORKDIR /home/gradle
# Fri, 28 Dec 2018 10:20:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170d2c781892c05bd05b5c851c59acbae264c3e02d21a48a19aa82348b10a947`  
		Last Modified: Fri, 16 Nov 2018 19:04:05 GMT  
		Size: 447.7 KB (447702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2cf9cabec3008eec5dbaaf493693b467c5a394ab1e0c4ee7559ee11986d8f0`  
		Last Modified: Wed, 26 Dec 2018 10:03:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafd32ba7dd43cb20c5532c18ec4478f97fddc409e201c33cb66666df4bd2cf2`  
		Last Modified: Wed, 26 Dec 2018 10:03:59 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6894bf63be1b8a2e1987c78af2a896053d043c73f932afb583a56f5aedd0367`  
		Last Modified: Wed, 26 Dec 2018 10:03:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b970d43c0aa7006f489d07270461981731cfbb2d2eda802675549845380e396`  
		Last Modified: Fri, 28 Dec 2018 10:01:38 GMT  
		Size: 209.1 MB (209057296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a309d35f3b8cb3bbd36df37501bc7039934cdd5b6a7e06849a1e12d48c99367c`  
		Last Modified: Fri, 28 Dec 2018 10:21:57 GMT  
		Size: 1.1 MB (1061964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ece05d19d5e5f515ec914fc7469ab1986dbe70cd33b294038474195a87638c`  
		Last Modified: Fri, 28 Dec 2018 10:22:09 GMT  
		Size: 85.5 MB (85485088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ade6faa059e75c92293664bb684295e1cc71a5ec92c25c1b2e1404c3ba8951`  
		Last Modified: Fri, 28 Dec 2018 10:21:56 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:0c60916f9cf3f82a05c946f65483a2534814fe9798b032c8dec834554cbf5814
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 MB (334603373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579151b467b6dc0cd9bdde2622432486eaf15338f7a7848eb51063990e3d816a`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 15:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:07:10 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 13:07:10 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 13:07:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 13:07:13 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 13:07:14 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 13:07:14 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 13:07:15 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 13:01:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 13:01:21 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 13:36:29 GMT
CMD ["gradle"]
# Fri, 28 Dec 2018 13:36:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 28 Dec 2018 13:36:30 GMT
ENV GRADLE_VERSION=5.0
# Fri, 28 Dec 2018 13:36:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 13:36:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Fri, 28 Dec 2018 13:36:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 28 Dec 2018 13:36:47 GMT
USER gradle
# Fri, 28 Dec 2018 13:36:47 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 28 Dec 2018 13:36:48 GMT
WORKDIR /home/gradle
# Fri, 28 Dec 2018 13:36:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900b7f980d02b18fd554d5a5409355f8f3dcf17d873c9b6c50864ae9348b2fd3`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 430.6 KB (430585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476b041cd72a707f94d9ccee494ab21c2bb259e94f61c0209733f267c0f1535f`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f51b9d669394d576afa25b79f8b21d40a10f97cec48c59e7100fcfc79306b`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a79fe6b3ae7f7915662a0b94e1ecea77fa5546a444cec260667337730ea4b27`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c3df71744bcfc968ceec6ed2f03fd96765cf80c7c0345624e7ecd89f0c40e9`  
		Last Modified: Fri, 28 Dec 2018 13:14:28 GMT  
		Size: 228.4 MB (228381812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01135d69a10ba95e531673ad205b44101b22382785286768332dc0bfb9862ab8`  
		Last Modified: Fri, 28 Dec 2018 13:38:33 GMT  
		Size: 1.0 MB (1035002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b7d9f68dfeb4b2029dcd95e8b7e270462c636cb136974d6600ca2273d2d090`  
		Last Modified: Fri, 28 Dec 2018 13:38:49 GMT  
		Size: 85.5 MB (85485075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd54b8af59d0184eb17cffedb6ca4666e1678118968a6e2a0b0c63985a5a3e01`  
		Last Modified: Fri, 28 Dec 2018 13:38:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a1b92e7b531ad1cc904f54891d202d623e420a057a5a163ee18670d137caed43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.0 MB (355963772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131138ab0f5c344ec5d2575ee77f9ac0333d0767c79d617c62e27a13d20ec09b`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:55:02 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:55:03 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:55:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:55:09 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:55:09 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:55:10 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:55:11 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 09:54:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 09:54:47 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 10:26:50 GMT
CMD ["gradle"]
# Fri, 28 Dec 2018 10:26:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 28 Dec 2018 10:26:52 GMT
ENV GRADLE_VERSION=5.0
# Fri, 28 Dec 2018 10:27:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 10:27:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Fri, 28 Dec 2018 10:27:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 28 Dec 2018 10:27:25 GMT
USER gradle
# Fri, 28 Dec 2018 10:27:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 28 Dec 2018 10:27:27 GMT
WORKDIR /home/gradle
# Fri, 28 Dec 2018 10:27:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d594caf9c11b4dd5588375b02cdab683c1f3ff4e66526d98aa006e849a8dea`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 440.9 KB (440857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ceae6d030cc01625eb8d6e7669a42e3416a2eb26b87ea4ebc3ab18741840f3`  
		Last Modified: Wed, 26 Dec 2018 10:24:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4f72fa75e7c380c29379ea5a108155f20935f0378e9394a20e2049d7fe81d1`  
		Last Modified: Wed, 26 Dec 2018 10:24:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4db83c7f04ee2f516c0244814c0f273a9b67b7ab50da20a8199b5462a2a16f`  
		Last Modified: Wed, 26 Dec 2018 10:24:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a18bf25bbb1e65a630f05297147142a61d4cab6f7b9d07bed635a30e307761`  
		Last Modified: Fri, 28 Dec 2018 10:07:14 GMT  
		Size: 248.6 MB (248649843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7949641912fb87a4b5eea3b11b73b0dcf0f4e5d3eee5891f7d73550322a852e8`  
		Last Modified: Fri, 28 Dec 2018 10:30:39 GMT  
		Size: 1.1 MB (1055848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b069a683197c83427403c0f0ad533bf5a45e81c6e0ee0de8e261b19d7d7d3e`  
		Last Modified: Fri, 28 Dec 2018 10:30:56 GMT  
		Size: 85.5 MB (85485106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b000520c6ebf72a9e67ac1104549efb22b6c2e6705281c4456dcbff38ed4e3e7`  
		Last Modified: Fri, 28 Dec 2018 10:30:38 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; 386

```console
$ docker pull gradle@sha256:e3f0652b39fdd7357bd06e8254a90064939f97f29af0c34adbf762637ca485c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.7 MB (443674452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c52e41f6df0343fdce3f884c75a81be715550750540ba7f0919a8c066e12dc`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 14:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:10:01 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:10:01 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:10:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:10:02 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:10:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:10:03 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:10:03 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 11:40:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 11:40:56 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 13:31:28 GMT
CMD ["gradle"]
# Fri, 28 Dec 2018 13:31:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 28 Dec 2018 13:31:28 GMT
ENV GRADLE_VERSION=5.0
# Fri, 28 Dec 2018 13:31:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 13:31:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Fri, 28 Dec 2018 13:31:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 28 Dec 2018 13:31:38 GMT
USER gradle
# Fri, 28 Dec 2018 13:31:39 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 28 Dec 2018 13:31:39 GMT
WORKDIR /home/gradle
# Fri, 28 Dec 2018 13:31:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d03dee212f9be81a5e3d859461fb2bb45b3e94124fc8ff506a0cc3ad8828de`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 463.5 KB (463502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac8302da9a3c395d39895e696589ca5ef94c964ffec011686a3c0c01f74ac07`  
		Last Modified: Wed, 26 Dec 2018 12:17:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f3df12f603f01cbaf89dafe5877a0d53cf9e601d577e494db82287258e12c`  
		Last Modified: Wed, 26 Dec 2018 12:17:05 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db633c3217f720b875526678c1e412c6358fff0284d03961abdbcd9f986c71`  
		Last Modified: Wed, 26 Dec 2018 12:17:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bd8d26d851e4c6ef8a7867425404903630efefdf03962de17c9c437c11179c`  
		Last Modified: Fri, 28 Dec 2018 11:45:26 GMT  
		Size: 333.5 MB (333476488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11b2b8d239ee3f454c6bb9ea4881fb4707692c8a5596517fcc994170c09610`  
		Last Modified: Fri, 28 Dec 2018 13:32:49 GMT  
		Size: 1.1 MB (1121838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4173239214969186a1d8e40c5ba5a05c90f57bcf66e7fcbfd0578ccd40d2298f`  
		Last Modified: Fri, 28 Dec 2018 13:32:57 GMT  
		Size: 85.5 MB (85485105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887d34f31632c1c017f767bdbc594c1ab7fd644108ba15f0f52ee4f8439c42af`  
		Last Modified: Fri, 28 Dec 2018 13:32:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:860f6d0f1966fb6e5b6eb143898a2465f4970632624573f89ad2a006e49ae9ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.7 MB (348672804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9fe7ff3d16f5a92d710ba4e80dc4cd0f7baa1c8abd2ff5857275334a8dfbd40`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:11:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:44:44 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:44:46 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:44:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:44:55 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:44:56 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:44:58 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:45:00 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 09:22:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 09:22:56 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 10:23:27 GMT
CMD ["gradle"]
# Fri, 28 Dec 2018 10:23:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 28 Dec 2018 10:23:31 GMT
ENV GRADLE_VERSION=5.0
# Fri, 28 Dec 2018 10:23:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 10:23:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Fri, 28 Dec 2018 10:23:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 28 Dec 2018 10:24:00 GMT
USER gradle
# Fri, 28 Dec 2018 10:24:02 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 28 Dec 2018 10:24:05 GMT
WORKDIR /home/gradle
# Fri, 28 Dec 2018 10:24:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4afa5814d1a6b68fcdc7af12ef2fb2e6f8776d66c8deb23ca45c4577c7377`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 449.8 KB (449757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c904011265ab36e8915132a638b7332b1dabc10069b2da304a57d9318ec4d33`  
		Last Modified: Wed, 26 Dec 2018 10:07:11 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ce3e1f8c7f710ac4f39df74c8132543c55adaaa9b38f6a5a7ed3fc85c13202`  
		Last Modified: Wed, 26 Dec 2018 10:07:11 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f070f0bdfd41eca56db8b740dd969cd24a4be430178e2ad179123c2877a510`  
		Last Modified: Wed, 26 Dec 2018 10:07:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05c45ec4f370232705c092b0f1362466bfe2cf227f5269948ba1ec6b5ad6432`  
		Last Modified: Fri, 28 Dec 2018 09:32:01 GMT  
		Size: 238.9 MB (238911306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc041d57c5345ad7f441421073149e68afedef94da1e373a8d979d9b1102043c`  
		Last Modified: Fri, 28 Dec 2018 10:27:02 GMT  
		Size: 1.1 MB (1085068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c22dd5b6635d392a89e5b3e3807de0a6585e34e8a90a14fb4e6f928de9367f9`  
		Last Modified: Fri, 28 Dec 2018 10:27:10 GMT  
		Size: 85.5 MB (85485115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1755ce04721056de9fe02894fd50dbc66664947c4bff44d5b94d3eefdc11d160`  
		Last Modified: Fri, 28 Dec 2018 10:27:01 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; s390x

```console
$ docker pull gradle@sha256:1ebe33810806376d00ecccb5c3bb6ce3ff04fd1071274bad4548b5f4089e1dbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.5 MB (348536702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ffcadc62536ac7726c75a4d450b747ec90e4b733f0bdf2f33ce6f4440f266e`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:50:40 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:50:40 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:50:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:50:42 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:50:42 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:50:42 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:50:42 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 12:43:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 12:43:30 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 13:10:42 GMT
CMD ["gradle"]
# Fri, 28 Dec 2018 13:10:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 28 Dec 2018 13:10:42 GMT
ENV GRADLE_VERSION=5.0
# Fri, 28 Dec 2018 13:10:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 13:10:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Fri, 28 Dec 2018 13:10:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 28 Dec 2018 13:10:52 GMT
USER gradle
# Fri, 28 Dec 2018 13:10:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 28 Dec 2018 13:10:52 GMT
WORKDIR /home/gradle
# Fri, 28 Dec 2018 13:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d91749347b96136484261ecd380323abe2a6e1239b2fc43f11ac5b40645a54`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 465.7 KB (465732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44a65d3003a9dabaca41cfc5c87e9d5ff74b126c3b47154595a0b3bfd1d5ff5`  
		Last Modified: Wed, 26 Dec 2018 12:56:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2500f21734917b5d530dab564ebc047ff69588f3a2fa79da0c0b6a3255f403c8`  
		Last Modified: Wed, 26 Dec 2018 12:56:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78811acc3b9307db867f591c50a41e851c9e47096f2814c6e7c08bd2db1e3b`  
		Last Modified: Wed, 26 Dec 2018 12:56:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ecb349576fd665d18ea7f6e609fd8f2d831205ee08909c676dee940a3a3c0a`  
		Last Modified: Fri, 28 Dec 2018 12:46:57 GMT  
		Size: 239.1 MB (239140250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd9e727f57af97d84c6c791ee302cd9a61a59b5e3e8eaea99e854f94a36d633`  
		Last Modified: Fri, 28 Dec 2018 13:12:09 GMT  
		Size: 1.1 MB (1110110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ce49ea4962f88d25de2e6257926cb64ae8ca74ba1d6002a79d013bc5b0e882`  
		Last Modified: Fri, 28 Dec 2018 13:12:14 GMT  
		Size: 85.5 MB (85485085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26459b043226546d45ff400c4294bbb62b8098480a656bd1f1d90b4886bbef2c`  
		Last Modified: Fri, 28 Dec 2018 13:12:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
