## `gradle:jre11`

```console
$ docker pull gradle@sha256:118c37419e4fb6678e9e0690a0fc4981422d1338a063aa2dd2ce882d996e3856
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
$ docker pull gradle@sha256:620d3894adceb65cd8c1269ade6caf1843c8d3476a3b3964747b07243c2f04aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.5 MB (328484193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b322495981ffa67320ef8a0446afc086d27f7df438d53471c5e4cc500cd171df`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:25:54 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 00:10:46 GMT
CMD ["gradle"]
# Wed, 05 Dec 2018 00:10:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Dec 2018 00:10:47 GMT
ENV GRADLE_VERSION=5.0
# Wed, 05 Dec 2018 00:10:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 05 Dec 2018 00:10:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 05 Dec 2018 00:10:52 GMT
USER [gradle]
# Wed, 05 Dec 2018 00:10:52 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Dec 2018 00:10:52 GMT
WORKDIR /home/gradle
# Wed, 05 Dec 2018 00:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebeef34911947e582305caa31fb4742319808febaf576d9b866be8b31b629e6`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb0b61efceea81f933e16f572a04f717d98120cd1d334ab8e51e1149a87046`  
		Last Modified: Tue, 04 Dec 2018 23:47:03 GMT  
		Size: 175.7 MB (175735369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d6076e0095db97ddc9a0cdf04dd6d227181841751982d99cb6cb0f5b5a43dc`  
		Last Modified: Wed, 05 Dec 2018 00:15:43 GMT  
		Size: 85.5 MB (85485373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e5b90099360d436162f7741e2120c73b5b12290db7ca048db9addd104be105`  
		Last Modified: Wed, 05 Dec 2018 00:15:29 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v5

```console
$ docker pull gradle@sha256:f805a199d49bf8fdb0bc50a3ffe3bbb36d4d36ef4aee29b2055c088d26c26670
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299404945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8168474d6de8a0af1b7187db059a40a48510eaf270d77a09384db5da49195d7`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:55:05 GMT
ADD file:8beac90fab79047a99139951c1eb0b26598cb16b3de6be3a6768d30f41e470da in / 
# Fri, 16 Nov 2018 09:55:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:33:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:33:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:34:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:34:28 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:34:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 01:44:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 01:44:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 01:44:49 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 17 Nov 2018 01:44:50 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Sat, 17 Nov 2018 01:46:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 21 Nov 2018 10:53:17 GMT
CMD ["gradle"]
# Wed, 21 Nov 2018 10:53:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Nov 2018 09:51:11 GMT
ENV GRADLE_VERSION=5.0
# Tue, 27 Nov 2018 09:51:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Tue, 27 Nov 2018 09:51:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 27 Nov 2018 09:51:18 GMT
USER [gradle]
# Tue, 27 Nov 2018 09:51:19 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Nov 2018 09:51:19 GMT
WORKDIR /home/gradle
# Tue, 27 Nov 2018 09:51:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:47c89bded53655a08a5ade4bcec2735b8f5ed461132add6b56c91d99d2d43e82`  
		Last Modified: Fri, 16 Nov 2018 10:09:57 GMT  
		Size: 46.9 MB (46931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c40e735ea786d7012557eb1a19713d212a9eb65c662a0e17496c671826df7e8`  
		Last Modified: Fri, 16 Nov 2018 18:48:44 GMT  
		Size: 6.9 MB (6936827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e84d4e46d444d64c8c7b8bc36fc4bba762c6ab773eb80c2e8a53fea1ef65f0`  
		Last Modified: Fri, 16 Nov 2018 18:48:45 GMT  
		Size: 9.5 MB (9481899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00696f492bae7cd462a7aef447e4bf98bb2d22d55b60047bec1b8d00beff8140`  
		Last Modified: Fri, 16 Nov 2018 19:00:40 GMT  
		Size: 839.8 KB (839811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d352258e3b076741401225c2a341c6c58c02659328cf934d45bdca5a91e6ab5`  
		Last Modified: Fri, 16 Nov 2018 19:00:39 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda147f20d77e1f0879cf9d71594dad8ddea6455670b1f96937f12c49ad46383`  
		Last Modified: Wed, 21 Nov 2018 10:30:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba40b34c1d976592095e103a140ecc5790d2b6b94e683601ed77a075444d2ad`  
		Last Modified: Wed, 21 Nov 2018 10:31:07 GMT  
		Size: 149.7 MB (149729165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c159c93520f1ba2d5b8313e594451b4b794c0b0bbc16c0b5717b590bbd03b2`  
		Last Modified: Tue, 27 Nov 2018 09:57:21 GMT  
		Size: 85.5 MB (85485466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0b886799620902c4a0416d5122d5f4ed654240d2ffaeb40c288f75da61628`  
		Last Modified: Tue, 27 Nov 2018 09:57:10 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:6e4f5747dd7aa3df3860b007a0b5937390dc1dfbeee2e9703f81be9bcc4fb985
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295339143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7ccd75e360f3b21624962924a723ec585f1400cd4958412efac0ffc46d23ac`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 13:06:12 GMT
ADD file:4182d54a140ffdace3af2db1d2632f4271c1b1754fbc78075c0813d49212e466 in / 
# Fri, 16 Nov 2018 13:06:14 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:14:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:15:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:15:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:15:02 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:15:03 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:15:03 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 19:15:04 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 19:16:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Nov 2018 15:28:53 GMT
CMD ["gradle"]
# Mon, 19 Nov 2018 15:28:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Nov 2018 13:01:10 GMT
ENV GRADLE_VERSION=5.0
# Tue, 27 Nov 2018 13:01:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Tue, 27 Nov 2018 13:01:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 27 Nov 2018 13:01:20 GMT
USER [gradle]
# Tue, 27 Nov 2018 13:01:21 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Nov 2018 13:01:22 GMT
WORKDIR /home/gradle
# Tue, 27 Nov 2018 13:01:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:fdd94773a9e48362892e21476e28eead609d35afebea9220515e313cc45e9b67`  
		Last Modified: Fri, 16 Nov 2018 13:19:04 GMT  
		Size: 44.8 MB (44797919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170ebfdb451da69aec8b40173375cf38f87f1e39085d2072e246796c09c6738c`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 6.7 MB (6703425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e9929c695e5dc9cd495d9b50731f7cabfba0a93fbe0c8c039f86c25531c0dd`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 9.1 MB (9148032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c17fa2c312aed7c602f3fbed7e6305980113bf282c2498cff56339ced25f65`  
		Last Modified: Fri, 16 Nov 2018 19:52:18 GMT  
		Size: 822.5 KB (822486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce3e103655f07bd3ab48204c7d2fd9af93713db7d41de74f6465a873193a545`  
		Last Modified: Fri, 16 Nov 2018 19:52:17 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c6a66edb1cb1c13a7d122d73677f970281eaa9fab17d76610f05b9a55ce667`  
		Last Modified: Fri, 16 Nov 2018 19:52:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48756474ff971aa14a9fcc1acf5ab46c851e9c5cd0d11e10080e66c1afc110fa`  
		Last Modified: Fri, 16 Nov 2018 19:52:56 GMT  
		Size: 148.4 MB (148381207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a4bab2307b5594bf78d1e04ae75c0ba7df48babed9fb7f6e1c8eb595061243`  
		Last Modified: Tue, 27 Nov 2018 13:10:48 GMT  
		Size: 85.5 MB (85485471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74fb5e778255953ee92a2ede5067bd061ea46c18b0dd7386957b06ff21060f1`  
		Last Modified: Tue, 27 Nov 2018 13:10:37 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:452ed6aee548fc4e3600b2f4164510fc4ae3f7c719dd99f46e0459facd6dc01e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311840039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c963dbe783a2812797c585d3a682ffb9f1dcfb9225f38121bb87053dc06bb1`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:27:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:27:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:28:00 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 17 Nov 2018 04:28:01 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Sat, 17 Nov 2018 04:34:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 21:20:33 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 21:20:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Nov 2018 10:36:40 GMT
ENV GRADLE_VERSION=5.0
# Tue, 27 Nov 2018 10:36:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Tue, 27 Nov 2018 10:36:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 27 Nov 2018 10:36:54 GMT
USER [gradle]
# Tue, 27 Nov 2018 10:36:55 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Nov 2018 10:36:55 GMT
WORKDIR /home/gradle
# Tue, 27 Nov 2018 10:37:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40cd1fba289216546fab6aced2c405bc1762bbab01ce8f92506e4f3d079eb5`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c4d78a7df880df32a18fa012820e38cf0b31a9c7df2bdfa3cf164909d8d078`  
		Last Modified: Sat, 17 Nov 2018 05:25:40 GMT  
		Size: 160.9 MB (160884024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7423254942be096ce2a197b73e6f6acf40ac9cf031e18fec844ee229e8351758`  
		Last Modified: Tue, 27 Nov 2018 10:48:33 GMT  
		Size: 85.5 MB (85485445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1640e956b54a1c1e7be6d06652e35e4dcc99e9f9716a27d75c137ad868f153bc`  
		Last Modified: Tue, 27 Nov 2018 10:48:18 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; 386

```console
$ docker pull gradle@sha256:987ce3c52b17edb8cf81da353ff3334c9029d4f281e82f3d46c7ef76752864c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332636657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc53104fbc85fe453039f2f16bce74de69c7c5d918a3e65467e2b3262fdde22`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:32:10 GMT
ADD file:35a7a6d82265a9aaaa338d026c69123fcf5a876f04c62aa8b8576e728eb2d703 in / 
# Fri, 16 Nov 2018 12:32:10 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:20:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:20:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 13:49:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 13:49:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 13:49:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 13:49:56 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 13:49:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 13:49:57 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 17 Nov 2018 13:49:57 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Sat, 17 Nov 2018 13:51:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 18 Nov 2018 03:57:24 GMT
CMD ["gradle"]
# Sun, 18 Nov 2018 03:57:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Nov 2018 11:46:02 GMT
ENV GRADLE_VERSION=5.0
# Tue, 27 Nov 2018 11:46:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Tue, 27 Nov 2018 11:46:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 27 Nov 2018 11:46:07 GMT
USER [gradle]
# Tue, 27 Nov 2018 11:46:08 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Nov 2018 11:46:08 GMT
WORKDIR /home/gradle
# Tue, 27 Nov 2018 11:46:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:aa30602b1807a2d186d63c50f118d4f15cb29b1b571140414c0bfc373476f654`  
		Last Modified: Thu, 15 Nov 2018 01:33:39 GMT  
		Size: 49.9 MB (49936516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ad8c93fe5a088ae5005cfe50a1ef475d4f0e1a97371d56db68fc08705a03df`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 7.5 MB (7524919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ece88fa739651725b15edad9d926c3b46176bc8e5ea97bfbb390ed5a132223d`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 10.1 MB (10109366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8d14f72dc65059946af02e1e308916328cc956284f5efbd8c5712b419f72b2`  
		Last Modified: Sat, 17 Nov 2018 14:31:48 GMT  
		Size: 855.6 KB (855610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837384af7e6fccd5709bce8c7cc1aca3b2b7170f30355f03ab060674d6144ad8`  
		Last Modified: Sat, 17 Nov 2018 14:31:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7b0ea6ffae0d39e641eb62be113f1b1a5da49959702dced35239578c49de39`  
		Last Modified: Sat, 17 Nov 2018 14:31:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825cfbba06e9c3cc88f2df314ed80c81ba6464caaff13bfd0c2de256b49a5562`  
		Last Modified: Sat, 17 Nov 2018 14:32:34 GMT  
		Size: 178.7 MB (178724382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f3479d935c4cb3a7879688fa313861fe3628e46fd81b8c53e0eb1c78acddce`  
		Last Modified: Tue, 27 Nov 2018 12:00:08 GMT  
		Size: 85.5 MB (85485357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3befc965dd0684462a7cc866533c70304d450d44b9359d6205c588b15f2c51a3`  
		Last Modified: Tue, 27 Nov 2018 11:59:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:53aecfd581a49e8dfe3c75adee12b6d309ea8462c09aace5fc0aa45588ea7cdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.3 MB (322335313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4a58093fb5111f9310b909812ea635ca8d166097dec607867b7f93b32c6387`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:29:11 GMT
ADD file:21c19a0a0b72cf3f388f00fe01c1519967fda820c517637abea940bde9dcbdcb in / 
# Fri, 16 Nov 2018 09:29:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:16:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 21:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:48:47 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 21:48:50 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 21:48:51 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 21:48:51 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 21:48:52 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 21:51:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:45:13 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 05:45:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Nov 2018 09:44:50 GMT
ENV GRADLE_VERSION=5.0
# Tue, 27 Nov 2018 09:44:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Tue, 27 Nov 2018 09:45:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 27 Nov 2018 09:45:06 GMT
USER [gradle]
# Tue, 27 Nov 2018 09:45:09 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Nov 2018 09:45:13 GMT
WORKDIR /home/gradle
# Tue, 27 Nov 2018 09:45:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e57b32151bc02904963bd565e696f960ec0fcf7e61de7736cf428f181f77a638`  
		Last Modified: Fri, 16 Nov 2018 09:37:27 GMT  
		Size: 52.4 MB (52388297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab0f66852fcb84f2cd9e128298c12a55a73df334109fd2d39ccada2d5813aa5`  
		Last Modified: Fri, 16 Nov 2018 19:43:21 GMT  
		Size: 7.8 MB (7805704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eae639cdf9e8ca8ce95408b8ae6bbcbde8367a9ad6d7c204571ff3c434eb01`  
		Last Modified: Fri, 16 Nov 2018 19:43:22 GMT  
		Size: 10.5 MB (10523243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169f3a6b7e77018135d5e7d2a160a8478b5b20742b2891c83585fae469bd1829`  
		Last Modified: Fri, 16 Nov 2018 22:30:19 GMT  
		Size: 845.9 KB (845922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294f380f205e99a54e59266e42e6dd728372af5f787647ae2eba822b14f40f70`  
		Last Modified: Fri, 16 Nov 2018 22:30:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43120f44468ec2f697d0e1fbc7c3e2e446f4c61cc3a7fef4fae21592046cb9a5`  
		Last Modified: Fri, 16 Nov 2018 22:30:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0805572391863db41ba435e3d7daad47bcd68c7efed04af40cb4c69de0d8984`  
		Last Modified: Fri, 16 Nov 2018 22:31:20 GMT  
		Size: 165.3 MB (165285998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297f81380de25a5bfa310bd6aa18d912636f29a1aaff993687f310c0e3aa8303`  
		Last Modified: Tue, 27 Nov 2018 11:09:20 GMT  
		Size: 85.5 MB (85485547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c596996a2c31c5b8d65db92c21cc23ca993ccba1bebf8267a2ef8fb00f4f26`  
		Last Modified: Tue, 27 Nov 2018 11:09:03 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; s390x

```console
$ docker pull gradle@sha256:db843d202cb61f4d7775fea0f8d89ce473b2963d50e87a86c10ac3c76e67e907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282909561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196c38e29c75c3583009814ebc7109a1e7cdc4f9f098876d60fcc473e174c6e7`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:42:33 GMT
ADD file:77fbcf3a7fd8e7c1d35c9b0144f5dcef5228f477c512b3de313b5f9f8106c20b in / 
# Fri, 16 Nov 2018 12:42:34 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:14:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:14:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:46:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:27 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:46:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:46:28 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:46:28 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:46:28 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 20:46:28 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 20:47:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 07:50:21 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 07:50:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Nov 2018 12:44:45 GMT
ENV GRADLE_VERSION=5.0
# Tue, 27 Nov 2018 12:44:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Tue, 27 Nov 2018 12:44:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 27 Nov 2018 12:44:49 GMT
USER [gradle]
# Tue, 27 Nov 2018 12:44:49 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Nov 2018 12:44:50 GMT
WORKDIR /home/gradle
# Tue, 27 Nov 2018 12:44:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:b5f718c394fe29f847c837a4abaeea5358350a23da072857d9a17d7b3f835ba6`  
		Last Modified: Thu, 15 Nov 2018 01:49:01 GMT  
		Size: 47.9 MB (47868485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41806c8eb45b71025055bb1e6fd1976203b50f81a43cd4d17ecd2e08bf1ca416`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 7.0 MB (7044644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311646161ff8988e1dbd14a16907d30a4e22f1b324c178e21580877b40c200d0`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 9.7 MB (9670979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3daa5e6ccb5d5a10075a97563ac4cb3bc6bfb05665231d741f838f2c4695418`  
		Last Modified: Fri, 16 Nov 2018 21:01:05 GMT  
		Size: 856.8 KB (856763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08bf9b3fa4478baac5ba087a103482d1bdc6d787761586c7927c6d291478ac4`  
		Last Modified: Fri, 16 Nov 2018 21:01:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008dde56645221b49e6dd4468e789c72f166aa3b1039849f4a0a2e66f4fc2ae3`  
		Last Modified: Fri, 16 Nov 2018 21:01:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4b13b7773fd52602a46f3b654bfd9f4a4ddc2be1e2bdd73c982c3855ffc83f`  
		Last Modified: Fri, 16 Nov 2018 21:01:34 GMT  
		Size: 132.0 MB (131982632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918b3ef95c95d389bc364729ca4b734a7a12512ddbf7819f5551b46cb681d276`  
		Last Modified: Tue, 27 Nov 2018 12:50:59 GMT  
		Size: 85.5 MB (85485485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f55af379f2ebd40099f43742fa1caaae59462c2230d81314a2ab4b2a5044cd`  
		Last Modified: Tue, 27 Nov 2018 12:50:51 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
