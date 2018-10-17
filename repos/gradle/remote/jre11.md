## `gradle:jre11`

```console
$ docker pull gradle@sha256:7dbe65bd1933ab3941c385893881f71e58f87c65924ad7c08488dee0fc2edf25
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
$ docker pull gradle@sha256:92ef18f9f2e6d6585c4e8fe318763049c48c3388f3f28c82a333f7454e036c2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313361180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5363cc8946ec23abf249ebd6057784ce19aadd21406b6c8b30cf636bd3b027`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:18:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:18:46 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:18:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:18:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:18:48 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 05:18:49 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 05:19:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 16:46:00 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 16:46:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 16:46:00 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 16:46:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 16:46:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 16:46:08 GMT
USER [gradle]
# Tue, 16 Oct 2018 16:46:08 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 16:46:08 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 16:46:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7961e608858b28edeca0c7c0088bf0a9f4e7d451d82f6e673e1538506a86f706`  
		Last Modified: Tue, 16 Oct 2018 05:40:58 GMT  
		Size: 847.9 KB (847862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08b11391f09f57b188e77665b517a3682a810faded1984ca4c765f68852d3a7`  
		Last Modified: Tue, 16 Oct 2018 05:40:57 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a077d7622476130b714ad4c885aad16dda281c06653d9c581f5a2821779cebd3`  
		Last Modified: Tue, 16 Oct 2018 05:40:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40afc1c89f7ac269d2b495dee46b0b19830d642ce5594ebf0d0a1a3206bbe42`  
		Last Modified: Tue, 16 Oct 2018 05:41:38 GMT  
		Size: 167.9 MB (167853173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2f719d53adbaa9b76bac595d1a3261f74473a19e782171826673ddd6eea2a7`  
		Last Modified: Tue, 16 Oct 2018 17:10:18 GMT  
		Size: 78.4 MB (78405915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e68b413328ae8c7f345cc38760d1c022b814458b129fb137966298fc18eb7c`  
		Last Modified: Tue, 16 Oct 2018 17:10:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v5

```console
$ docker pull gradle@sha256:8cb401aced6ef54a47bb0949e60e7ce0b7542a29f365eba20ae3048d1e75a4d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.2 MB (290235451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45be13877a4f262ee70d1fe06bd8a529a564078f9b9055940521b44c4e4531e8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:12 GMT
ADD file:d204a837dc7c47c406943c2337da21ccd177ea67f346558d9dd6ba518eb5e445 in / 
# Tue, 16 Oct 2018 08:53:15 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:57:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:38:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:38:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:38:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:38:15 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:38:18 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 12:38:19 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 12:38:19 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 12:39:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 16:59:23 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 16:59:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 16:59:24 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 16:59:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 16:59:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 16:59:32 GMT
USER [gradle]
# Tue, 16 Oct 2018 16:59:32 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 16:59:33 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 16:59:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a2a7cefe87adee1328d1887984c79e8eb71aaaefc97a339601a30fd31866a41`  
		Last Modified: Tue, 16 Oct 2018 09:02:27 GMT  
		Size: 46.9 MB (46860503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7aa278f4362b2edbbce821b9f1a65a7261251e406d795abe1de7406022f6e`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 6.9 MB (6928930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8719d70374582583b66be882a7cbb9628ceb5404972849699d4f2d8ff4b9b1a`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 9.5 MB (9481567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2861c2f237a736a54bd67307893eb9322b8632c568acf59eba378534bad842eb`  
		Last Modified: Tue, 16 Oct 2018 12:51:30 GMT  
		Size: 839.9 KB (839918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb6bfe2737d9f7652d7d79a295a847ceb301bab438dfe84881ace90fabcbef8`  
		Last Modified: Tue, 16 Oct 2018 12:51:30 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e499d3a3ab4acdf4befadb4ba611671e1de876242db37bccdb09c3cedb328e11`  
		Last Modified: Tue, 16 Oct 2018 12:51:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380c7c0e13424853100118034c08e71ce8b997c91333336f5440b404b4f3bd4`  
		Last Modified: Tue, 16 Oct 2018 12:52:24 GMT  
		Size: 147.7 MB (147718046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b36bd203844c1c8fee0c0fb2ecadd3ef7b3112e2e589e3372a7efa767f2ddb9`  
		Last Modified: Tue, 16 Oct 2018 17:02:54 GMT  
		Size: 78.4 MB (78405880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef12b64b3a44c28f1e89b512b1cc374f92abdf5f01632c88f005139665b3474e`  
		Last Modified: Tue, 16 Oct 2018 17:02:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:14a5494fda95dca0a6c7ee19908e787454c5ec9d919b9e6e8cfd44059036a52b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286178071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e590aa288c3463a7cce615e933432b96ffaf09ad30af5aa6f33688290550ae3`
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
# Tue, 16 Oct 2018 13:18:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:18:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:18:32 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:18:32 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 13:18:33 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 13:18:34 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 13:19:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 13:52:18 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 13:52:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 13:52:19 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 13:52:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 13:52:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 13:52:29 GMT
USER [gradle]
# Tue, 16 Oct 2018 13:52:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 13:52:30 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 13:52:33 GMT
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
	-	`sha256:eca1c43848bd1419b2156c71362a74b4dc7ebd7289c4913fda31be393ce82263`  
		Last Modified: Tue, 16 Oct 2018 13:38:41 GMT  
		Size: 822.7 KB (822681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83bf0dc75c96c199c28d0ef189e06313ae3eed9d73c575d6baca1d11ed8da5c`  
		Last Modified: Tue, 16 Oct 2018 13:38:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4488a03ca725926cd8b3baf7527f4c5a4d0a208db990a54bf734aebabfc14ee`  
		Last Modified: Tue, 16 Oct 2018 13:38:41 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27757a2d800440467989c13445b7ad880079b75257a90c512ed080c0f79cffe0`  
		Last Modified: Tue, 16 Oct 2018 13:39:19 GMT  
		Size: 146.4 MB (146420194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697acb40d1f4bc871ecd0cc870dc8e746c5b98ea337d4bcedff089437ac70e9d`  
		Last Modified: Tue, 16 Oct 2018 13:54:48 GMT  
		Size: 78.4 MB (78405944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3145bef54b24e0304433cbbfe5fafab8dc857a3b8cc3d0a19acbcb0860303ffe`  
		Last Modified: Tue, 16 Oct 2018 13:54:37 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:2112a312d04afca032417ca2b6e4e2475090c1536d6fa9fa531091bd81f2f4b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302223693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801a9a05cfd799ff1a65bd9d2b7473854d405ded881d1e60e17bd8d6f8df0589`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 08:41:25 GMT
ADD file:993a36018778e74ae6ce1afa2ba4377c60bb69d360987bc158b9081037ec8587 in / 
# Tue, 16 Oct 2018 08:41:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:50:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:43:54 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 21:43:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 21:44:01 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 21:44:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 21:44:03 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 21:44:05 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 21:49:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 23:13:38 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 23:13:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 23:13:39 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 23:13:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 23:13:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 23:13:50 GMT
USER [gradle]
# Tue, 16 Oct 2018 23:13:57 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 23:13:57 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 23:14:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:157e3bb7825ebf937e61c4c02ade571002c5e3384dd3ae81d0832ee2d2619b06`  
		Last Modified: Tue, 16 Oct 2018 08:47:21 GMT  
		Size: 47.5 MB (47450464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83f8de04214fdc4137f7d41d3599d88cf4c390e58bb76896eae9237f093061c`  
		Last Modified: Tue, 16 Oct 2018 12:22:21 GMT  
		Size: 7.2 MB (7224934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6deb5de10153c14c4ffdf7b58fb5870696269f775b23af4750ab252a31b2fbd1`  
		Last Modified: Tue, 16 Oct 2018 12:22:21 GMT  
		Size: 9.8 MB (9760024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def4b1551c05684ced15338acd1fdab72983fb1cc9acf1e1592548e413b518d0`  
		Last Modified: Tue, 16 Oct 2018 22:18:27 GMT  
		Size: 834.6 KB (834606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806a9093490d028108ebd6ca540f1f578bdc176a62081a501d000c7995467a92`  
		Last Modified: Tue, 16 Oct 2018 22:18:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc5e6127785476c176ced859ae37f261550daf0adb8bc5e0ad1fb5096fb917b`  
		Last Modified: Tue, 16 Oct 2018 22:18:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717d1d691f2c9824fd7a9d04e587bec23a4f0d81c348824cfa32e54046119468`  
		Last Modified: Tue, 16 Oct 2018 22:19:14 GMT  
		Size: 158.5 MB (158547137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d139e2d25417640bc7c2e31fe0a892f7bcecfd50fee8be50f609e7deb3b116`  
		Last Modified: Tue, 16 Oct 2018 23:27:53 GMT  
		Size: 78.4 MB (78405949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98623f2fbcc66bd7c300f6cf8ad62c51351fb2eebcdea577bc61d446dc945c4`  
		Last Modified: Tue, 16 Oct 2018 23:27:44 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; 386

```console
$ docker pull gradle@sha256:067e297326324a75223e36fc0e33b8ad70037cfed2db6cf26fa6801730074b60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.7 MB (322679460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75d062d90e1b13b9baaf17d0dd1a71382ae507c750696d9f8336c6fcd538f6e`
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
# Wed, 05 Sep 2018 12:47:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:21 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:47:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:47:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:47:24 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 10:50:51 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 11:09:08 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 11:10:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 11:35:05 GMT
CMD ["gradle"]
# Fri, 05 Oct 2018 11:35:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 05 Oct 2018 11:35:05 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 05 Oct 2018 11:35:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 05 Oct 2018 11:35:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 05 Oct 2018 11:35:10 GMT
USER [gradle]
# Fri, 05 Oct 2018 11:35:10 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 05 Oct 2018 11:35:10 GMT
WORKDIR /home/gradle
# Fri, 05 Oct 2018 11:35:12 GMT
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
	-	`sha256:8ddd1a5705448b4e32fb193ec8c818e3d26cfa66751c9002f8d9b34b78e6f16b`  
		Last Modified: Wed, 05 Sep 2018 13:21:04 GMT  
		Size: 857.2 KB (857237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612f5f98521d28e29fc0885b77ca54d7c73675a379d9f52d0c522f1112c9ea37`  
		Last Modified: Wed, 05 Sep 2018 13:21:03 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001a596621cdb05cdae509417a677fd2cf8cf5cfd3e8f94c3100e61ebce496a`  
		Last Modified: Sat, 08 Sep 2018 18:30:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f8a5f642312a6b34f41e7e39ebc8534a86abf24c7019baa824a81447e0abe8`  
		Last Modified: Fri, 05 Oct 2018 11:15:58 GMT  
		Size: 176.6 MB (176564659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f1a2455f8f77c60d8036dea1cbad09cc64a911bb5fbf6bf1fb4d914cd5fea`  
		Last Modified: Fri, 05 Oct 2018 11:37:05 GMT  
		Size: 78.4 MB (78405914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5999f7b5fb045067ca8cb5c48309637f7888dc0bb4f1c9d35170f777301773c`  
		Last Modified: Fri, 05 Oct 2018 11:36:58 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:58d80c34e91c84b2d7307dbab5a6de0f948fb906d86c49d47bbd3fa75019bedd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.2 MB (312162411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7469e8fa88a366523c7b10c530ae9397ae16b80772519be073eb96522ced2e3`
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
# Tue, 16 Oct 2018 14:46:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:46:11 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 14:46:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 14:46:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 14:46:27 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 14:46:30 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 14:46:34 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 14:53:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 16:31:10 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 16:31:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 16:31:13 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 16:31:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 16:31:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 16:31:24 GMT
USER [gradle]
# Tue, 16 Oct 2018 16:31:24 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 16:31:26 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 16:31:33 GMT
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
	-	`sha256:6e0bc67742709e1248756b36b6a302efc9d1dba0d54e4e7b66f2d8e18fad3a99`  
		Last Modified: Tue, 16 Oct 2018 15:25:11 GMT  
		Size: 846.0 KB (846049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c185c544b64cfcb5380edc1dd6f8e52afabed39252705797ca9e3c35ce9ac7c`  
		Last Modified: Tue, 16 Oct 2018 15:25:10 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4de1e22f13dfc959668755e22a9595c78df4d15e4aceab1bd1bf533dcfaa139`  
		Last Modified: Tue, 16 Oct 2018 15:25:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501121ab95a942db60920aceef7a7b8a197a3d54936d58a509fd1c6c1e945d35`  
		Last Modified: Tue, 16 Oct 2018 15:26:08 GMT  
		Size: 162.5 MB (162498437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83eb17c51a3930e503f79e4627fdda380384a06cdb136fe9d5345029ecb905c`  
		Last Modified: Tue, 16 Oct 2018 16:41:48 GMT  
		Size: 78.4 MB (78405929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b1190563617a220eb53d574256df684323abc6a45ade87d9399929a40b602`  
		Last Modified: Tue, 16 Oct 2018 16:41:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; s390x

```console
$ docker pull gradle@sha256:5dae0f4603fe74366b0348f029beb81099e7d9be12bc9657efcc8d856c7456f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273338809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e827d2f6219ce2230275553660e3fe9a77345bb0856d942c7dcfdae62fee6a94`
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
# Tue, 16 Oct 2018 13:01:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:01:59 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:01:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:02:00 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:02:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 13:02:01 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 13:02:01 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 13:02:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 14:55:05 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 14:55:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 14:55:05 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 14:55:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 14:55:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 14:55:10 GMT
USER [gradle]
# Tue, 16 Oct 2018 14:55:10 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 14:55:10 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 14:55:12 GMT
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
	-	`sha256:256ad90c7474b5de835e3ab64dd8c8dca01d9691e402f0f46d9dda0488fb7dd3`  
		Last Modified: Tue, 16 Oct 2018 13:08:34 GMT  
		Size: 856.8 KB (856842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a5854269e98a3a87d6f9c36043fc6855b5b395fa7b410e89b424646e03e3df`  
		Last Modified: Tue, 16 Oct 2018 13:08:34 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3d61be69c759d3383ecb88eea7da9f98a2e3642e0c1d709dbb9ce3c23c79af`  
		Last Modified: Tue, 16 Oct 2018 13:08:34 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10c96686c0ba6171f72d8cd56014891930c4de3be4a366d7d02722cce3956b1`  
		Last Modified: Tue, 16 Oct 2018 13:08:56 GMT  
		Size: 129.7 MB (129674064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fea9a1b8be8bf6c02c45b51e051b4ede9a6c154828680b626ada85e0a73c42a`  
		Last Modified: Tue, 16 Oct 2018 15:00:58 GMT  
		Size: 78.4 MB (78405939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0bac956d7e5e57a4545ab1e7ac5b0dcd0eb2118bc600bf28376056e9c4f921`  
		Last Modified: Tue, 16 Oct 2018 15:00:47 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
