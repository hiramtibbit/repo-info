## `gradle:jdk11`

```console
$ docker pull gradle@sha256:1bac56b915a5d66fa99a4e857d8d18658ccb61467637c0e123fae31be54f7bff
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
$ docker pull gradle@sha256:bf5c22c897d4d57c84556d68f285eecef780dba4ba0e96959e8a11046bafd2b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.3 MB (522318091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb522441ae11d6d2c29327f0f1cdd778e0bdf2a413256dc3f9cf55313b12ad77`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 08:29:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 08:29:38 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 08:29:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 08:29:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 08:29:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 08:29:39 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 08:29:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 00:21:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 00:21:25 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 00:55:33 GMT
CMD ["gradle"]
# Fri, 28 Dec 2018 00:55:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 28 Dec 2018 00:55:34 GMT
ENV GRADLE_VERSION=5.0
# Fri, 28 Dec 2018 00:55:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Fri, 28 Dec 2018 00:55:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 28 Dec 2018 00:55:40 GMT
USER gradle
# Fri, 28 Dec 2018 00:55:41 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 28 Dec 2018 00:55:41 GMT
WORKDIR /home/gradle
# Fri, 28 Dec 2018 00:55:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a84aafc5010d7c2aef2f8e9422fd37c8136fe5aad75ac4e51b875aba6a43b4`  
		Last Modified: Wed, 26 Dec 2018 08:37:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274ee31220a890006169c081d33a7a1e2f8cfa3d967d6c819e5d0b231ffd6f30`  
		Last Modified: Wed, 26 Dec 2018 08:37:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d567c51dd7aa2102f286187f8f9587531f5fd043cf0beba562ce323fcafa16aa`  
		Last Modified: Wed, 26 Dec 2018 08:37:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e0585fb03353a6b30f72906432c681091d04aba578d5f965b4515e09baf20a`  
		Last Modified: Fri, 28 Dec 2018 00:27:11 GMT  
		Size: 325.5 MB (325476176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e814d637e499e32709f232b0e86cc3f28fcf6b8f21d68c9304e9dc3d888c7fcf`  
		Last Modified: Fri, 28 Dec 2018 00:57:13 GMT  
		Size: 85.5 MB (85485052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f151397554075cdd569e8b3b755b44513ca195dfd991ffd93bdd2299d0cc7ac5`  
		Last Modified: Fri, 28 Dec 2018 00:57:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; arm variant v5

```console
$ docker pull gradle@sha256:e19af1823f8c1720cb7888d1d26585257c89f84f71340f01deef0fc257ce3bf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455038201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c6fcfd164d2eefda5366bded87aa6ff7f67f80c78c86948fe68c39ebfdb704`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:37:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Nov 2018 10:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:49:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:49:36 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:49:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:49:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:49:39 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:49:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:52:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:52:09 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 11:22:18 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 11:22:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 11:22:19 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 11:22:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 11:22:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 11:22:27 GMT
USER gradle
# Wed, 26 Dec 2018 11:22:27 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 11:22:28 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 11:22:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad5842ea5c57b54a3234d4466d9ce27f85b88e78d462439d74bec92845106b1`  
		Last Modified: Fri, 16 Nov 2018 18:51:10 GMT  
		Size: 9.8 MB (9810920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ae1b142cf8073085a020a4a857f81411f8267cb771b9888c23164cebfad1`  
		Last Modified: Fri, 16 Nov 2018 18:51:08 GMT  
		Size: 4.2 MB (4158685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36df4c9303ec5ed090e9c746045a71d4285056f215f04828647a3a7c4111bd5`  
		Last Modified: Fri, 16 Nov 2018 18:52:03 GMT  
		Size: 48.3 MB (48272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d36f3d062340ef2287f87ad3b2e9e6e2709004adc5c2f1f9167f479015e195`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 884.7 KB (884721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52357cf5f826f41efddf2db9b309ed12831ef4b6aa36f2d1c6f518185fa84c91`  
		Last Modified: Wed, 26 Dec 2018 10:02:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48be9319cc176195ea3faf7dd1dbd5a5af73e19c17f69da364a571cc05a2323c`  
		Last Modified: Wed, 26 Dec 2018 10:02:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86a042a81120b935e918c94aa0c4012ac8005b67d27af566ac172545d5009de`  
		Last Modified: Wed, 26 Dec 2018 10:02:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585a0104a09e05ae8aeec5bfcd8f60ee81ab1d2e7dcc7ca63f3f8c171bbf78b2`  
		Last Modified: Wed, 26 Dec 2018 10:03:31 GMT  
		Size: 262.4 MB (262394556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110a6247634796070efe2561d2f5c1c7b164f904960a424783e38035834da11a`  
		Last Modified: Wed, 26 Dec 2018 11:27:03 GMT  
		Size: 85.5 MB (85485024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e990da719142a97f1a7b26b95896000c25bb4d96eb54188b4760adf35bfd7a0`  
		Last Modified: Wed, 26 Dec 2018 11:26:50 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:d7a083d91df93f80a9994ccedaa0d0afed18f2d8025746e67d9fe2a183beee87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.3 MB (469254406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f915139d8ecd44af726088c8265306d4aea655ab446833050f476053716e0b`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:18:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:57:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:05:25 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 13:05:25 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 13:05:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 13:05:28 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 13:05:28 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 13:05:29 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 13:05:29 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 13:07:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:07:03 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 13:40:22 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:40:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:40:23 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:40:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:40:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:40:31 GMT
USER gradle
# Wed, 26 Dec 2018 13:40:31 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:40:32 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:40:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876ce4c93c1cd23dba26163faf2c97ba7d2ff4a19e9ec4f18fd0d9dbf3c3491d`  
		Last Modified: Fri, 16 Nov 2018 18:32:16 GMT  
		Size: 46.4 MB (46379290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024c5fe60833dbd5de75fb0be244113ec7248b6fdfc231ea97d59f4435607e81`  
		Last Modified: Wed, 26 Dec 2018 13:19:13 GMT  
		Size: 867.8 KB (867838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b6ce66de8b2d3e80f6d0e280a15b72a7d3f149ec864db205de42776494bb41`  
		Last Modified: Wed, 26 Dec 2018 13:19:13 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055528fdc938bf4651bb0459fb413f1a77c686bf06d7cffdcff7d996510cdb7f`  
		Last Modified: Wed, 26 Dec 2018 13:19:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c305e92aa154316f3a34c16fefbef00ffc3eb21f054e2ea2f7a73fa2d54612`  
		Last Modified: Wed, 26 Dec 2018 13:19:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f821041d9c23f8a3470581668464b5d98b40ead07df0f10a41ef6705ff0d7b8e`  
		Last Modified: Wed, 26 Dec 2018 13:20:05 GMT  
		Size: 281.1 MB (281086352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd5438cc7b93f898eb1561afc5f95803dc69e522beeb10fedc2475da07c8e6b`  
		Last Modified: Wed, 26 Dec 2018 13:42:30 GMT  
		Size: 85.5 MB (85485072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1ef4a2e1dff931ab6bc8d0d1bff4ff4b32c7e4d53b3736fe66b7ff32652b0d`  
		Last Modified: Wed, 26 Dec 2018 13:42:17 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a7b906304078edcb5d5934c9172934e1b354c0841c3a5e8bd243ae4e95f79ae1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.9 MB (492915604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c91aecf1c7cfc8b72707653890dbac18cdc629be71d304a1d04b8c58e2f50c1`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:55:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:49:16 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:49:16 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:49:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:49:21 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:49:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:49:22 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:49:23 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:54:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:54:42 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 13:04:44 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:04:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:04:48 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:04:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:05:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:05:10 GMT
USER gradle
# Wed, 26 Dec 2018 13:05:11 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:05:13 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:05:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaeab0ecba831abe35f50cb9dee5b4bd68274cf8ad778ca18d425026705ac509`  
		Last Modified: Sat, 17 Nov 2018 05:46:27 GMT  
		Size: 877.6 KB (877593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d884fe09697c6b6df8510a1ed8d3346ecb12a259df8ed10a5bb4c7a7bdfc33b4`  
		Last Modified: Wed, 26 Dec 2018 10:22:29 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f05d6ea155dcd175dc4457972d2b17072c1dbf1e8dbf02a78e8563d3d324f31`  
		Last Modified: Wed, 26 Dec 2018 10:22:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55405ed9f5abe82ba4f57692a501a8acd291df37c88895065ca345b459cd8b5e`  
		Last Modified: Wed, 26 Dec 2018 10:22:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1f77acd2cebefd1f633bc42f0fe56a743bfbfba00afd7d16038373635649b2`  
		Last Modified: Wed, 26 Dec 2018 10:23:32 GMT  
		Size: 301.6 MB (301647000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bd66f3c4c5b04227b294ef80e5dd0beaf5fcb05cb5376e52b2b7f3029bbb8`  
		Last Modified: Wed, 26 Dec 2018 13:11:42 GMT  
		Size: 85.5 MB (85485094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad47b8df9befc46209ce50197c6f4605b3991a04870bd4d11dbe8c6327091d8`  
		Last Modified: Wed, 26 Dec 2018 13:11:29 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; 386

```console
$ docker pull gradle@sha256:f745c08856d1455e363f16f62ae5680ef63151cc17059dbd8b510a96dc7f9ffa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.4 MB (587382683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf8c6976f7258688b8bffc9becb0ab4657f52edfb365dd215592379e2659407`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:07:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:07:47 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:07:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:07:49 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:07:49 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:07:49 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 12:09:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 12:09:46 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 14:44:32 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 14:44:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 14:44:32 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 14:44:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 14:44:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 14:44:37 GMT
USER gradle
# Wed, 26 Dec 2018 14:44:37 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 14:44:37 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 14:44:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b5b2bccea4dc7559f4d7b5d0544bff21827a7e832f096f0b601bd8b533986`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 900.0 KB (900047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f609112b099ec27cd36ab84786ae3181d03f4e7352272c2f23b3671240b8105`  
		Last Modified: Wed, 26 Dec 2018 12:15:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cf21abe0bf719e817643e83630c08974379ef55ef19c79607b5f225fadbeaa`  
		Last Modified: Wed, 26 Dec 2018 12:15:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcfa7b9e5e18274c73c73734ebe18777f1ee3cc19c7284f7111b81068dfd9ec`  
		Last Modified: Wed, 26 Dec 2018 12:15:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c59a58e5472c37ea3045fc9947a1eb9fbaebe5bf7f7373038556ab715b2b284`  
		Last Modified: Wed, 26 Dec 2018 12:16:39 GMT  
		Size: 388.0 MB (388036392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4416a7d150381d5ac8acd34c0404c88f9dc2d5b645db9380510b49809910b5d8`  
		Last Modified: Wed, 26 Dec 2018 14:47:20 GMT  
		Size: 85.5 MB (85485019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fe757c52d8b2db0b047ab1e635de74de00ca14506684a5ea6f081af1ad2a85`  
		Last Modified: Wed, 26 Dec 2018 14:47:12 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:f6c14131519099137f74e3ec6340f5a8cc36acc05bfa4686aa79be7806dd5e21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.1 MB (489078904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbbd081a637611d3dae88b4875fce5ce5596d22ec9b59669367529d141956cf`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:40:34 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:40:36 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:40:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:40:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:40:45 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:40:47 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:40:48 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:44:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:44:29 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 11:25:12 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 11:25:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 11:25:18 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 11:25:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 11:25:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 11:25:31 GMT
USER gradle
# Wed, 26 Dec 2018 11:25:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 11:25:36 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 11:25:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e469fb5581abe67c9afdec146613c3f9b83ea5dac1585f9cd125c54a079d792d`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 886.1 KB (886141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cfb2ad97146d6ee1c657c3acd4c671949426bb1f7ef60e2be1e01a0977a7e8`  
		Last Modified: Wed, 26 Dec 2018 10:05:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b67f49feb0b4e754ffdcdb06ca1bb41c35718265c5d684353edf2678b3116`  
		Last Modified: Wed, 26 Dec 2018 10:05:16 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2063807139fd21daa1968be6996438e6f23fb7bdf89636d427ca794ba366c0e0`  
		Last Modified: Wed, 26 Dec 2018 10:05:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7090f2b8e51b40927b0716f9e5d4aa5e0ef98ae5d9d79c427c0d7c2add697c1f`  
		Last Modified: Wed, 26 Dec 2018 10:06:13 GMT  
		Size: 292.8 MB (292790349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8dcbec4613cc9a762b9558a7cd3a19f2eae61b19fdc5887753b19b43facae3c`  
		Last Modified: Wed, 26 Dec 2018 11:31:49 GMT  
		Size: 85.5 MB (85485067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a8b2c9b00bb419295dc3a1769761ffe4a35e748318d2d263eb03e4eeb1f6e4`  
		Last Modified: Wed, 26 Dec 2018 11:31:36 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; s390x

```console
$ docker pull gradle@sha256:2f2d2b8ac80f3f0a5127df849de1170a95eb18af8bfe13e0ccb82d3b4080d550
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.9 MB (489941886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2112c16ad936ffc589e1799cc53744a0ff9da7bc93ac346d698340b15be9240c`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:18:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:49:14 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:49:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:49:16 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:49:16 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:49:16 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:49:16 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 12:50:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 12:50:26 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 13:25:15 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:25:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:25:15 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:25:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:25:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:25:19 GMT
USER gradle
# Wed, 26 Dec 2018 13:25:19 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:25:19 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:25:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb1ee8d768a3204c0d5c5b95862c29567826a0cd7348e6de56fe45fa2327274`  
		Last Modified: Fri, 16 Nov 2018 20:23:53 GMT  
		Size: 50.5 MB (50484086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb954acf51977315440c17e18ae722a8a64f600fe35169a6f0ae52c0d86c25dd`  
		Last Modified: Fri, 16 Nov 2018 21:09:21 GMT  
		Size: 903.5 KB (903456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52eec23d905fbd18400c96784b5d79d22717470595259b2d2839526c2e0d4ff8`  
		Last Modified: Wed, 26 Dec 2018 12:55:40 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c105e1178dcd5929d63f4ad627e88383ed3cddc4713247b6dc4c0928cc3530`  
		Last Modified: Wed, 26 Dec 2018 12:55:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596f7178fe83cebf2bde73cbe0e1b16a63dd8d3a91e6ea599cf23ee529aff109`  
		Last Modified: Wed, 26 Dec 2018 12:55:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbe2b0858557a6ea2021b974115e6cbc62e38107bba20beb52c61c87e532695`  
		Last Modified: Wed, 26 Dec 2018 12:56:06 GMT  
		Size: 293.2 MB (293223706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90930e37e02415a89e291497f241162d856311d2010e7e49c2a83f947ed6a28`  
		Last Modified: Wed, 26 Dec 2018 13:28:38 GMT  
		Size: 85.5 MB (85485075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10598b89f6d65a396269144f082ddec20498328cf87f72f4ab28121ade40ba1d`  
		Last Modified: Wed, 26 Dec 2018 13:28:32 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
