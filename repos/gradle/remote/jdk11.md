## `gradle:jdk11`

```console
$ docker pull gradle@sha256:e6693181f9bac00dad88a4bf84d81c970a80a843dcca68f9f7e6e238f73fcff8
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
$ docker pull gradle@sha256:ef30a23373eacb47329dd0a3fb6630ca824a168fe7f3ca519f22fc200ba5192a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.1 MB (586134266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f767e13d8f7866ec299f3a8a2fe9fdbe5c8693a03c155e94951c5a8d4d1f75`
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
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:15:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Oct 2018 23:59:14 GMT
ENV JAVA_VERSION=11.0.1
# Thu, 18 Oct 2018 23:59:15 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 00:00:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 00:00:31 GMT
CMD ["jshell"]
# Fri, 19 Oct 2018 00:57:20 GMT
CMD ["gradle"]
# Fri, 19 Oct 2018 00:57:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 19 Oct 2018 00:57:20 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 19 Oct 2018 00:57:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 19 Oct 2018 00:57:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 19 Oct 2018 00:57:24 GMT
USER [gradle]
# Fri, 19 Oct 2018 00:57:24 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 19 Oct 2018 00:57:25 GMT
WORKDIR /home/gradle
# Fri, 19 Oct 2018 00:57:26 GMT
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
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15911fa38fedc7fe60b36c7f212701e72fe2b0c7a45daa0f30b963a310ff928c`  
		Last Modified: Tue, 16 Oct 2018 05:36:35 GMT  
		Size: 896.9 KB (896914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05608362f0e0dcb66c43d70328dfb62bed93a76eb965be517cfc5602db5080d6`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b557609cc1f07d388d0b34a27eed49a2db4309ab2a6008d7f9cb1346b6c8a587`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea98ccfb6f5f7fe3048132dbd70dca830c564b8abe7f873d004e6d3a9ee9bf2`  
		Last Modified: Fri, 19 Oct 2018 00:08:57 GMT  
		Size: 389.0 MB (389036868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319ffafdb2977972bdd785b0333bf817113f5df8693834cbfb629e44fad0eb71`  
		Last Modified: Fri, 19 Oct 2018 00:59:35 GMT  
		Size: 78.4 MB (78405899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c34426d87097df5cd87cac68c467fb2da879aa99f30d23a0853e6a1f537feb`  
		Last Modified: Fri, 19 Oct 2018 00:59:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; arm variant v5

```console
$ docker pull gradle@sha256:71e51c65019f64d55d6ed07c1f1f749b359dbd724bea4652aa42ca2db45da7ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.7 MB (503673998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc752e4e66817571345615b2006c306b0320ea5d13c3f9332e14f9590e74f09`
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
# Tue, 16 Oct 2018 09:57:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:35:11 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:35:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:35:16 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:35:16 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 08:59:29 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 08:59:29 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 09:03:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 09:03:07 GMT
CMD ["jshell"]
# Fri, 19 Oct 2018 09:48:04 GMT
CMD ["gradle"]
# Fri, 19 Oct 2018 09:48:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 19 Oct 2018 09:48:05 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 19 Oct 2018 09:48:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 19 Oct 2018 09:48:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 19 Oct 2018 09:48:13 GMT
USER [gradle]
# Fri, 19 Oct 2018 09:48:13 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 19 Oct 2018 09:48:14 GMT
WORKDIR /home/gradle
# Fri, 19 Oct 2018 09:48:21 GMT
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
	-	`sha256:36a9c33ee17a37fd7e022b0be2efdf422af4924ae617c59a153d82f688846f3b`  
		Last Modified: Tue, 16 Oct 2018 10:08:26 GMT  
		Size: 48.9 MB (48862779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c089360c89d410122fae259009fa5573892ffd6179d02acf0f29ebbec618baa7`  
		Last Modified: Tue, 16 Oct 2018 12:49:35 GMT  
		Size: 889.0 KB (889042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffc781deffa154345acd6035c21073b553fae177f804026b1d3784904a8648`  
		Last Modified: Tue, 16 Oct 2018 12:49:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6803669b3e22297a693593dc7b3c1ebc2a00096dcf438962f22e48c4fb3e3f80`  
		Last Modified: Tue, 16 Oct 2018 12:49:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a215ec19c1f9ca11f6f0e0531f04c03af09b9b319dca675c7c26ac66e966d207`  
		Last Modified: Fri, 19 Oct 2018 09:08:06 GMT  
		Size: 312.2 MB (312244671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402e235f300ff2a44544ff0d07e859f5d764c551c85efeae4534bb180e7ecf1e`  
		Last Modified: Fri, 19 Oct 2018 09:50:30 GMT  
		Size: 78.4 MB (78405902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ea57154c91b4a189d70ecc4ac285bbbd70c6c030f5a612a99db018c2927f23`  
		Last Modified: Fri, 19 Oct 2018 09:50:21 GMT  
		Size: 235.0 B  
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
$ docker pull gradle@sha256:ef645a3da762dffff8127fb022d7fe04c2eab7d14cb2b30f1a25e670ff7be007
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.8 MB (566848535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b83f075f40af2fdf582061193b29c111e97d28a10f664621736c98e5d9092f5`
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
# Tue, 16 Oct 2018 11:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:35:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:35:43 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 21:35:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 21:35:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 21:35:49 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 21:35:50 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 21:35:51 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 21:43:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 21:43:13 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 23:11:57 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 23:11:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 23:12:05 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 23:12:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 23:12:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 23:12:20 GMT
USER [gradle]
# Tue, 16 Oct 2018 23:12:21 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 23:12:22 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 23:12:28 GMT
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
	-	`sha256:6c085808a9d5ae5dc447f159d9e8f1139527509fd638cb2cea8dca8d2dfd2332`  
		Last Modified: Tue, 16 Oct 2018 12:23:16 GMT  
		Size: 51.4 MB (51402148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc3b14f833f5e70a635224b38cca3e256b5db546d4fbc77c639f8ae44612326`  
		Last Modified: Tue, 16 Oct 2018 22:16:00 GMT  
		Size: 883.0 KB (883031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b52ae740e8367788576ae57b404044e349b929424501d2eea2fef7a1345db7e`  
		Last Modified: Tue, 16 Oct 2018 22:16:00 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3174c71f366accf7754dbdbacd5b92e4f3ff89f8b27bce3189bd0997ce7e1bb2`  
		Last Modified: Tue, 16 Oct 2018 22:15:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8497aace61b93676589aeb90331cacebdf0188548777f80bd576eb570fce40ff`  
		Last Modified: Tue, 16 Oct 2018 22:17:12 GMT  
		Size: 371.7 MB (371721453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9029a25c36cf8756526d1558c2009ac1fd8140d1d6c0b8df3c1f0cf112671e`  
		Last Modified: Tue, 16 Oct 2018 23:26:21 GMT  
		Size: 78.4 MB (78405904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7b77008be1b3cc4dc99f1674a14de4831ac277a2f7099fde4d707d02a41c06`  
		Last Modified: Tue, 16 Oct 2018 23:26:07 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; 386

```console
$ docker pull gradle@sha256:a48ddaa66b210117e2cef3f8539c893b08ed16b3eb4977850bffb7875072af34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.4 MB (672373082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96af040593f2a9c0fca3c497e932375a6d3f588299909086af98f95cf3f5552d`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 10:45:35 GMT
ADD file:6801190ad21f3efeeeeb6ca1473d8f32e41d2ba5324c620bc949df696e4b1cf4 in / 
# Tue, 16 Oct 2018 10:45:35 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:27:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:28:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:29:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:29:02 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:29:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:29:04 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:29:04 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 17 Oct 2018 03:29:04 GMT
ENV JAVA_VERSION=11
# Wed, 17 Oct 2018 03:29:04 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Wed, 17 Oct 2018 03:30:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 17 Oct 2018 03:30:43 GMT
CMD ["jshell"]
# Wed, 17 Oct 2018 04:38:11 GMT
CMD ["gradle"]
# Wed, 17 Oct 2018 04:38:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 17 Oct 2018 04:38:12 GMT
ENV GRADLE_VERSION=4.10.2
# Wed, 17 Oct 2018 04:38:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Wed, 17 Oct 2018 04:38:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 17 Oct 2018 04:38:16 GMT
USER [gradle]
# Wed, 17 Oct 2018 04:38:17 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 17 Oct 2018 04:38:17 GMT
WORKDIR /home/gradle
# Wed, 17 Oct 2018 04:38:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c11ca5589af8bf436bc7393ae2e24b1f4f170ca31b4b1cf385603848d56fc658`  
		Last Modified: Tue, 16 Oct 2018 11:01:43 GMT  
		Size: 49.8 MB (49800443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbac0b7c48bd1c965e778cd92ef67b0a8c964b24b4d5413a02cafb89484dd63`  
		Last Modified: Tue, 16 Oct 2018 21:43:04 GMT  
		Size: 7.5 MB (7515489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31bafc0fad38f944f7dc68ad4811c9a1cfc35ddef6a3f2b649299172d7a4536`  
		Last Modified: Tue, 16 Oct 2018 21:43:04 GMT  
		Size: 10.1 MB (10109001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1a5c2452b0fdda9c8adc2ad33671fe7696bf396efe413bd954b75ef033f59`  
		Last Modified: Tue, 16 Oct 2018 21:44:02 GMT  
		Size: 52.9 MB (52910907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1ec5ab4cfe74c1f2180bb956bc2e817f2b625f1608b7c4ab131474d102a3a5`  
		Last Modified: Wed, 17 Oct 2018 03:42:01 GMT  
		Size: 904.9 KB (904850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837d25c94fed9c0aaec0c0d594e1aa174198e14c75992a143b5b52f008fd3009`  
		Last Modified: Wed, 17 Oct 2018 03:42:00 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b3eba0e2a8c1b535aa9fa72035004b22c6add1a2eae36acb0242b643dda856`  
		Last Modified: Wed, 17 Oct 2018 03:42:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d270170f6bc1e416abc11ca1a0e8f90bd5d0c522b255532cfee65621f949db`  
		Last Modified: Wed, 17 Oct 2018 03:42:56 GMT  
		Size: 472.7 MB (472726013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e759bc08ec16c8f1cdc763b46f8acb86be3f310ef58d2c3335d353cd932792b`  
		Last Modified: Wed, 17 Oct 2018 04:49:16 GMT  
		Size: 78.4 MB (78405870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a56b621c062ac8293c9ef828c71ad416d62024885436db9e025641fd6af17e`  
		Last Modified: Wed, 17 Oct 2018 04:49:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f9c1e10440cfdb3c60b17bdf631292adfcc71640019cb52edd10ea7061e4285
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **568.2 MB (568239222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bcf6137dcf9eb2bf359d7ee0b15da053cc3634ae2db67815aa1e01bb696ef49`
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
# Fri, 19 Oct 2018 08:42:23 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 08:42:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 08:46:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 08:46:28 GMT
CMD ["jshell"]
# Fri, 19 Oct 2018 09:39:36 GMT
CMD ["gradle"]
# Fri, 19 Oct 2018 09:39:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 19 Oct 2018 09:39:41 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 19 Oct 2018 09:39:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 19 Oct 2018 09:39:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 19 Oct 2018 09:39:55 GMT
USER [gradle]
# Fri, 19 Oct 2018 09:39:58 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 19 Oct 2018 09:40:01 GMT
WORKDIR /home/gradle
# Fri, 19 Oct 2018 09:40:07 GMT
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
	-	`sha256:1275c6980f93f74bfc3ef0acd5548d1c90feb4b76b452074a7f2a97ea829b181`  
		Last Modified: Fri, 19 Oct 2018 08:55:59 GMT  
		Size: 361.5 MB (361530518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f0e320b4c5e7cdc07d0447e540a70d59397e68e26da687ad142deca173af83`  
		Last Modified: Fri, 19 Oct 2018 09:43:09 GMT  
		Size: 78.4 MB (78405917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf22a90869fa30c78573c2d90246b160ce110ab07ce78c7c111b9945d16eca7`  
		Last Modified: Fri, 19 Oct 2018 09:43:00 GMT  
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
