## `gradle:jre8`

```console
$ docker pull gradle@sha256:d274985ac4da7c1f34ca06bd55099a89b2cd79dd39695e7929debf0b165d414f
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

### `gradle:jre8` - linux; amd64

```console
$ docker pull gradle@sha256:dfe3f4f38b18bf7be69ee80152bf4f42701bf77ad2e7b6de580b611e69109e66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270667569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8590fa1e75454a56a049fb8b97318b61c12d429ca2e212606f024be6ee99b0d4`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 13:17:47 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 13:17:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 20 Mar 2019 22:51:28 GMT
ENV GRADLE_VERSION=5.3
# Wed, 20 Mar 2019 22:51:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 20 Mar 2019 22:51:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 20 Mar 2019 22:51:34 GMT
USER gradle
# Wed, 20 Mar 2019 22:51:34 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 20 Mar 2019 22:51:34 GMT
WORKDIR /home/gradle
# Wed, 20 Mar 2019 22:51:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fce9923c9d837e515d3de06b77d97a5a0c4796a35a97cf9a6768641ea25a8c`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd81083d77ea06270e287c0fb5be2ab4daf9003518745fbdc4f2e55d2635db0`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2afc6ff72dd12b78d094cdbc7e04f6285e599f8a03d6cc1e935aee96b176c1`  
		Last Modified: Tue, 05 Mar 2019 04:27:58 GMT  
		Size: 122.1 MB (122122910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec7c91470a3a2b62d534d0a3c5bd5f62583c9fc63a3c5e448394dd79c2db65d`  
		Last Modified: Wed, 20 Mar 2019 22:55:16 GMT  
		Size: 87.2 MB (87226618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f321f64d6695001dbfc60302fe4dd25778a197d5e509589ee5104892bad4a67f`  
		Last Modified: Wed, 20 Mar 2019 22:55:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; arm variant v5

```console
$ docker pull gradle@sha256:fae97806b2a075bd0d7e72af7482c95bf36d16b05c86cb492e9ade6a58221fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (258018170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d83dca5eb58cead42784fc8af3f3f2507197daf52e94e66308e2466879f76e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 09:54:45 GMT
ADD file:0d24c375e856f1e75f5cb0a6766b22665902b1a6940a87d2c7fc0e61f658e944 in / 
# Tue, 05 Mar 2019 09:54:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:33:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:23:41 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:23:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:23:44 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:23:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 11:23:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 11:23:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 11:24:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 15:20:41 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 15:20:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 08:48:43 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 08:48:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 08:48:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 08:48:52 GMT
USER gradle
# Thu, 21 Mar 2019 08:48:53 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 08:48:53 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 08:48:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:35963a726ee5d52a496a31b3c1f6accaf90ad61bf0e1e0bd8aad2cf66ab8cdb3`  
		Last Modified: Tue, 05 Mar 2019 10:02:26 GMT  
		Size: 44.0 MB (44029811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088a52eee835f09abb5e08bfd27b8cf0960dbcd0d3f28aa0e602654df58ce922`  
		Last Modified: Tue, 05 Mar 2019 10:43:14 GMT  
		Size: 9.9 MB (9851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2616673f78baa6ea1b22951cb4a50ea0c9db5f109d098f00b5bf86b3e29a7b51`  
		Last Modified: Tue, 05 Mar 2019 10:43:12 GMT  
		Size: 4.2 MB (4158962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29e62902178d17f798c00d2c12d1ce2afa56979e692b609138a6d0fce78bfbe`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 845.9 KB (845894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03a6663d62bc5229d655bf4f7e0c3815777f64ca218883147d22f092e3145a3`  
		Last Modified: Tue, 05 Mar 2019 11:42:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1b5ca803bdccd60e3da135efe557f76540bfd75a3729a8c5c5a2435ce61003`  
		Last Modified: Tue, 05 Mar 2019 11:42:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af12fca2f0cbf9e602cd9ce86cb8e0379da77a659fd11b75d046265630cbc56`  
		Last Modified: Tue, 05 Mar 2019 11:42:34 GMT  
		Size: 111.9 MB (111904104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c072d915866e92e78e1b83b075838896df86bde197b65a41a32ebbba78e4db`  
		Last Modified: Thu, 21 Mar 2019 08:52:55 GMT  
		Size: 87.2 MB (87226893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d5c8914d44e28b1582cb42dc3b6b721b35eb7887bb74cc56f2538684cbf772`  
		Last Modified: Thu, 21 Mar 2019 08:52:41 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; arm variant v7

```console
$ docker pull gradle@sha256:fdc10206e163941ed00693c59c4e82ea426a8c24b1eee2d3d9620865dd34c2c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253797460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c993c943a9fdf9f5131dd524554b868cc5e14f9fb76cedb372803fdff01f17b5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:23:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:27:02 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:27:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:27:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 14:27:06 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 14:27:07 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 14:28:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:40:47 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 17:40:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 12:04:07 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 12:04:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 12:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 12:04:16 GMT
USER gradle
# Thu, 21 Mar 2019 12:04:16 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 12:04:17 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 12:04:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3e27c925bbcf3bfdb87e8ada386662c36463b6a3e0ad177d9929165991eb81`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 830.3 KB (830260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ed6ab30ee336646adef073ab59f86cf414e1cda0e1a8b4738580f02c9c647d`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3194d62d1cc31512719126c58f402c41d67eba3f27ea1853c8222bc626d032a`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfb1fecf803c2846f8e3ec203d16d1207738be28e714ab71ca7dee31381f331`  
		Last Modified: Tue, 05 Mar 2019 14:42:11 GMT  
		Size: 110.3 MB (110262430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ed40d6ee34ff5d066bf3246cedde2a9697bf3187800fcb15353459e5571a7e`  
		Last Modified: Thu, 21 Mar 2019 12:07:51 GMT  
		Size: 87.2 MB (87226893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c737b35f176b21ed012e9f1c4f6a3fe87ce792f05742c2df0cc7d836aed7d6`  
		Last Modified: Thu, 21 Mar 2019 12:07:37 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c3a7f05ddc518160fa6b50513f7b256e47554cb7831c7748a424c9b3bd2d8ba6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257779443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5ef96dcb71f2d6d7adce15bfaa4c3518cc71655233cf6789bfb088d926088a`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 12:15:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:24:30 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:24:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:24:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:24:40 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 12:24:41 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 12:24:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 12:32:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 21:18:52 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 21:18:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 09:33:53 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 09:33:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 09:34:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 09:34:07 GMT
USER gradle
# Thu, 21 Mar 2019 09:34:07 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 09:34:08 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 09:34:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731a0d1b7415b24abb16c24f00099d883fa36488d898413e7c73f39fe50bfe34`  
		Last Modified: Tue, 05 Mar 2019 12:35:34 GMT  
		Size: 839.2 KB (839191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3735a2876d9209ff54425bdc0c742931ec8a92938633dbaa7e7a0dca40bd56a8`  
		Last Modified: Tue, 05 Mar 2019 12:38:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e943fcddc68904e0c5ad4bf64275828a609a9c312e623cdec73b46c7d2faca0`  
		Last Modified: Tue, 05 Mar 2019 12:38:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a299f8e825e4298239e9e3ebb3115084c70faf9e96308000afdd2c22dda7a`  
		Last Modified: Tue, 05 Mar 2019 12:38:50 GMT  
		Size: 112.8 MB (112756662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbaf0f4057e08f580da3fc40c4d4b1be4278c74f84f216e4a056c80b1b89386e`  
		Last Modified: Thu, 21 Mar 2019 09:41:34 GMT  
		Size: 87.2 MB (87226657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17ccc640e7154efd2376edda582ad883086f81d07494f32fbba3529864ed0ce`  
		Last Modified: Thu, 21 Mar 2019 09:41:21 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; 386

```console
$ docker pull gradle@sha256:dace128d5cf0bd2fa57887b726af6fe07368f8404004114d41fca2e8440c2f6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272125152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf307eb6724303d2020d0c94d6d92fe86f81c0da1b8032960e3be6411f6065c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:10:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Mar 2019 03:20:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:22:00 GMT
ENV LANG=C.UTF-8
# Wed, 06 Mar 2019 03:22:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Mar 2019 03:22:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Mar 2019 03:22:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Mar 2019 03:22:01 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Mar 2019 03:22:02 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Mar 2019 03:22:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Mar 2019 05:07:14 GMT
CMD ["gradle"]
# Wed, 06 Mar 2019 05:07:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 11:39:01 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 11:39:07 GMT
USER gradle
# Thu, 21 Mar 2019 11:39:07 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 11:39:07 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 11:39:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b807c0af5dc527d2f1018efa95b7573661bf01032b2f5222491fe79808b0506`  
		Last Modified: Tue, 05 Mar 2019 21:17:53 GMT  
		Size: 10.8 MB (10800084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d3bd1a7499ccab64de6a026e2c5b5465baf4766b3e0141dbbed1763fa33f8a`  
		Last Modified: Tue, 05 Mar 2019 21:17:52 GMT  
		Size: 4.6 MB (4561396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcdc06e47582f94a8425bc2326c471c2ef7190e302f611ee3b1eaa2418442a4`  
		Last Modified: Wed, 06 Mar 2019 03:37:13 GMT  
		Size: 861.8 KB (861777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2985cdd19561112211de22906c811a917d44105968f2818b87108e35472a34`  
		Last Modified: Wed, 06 Mar 2019 03:38:23 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f39d678bc6cc9ec5813e6ea537a5c6d47c8c093100cae505f3a85d9d4aa1d0`  
		Last Modified: Wed, 06 Mar 2019 03:38:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b7be2792e692768035fcaebec32231f6b3a825b0ce5f22906e61eb00003d7f`  
		Last Modified: Wed, 06 Mar 2019 03:38:46 GMT  
		Size: 122.6 MB (122610345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a8280d6cd454be9b88f33fbf4af59cb3aae37820bd113530b16f273b2b12f2`  
		Last Modified: Thu, 21 Mar 2019 11:41:41 GMT  
		Size: 87.2 MB (87226616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7569568d9105cdb2e25d7ca601a7cebf57d2f124964df87497ff00ecfc092e`  
		Last Modified: Thu, 21 Mar 2019 11:41:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; ppc64le

```console
$ docker pull gradle@sha256:ef5173fa0218215fd721d6942c58e7b8a649126550d358b143681b17cad606ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262519954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2705e8437fb3ce30a96c34f9f1e73b4ec4000549fbedeed44312b2dc649305c4`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:21 GMT
ADD file:de4412e5af6632fda966c01f23fa53ac051704c5c8c63511822bae29940abba1 in / 
# Tue, 05 Mar 2019 09:25:26 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:45:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:50:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:06:36 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:06:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:07:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:07:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 15:07:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 15:07:20 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 15:14:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 20:40:57 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 20:41:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 08:36:45 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 08:36:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 08:37:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 08:37:03 GMT
USER gradle
# Thu, 21 Mar 2019 08:37:04 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 08:37:07 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 08:37:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:b88be5fa0477b5e07410a4683e7f500619df6a2b1093565ef8b6c3ab2bc8bb0b`  
		Last Modified: Tue, 05 Mar 2019 09:31:30 GMT  
		Size: 45.6 MB (45610417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a668b08e3421d576c28b789bc0e8c0f7400f465503e936df3c1b880422b75bc`  
		Last Modified: Tue, 05 Mar 2019 13:02:52 GMT  
		Size: 10.0 MB (9988971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c800b04e42ea1197a3c9f6cc00c2763789101082fa94d89c8fdab3aa65aa17`  
		Last Modified: Tue, 05 Mar 2019 13:02:47 GMT  
		Size: 4.3 MB (4296530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea710e3bbdf5c3bb87ab3040c64ad44cafcd9122932eae10001bf075a81689ac`  
		Last Modified: Tue, 05 Mar 2019 15:22:10 GMT  
		Size: 848.4 KB (848424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198ac05734dbd066cfc1821e7dd0f6913172eb179fcc50f342890065c80659e9`  
		Last Modified: Tue, 05 Mar 2019 15:26:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5506d16119765c737319468439010475ca77885c8efd7fe9a89483dab826adc4`  
		Last Modified: Tue, 05 Mar 2019 15:26:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c575c8d2c5e0901d96195a03eec05494fabd604a3d995daa99e70d1431ba8e0c`  
		Last Modified: Tue, 05 Mar 2019 15:26:29 GMT  
		Size: 114.5 MB (114548127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71001627822016d17a65b8651f38632e22bbaa466c41e2a388b1cf1d7dde007`  
		Last Modified: Thu, 21 Mar 2019 08:49:53 GMT  
		Size: 87.2 MB (87226933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5567bb3b0ad29f29aae3963160ee8603c9f41ca64ab2246d4d294574493d5f7f`  
		Last Modified: Thu, 21 Mar 2019 08:49:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; s390x

```console
$ docker pull gradle@sha256:5ca7fb51c0b5f7bc381fc5fee7f05b750ec918a1bd3189fd180c5b20d619a1df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.1 MB (262112111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c54ff331be414c14ad7c5851852f59b2a7025d670c657b0ae9008f2db04990`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:57 GMT
ADD file:8271a1ca944204307a0659ebf47e18f728c4aa651091092aee9270e619c17663 in / 
# Tue, 05 Mar 2019 12:42:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:35:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:35:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 15:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:13:11 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:13:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:13:13 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:13:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 15:13:13 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 15:13:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 15:13:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 19:17:25 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 19:17:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 11:44:12 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 11:44:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 11:44:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 11:44:18 GMT
USER gradle
# Thu, 21 Mar 2019 11:44:18 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 11:44:18 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 11:44:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:39653445334dc97a660d5c33a719f16c20b0727f0918c51fc17e70343f3c2fd5`  
		Last Modified: Tue, 05 Mar 2019 12:45:28 GMT  
		Size: 45.2 MB (45199281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a786adb578f3dea96f453a6695f6d658fd487c43f0c7dd5375855f6940d82c`  
		Last Modified: Tue, 05 Mar 2019 13:40:26 GMT  
		Size: 10.3 MB (10314828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1aa16a552c6ff88adf6745752a99dd6eb610c220d6b46ab8500ca4c491c5f67`  
		Last Modified: Tue, 05 Mar 2019 13:40:25 GMT  
		Size: 4.4 MB (4372182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a15927bf212cf7747f13ee0ef1be30032c9e421b2db72136b12d1d5f363333`  
		Last Modified: Tue, 05 Mar 2019 15:16:46 GMT  
		Size: 863.6 KB (863646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcdcc78b123a312170fe12c23165931d0e74578a2065255ae7dbad761fcfdfc`  
		Last Modified: Tue, 05 Mar 2019 15:18:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b1c49418720e48773e93e943c4acb0ef3db17b62dcc0554dcb08712e8284f3`  
		Last Modified: Tue, 05 Mar 2019 15:18:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0b3560989bb6ecd7e2689fa9af6058a6ce7f24e19216644a59804bb101d888`  
		Last Modified: Tue, 05 Mar 2019 15:18:43 GMT  
		Size: 114.1 MB (114135008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8cae18eabf6acde00b5ead5dcdbd52e66000b0ff4478565661e7b3f43b4f92`  
		Last Modified: Thu, 21 Mar 2019 11:49:12 GMT  
		Size: 87.2 MB (87226648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7443dc6ebf6a65d9b04d28f6a506d1f44f4d371bb7f9c323bc6d32961fb2a577`  
		Last Modified: Thu, 21 Mar 2019 11:49:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
