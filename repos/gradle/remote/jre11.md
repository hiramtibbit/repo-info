## `gradle:jre11`

```console
$ docker pull gradle@sha256:2be25c7891170e91a0a771d6ffb99b87db0b49740b66f367315925a8c940e710
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

### `gradle:jre11` - linux; amd64

```console
$ docker pull gradle@sha256:2952db15b70dec6f7d8376ccd6cceba4ccc056335c85073381e6fb19e55c3690
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278122727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd9273a0d51e831b5ca947116c1f390b372a475dc292f4e442c93eea0f29f36`
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
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 08:31:53 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 08:31:53 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 08:31:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 08:31:55 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 08:31:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 08:31:55 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 08:31:55 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 00:23:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 00:56:07 GMT
CMD ["gradle"]
# Fri, 28 Dec 2018 00:56:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 28 Dec 2018 00:56:07 GMT
ENV GRADLE_VERSION=5.0
# Fri, 28 Dec 2018 00:56:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Fri, 28 Dec 2018 00:56:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 28 Dec 2018 00:56:13 GMT
USER gradle
# Fri, 28 Dec 2018 00:56:13 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 28 Dec 2018 00:56:14 GMT
WORKDIR /home/gradle
# Fri, 28 Dec 2018 00:56:16 GMT
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
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82a464a94a255e749944ca261ed491ab6a3db6a203f53dbf76f734ab9b2f491`  
		Last Modified: Wed, 26 Dec 2018 08:39:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0528c41ab21c2be1fe8656e506819163feb0acbff020fcc29beaa72172c54a`  
		Last Modified: Wed, 26 Dec 2018 08:39:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3222b055390f2eaf05b990df33ef8e7820a20156f528a955709691a8d76b7a3c`  
		Last Modified: Wed, 26 Dec 2018 08:39:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ceeef749aaa6c2d0d7afcc5e00601b9cf355fc1623799542d73ff906a27e52`  
		Last Modified: Fri, 28 Dec 2018 00:29:03 GMT  
		Size: 131.4 MB (131383436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699469faa9705b2421fa678e570c14a8b524e833bcebd227cc3445739b8a6bb`  
		Last Modified: Fri, 28 Dec 2018 00:57:37 GMT  
		Size: 85.5 MB (85485055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a43aa62f6f59d75cd43209c991ad17560d4b48e346c02976318b2d3bac18b6`  
		Last Modified: Fri, 28 Dec 2018 00:57:31 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v5

```console
$ docker pull gradle@sha256:a9359e181816d474fe70305f18b4c4d24dc012888b797562c65c0417ded501fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258856419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db237b33154855a4fb2af89756c70ea3667f34a0133242e3dc65d6736c87230`
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
# Fri, 16 Nov 2018 18:40:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:54:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:54:21 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:54:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:54:24 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:54:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:54:25 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:54:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:55:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:23:11 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 11:23:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 11:23:12 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 11:23:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 11:23:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 11:23:20 GMT
USER gradle
# Wed, 26 Dec 2018 11:23:20 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 11:23:21 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 11:23:27 GMT
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
	-	`sha256:7e3ec87c57f9cf33f41de82dee0e503ca8135f14dfeeacae2e2358b4d6ca3e38`  
		Last Modified: Fri, 16 Nov 2018 19:05:46 GMT  
		Size: 845.9 KB (845916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2cd809412d5312cc494043b8145059532a12edc1b17906e967b20430ea6f5a`  
		Last Modified: Wed, 26 Dec 2018 10:05:00 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ed5811415371973ccdd060c98c03f5a33495426263a4e442511addae2fc1d1`  
		Last Modified: Wed, 26 Dec 2018 10:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aac1768c1d6e183c7f11099b59b9f37fb0f219a4d6e947d3c3351ca0620169d`  
		Last Modified: Wed, 26 Dec 2018 10:05:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89f7946fc876087eb8769fc572d8f88d165313ddf84fbda6cd71bce387704a7`  
		Last Modified: Wed, 26 Dec 2018 10:05:35 GMT  
		Size: 114.5 MB (114523613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8149ebcd9932e8db02132599f3e0a5967764113870f34ab5c3762f24365b749`  
		Last Modified: Wed, 26 Dec 2018 11:27:48 GMT  
		Size: 85.5 MB (85485109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aad21716871ca218d94e9e4e9902c8536584cd9f2c0c2105100b7cd5e86f9be`  
		Last Modified: Wed, 26 Dec 2018 11:27:34 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:d0d45ede6ba391304cd3f009bc83fd194cf814c2a82b746854d6317a33638219
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257764120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd6b6121843fc3a0ca216ad90503a98e036a829cccf1bc4e78c0d46d600e36b`
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
# Tue, 20 Nov 2018 15:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:08:14 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 13:08:14 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 13:08:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 13:08:17 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 13:08:17 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 13:08:18 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 13:08:18 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 13:09:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:41:03 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:41:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:41:04 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:41:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:41:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:41:13 GMT
USER gradle
# Wed, 26 Dec 2018 13:41:13 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:41:14 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:41:16 GMT
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
	-	`sha256:832cab46ef49309eb9b4bf28f85a50155cdd61331d44fa4f6646a95d991cfb67`  
		Last Modified: Wed, 26 Dec 2018 13:22:13 GMT  
		Size: 830.2 KB (830166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f0755528f14a31838bda938b593f120e0aa65c1f5db820ba6714dbfbef64a1`  
		Last Modified: Wed, 26 Dec 2018 13:22:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cb0ade604d585c2a6ec82142572f4b7f8ecb46a8ea3e4ade5ce13468870ec9`  
		Last Modified: Wed, 26 Dec 2018 13:22:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266cb7f573826cfcfcaf9b2e53771cbadc68c736fb766035f22877caf9667784`  
		Last Modified: Wed, 26 Dec 2018 13:22:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd25339b24d25a9c5e09dc7de2fbf6549242ceb79e654c82cc210b11b500f657`  
		Last Modified: Wed, 26 Dec 2018 13:22:48 GMT  
		Size: 116.0 MB (116013008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901da758fe93579ab3bd353352a8c002c9f20f63914f07a8c942110f68bb10cc`  
		Last Modified: Wed, 26 Dec 2018 13:43:11 GMT  
		Size: 85.5 MB (85485096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53da6b6a7908941b6d3f8887f3a68b1b5a669fe2dc915f52df35f617f3824b06`  
		Last Modified: Wed, 26 Dec 2018 13:42:57 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:78783357ba508d699f36c99b7cef4deb6ee5757b71a727537b02ea7248480d68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.0 MB (264990136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cec4fa9db2b336f8d0279c8063f38317c5f6d33d12700a37cb91c70015bcd2`
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
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:57:46 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:57:47 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:57:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:57:58 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:57:59 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:58:00 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:58:02 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 10:03:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:06:30 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:06:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:06:31 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:06:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:06:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:06:46 GMT
USER gradle
# Wed, 26 Dec 2018 13:06:48 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:06:50 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:06:56 GMT
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
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b02d7a812edbd4222d270b83449b1b2fab3d0fcaee482af34bad9570fa6075f`  
		Last Modified: Wed, 26 Dec 2018 10:25:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669746daf09b78bdfc50c836e4b683d25c661eb0e41e1e9c46d22a0b12fa6ebd`  
		Last Modified: Wed, 26 Dec 2018 10:25:45 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef1a0216987408c1df6c57a20ad42f8c1f0b41b8e7abf3fea288bcda4642118`  
		Last Modified: Wed, 26 Dec 2018 10:25:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566dec95b59a0fb0bb37ce5e24ad5bc6e5da6d933975150a04cf5c801b0c2d7c`  
		Last Modified: Wed, 26 Dec 2018 10:26:27 GMT  
		Size: 121.8 MB (121764950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f042d32459d25f6217ac0d8bbc11dacc75a239462f79523ceae3b9b91b05b97`  
		Last Modified: Wed, 26 Dec 2018 13:12:40 GMT  
		Size: 85.5 MB (85485140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087d3cec622977bea424aebfe4f1cda8a0dcb27f496d211b6294efced6e6844b`  
		Last Modified: Wed, 26 Dec 2018 13:12:27 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; 386

```console
$ docker pull gradle@sha256:ad8ffb3a92d48ebdcbd42101de21d690272af8e3e489901d3be053a21010de37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (283984102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25882e1e3c63e3e9daf84341042ecc22fa18aa84de0e886296ff669cf6f6cb0e`
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
# Sat, 17 Nov 2018 14:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:11:03 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:11:03 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:11:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:11:05 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:11:05 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:11:05 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:11:05 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 12:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 14:44:59 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 14:44:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 14:44:59 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 14:44:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 14:45:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 14:45:04 GMT
USER gradle
# Wed, 26 Dec 2018 14:45:05 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 14:45:05 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 14:45:06 GMT
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
	-	`sha256:9491f16a6eab2ae053d9a15c4981a5b4bb38a04c110334d7857871bb791776a0`  
		Last Modified: Sat, 17 Nov 2018 14:51:09 GMT  
		Size: 861.8 KB (861807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5866e72a71dbef5d6628e91fd27aca6b9ad2e47703034f9863e9a35397275586`  
		Last Modified: Wed, 26 Dec 2018 12:17:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e85184362997e7a7d32aad56ba794c3a363642b1835a95dd0b9ebdd7a83902`  
		Last Modified: Wed, 26 Dec 2018 12:17:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60847c966b253957f4eb305b952432fbb5d8ca1d48749b332d65ab8efed25b80`  
		Last Modified: Wed, 26 Dec 2018 12:17:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a18bb8809526803f2fc3b13afbc3e44f30313058d9920c43e2c76d6008cb37`  
		Last Modified: Wed, 26 Dec 2018 12:18:22 GMT  
		Size: 136.3 MB (136267336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee6fb08dc2505c29800eb9983a4bc9fdd5f67477843ad4dcf7291d42dcc7fe`  
		Last Modified: Wed, 26 Dec 2018 14:47:47 GMT  
		Size: 85.5 MB (85485100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d73fdb3da81bdc55243143e5184d2bd352c292ed30c7d2032c1a5acb7daf04a`  
		Last Modified: Wed, 26 Dec 2018 14:47:38 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:a751b622439daa638cd24a99c0b6c575eefd04e807a78af162e57822ffb1162c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265499127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51180c3e4c2f40b7ff7be8d445e82436c7319d2fb705d82ba20222ccc2536f76`
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
# Fri, 16 Nov 2018 22:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:47:33 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:47:36 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:47:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:47:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:47:50 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:47:52 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:47:56 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:51:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:26:43 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 11:26:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 11:26:51 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 11:26:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 11:27:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 11:27:09 GMT
USER gradle
# Wed, 26 Dec 2018 11:27:12 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 11:27:16 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 11:27:24 GMT
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
	-	`sha256:51220985dbe82fb45b09b0d7e58304fe3a7e02bc2437dde1d3be642906550bc0`  
		Last Modified: Fri, 16 Nov 2018 22:52:58 GMT  
		Size: 848.4 KB (848370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc3288120d961713d4b021a638af91c294c68d79f728d947219b2ca623e794`  
		Last Modified: Wed, 26 Dec 2018 10:08:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715eb0a8cb64fa18b2887082d9c8bbbef62c601f93430c0c38f2ecd9e769cc68`  
		Last Modified: Wed, 26 Dec 2018 10:08:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7a9da01d1ff49f9100bcb44248e869664ddcf31454efbd56049b20cc7d97dc`  
		Last Modified: Wed, 26 Dec 2018 10:08:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229a67f4672adf7b481affb9a6870ac65354168692b65c86b2c8498c8afcd29c`  
		Last Modified: Wed, 26 Dec 2018 10:09:18 GMT  
		Size: 119.3 MB (119319243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdb0be020118b7afd7b3920f166df715c24d1e00a659f38fd81ddf20c35d8c4`  
		Last Modified: Wed, 26 Dec 2018 11:32:35 GMT  
		Size: 85.5 MB (85485090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e5c872984c5207001e145cd5b69a5567a294d39feb626e02e821022c5ff7b7`  
		Last Modified: Wed, 26 Dec 2018 11:32:28 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; s390x

```console
$ docker pull gradle@sha256:dfc61c292c5c96f5da96e2bfd57069c313cbbedabb8fbaa51729e1e0f175c534
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265209684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d752d59017a6939e62f86756eab1826a657b86558e8891e7df2154d18ca7436c`
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
# Fri, 16 Nov 2018 20:55:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:51:31 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:51:31 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:51:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:51:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:51:33 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:51:33 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:51:33 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 12:52:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:25:37 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:25:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:25:38 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:25:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:25:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:25:43 GMT
USER gradle
# Wed, 26 Dec 2018 13:25:44 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:25:44 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:25:45 GMT
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
	-	`sha256:c75ad8ee8ecfc3871934ef9388ebc64dd1e5ac78ba52af9446770667db20b150`  
		Last Modified: Fri, 16 Nov 2018 21:11:57 GMT  
		Size: 863.7 KB (863683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243784ea1fe13e0bfb598ca6140a4336e919d71dbf21f34de37070df078d4ffb`  
		Last Modified: Wed, 26 Dec 2018 12:57:09 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f43e29f66ee1edd19a22bd65b78b1eb91be1a6e24566ea1593ffdf62885a46`  
		Last Modified: Wed, 26 Dec 2018 12:57:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8569bfa1178db71bf32cbff142e1006f8dcb59797991a7d0fce6f51ae6e5e92`  
		Last Modified: Wed, 26 Dec 2018 12:57:09 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1b06dafcc4d989f0718f6b4f71cd7bf0e3210fc6d652a70d3a06b0d7fc4edd`  
		Last Modified: Wed, 26 Dec 2018 12:57:29 GMT  
		Size: 119.0 MB (119015336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad26e9919c0a7e9c457c1587b745e406da517b6d12bb89cc831db2fe93920165`  
		Last Modified: Wed, 26 Dec 2018 13:29:03 GMT  
		Size: 85.5 MB (85485099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb027f7489ca138f0992501f7e4c4e89bc84ed74d9ffa793cd1aca19172168e1`  
		Last Modified: Wed, 26 Dec 2018 13:28:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
