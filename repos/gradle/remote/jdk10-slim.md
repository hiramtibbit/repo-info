## `gradle:jdk10-slim`

```console
$ docker pull gradle@sha256:bc0b99049728bfab4ae1ce2140e5d51c3d29d726e9dcf278729ad6913b1ecd62
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

### `gradle:jdk10-slim` - linux; amd64

```console
$ docker pull gradle@sha256:27e5a0adc4b3e4129a091ee2176e1e6f6e1044819b03ff9fcd0ea7bf767f79b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.9 MB (379895369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda354e3c21ebfd50d81e319cefb688e987c3307677ab38ba2a1fc61e4532564`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 15 Nov 2018 22:40:42 GMT
ADD file:4cc555ff7d5c1f575bcc80925e2336d3df7304fbcde4e7ee181fbbd21572e9ec in / 
# Thu, 15 Nov 2018 22:40:52 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:45:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:52:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:52:59 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:52:59 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 14:52:59 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 14:54:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:54:00 GMT
CMD ["jshell"]
# Sat, 17 Nov 2018 05:50:50 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 05:50:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 05:50:50 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 05:50:59 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:51:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 05:51:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 05:51:06 GMT
USER [gradle]
# Sat, 17 Nov 2018 05:51:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 05:51:07 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 05:51:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:096ebeedeeb6534eadf6d1ae8173145e8f43aedf29f5ae179f8b2e899f84f344`  
		Last Modified: Thu, 15 Nov 2018 23:05:13 GMT  
		Size: 26.6 MB (26571399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac6aea685cb5ee685511876e43026b65163450ee8c4a9f0ffabe065911b11d7`  
		Last Modified: Fri, 16 Nov 2018 15:22:11 GMT  
		Size: 460.4 KB (460378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b0083010f5a1580b0f0d04ae3fef44e71ec2e3f9aa6e8ff466b096857324d5`  
		Last Modified: Fri, 16 Nov 2018 15:22:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7ae0d40212ecef57b3d98406b3812c7171c16286bfb9450da71b14c228dff5`  
		Last Modified: Fri, 16 Nov 2018 15:45:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78ea765527dfcd49bc6b945d5e46d473fcb8f7077c9840b0b9aafaf1d118944`  
		Last Modified: Fri, 16 Nov 2018 15:45:37 GMT  
		Size: 273.8 MB (273845959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a788784f40db5d410513cc9bbc03afe804f8bad7824c73eda6d7e4d3f6b64b2`  
		Last Modified: Sat, 17 Nov 2018 06:16:04 GMT  
		Size: 611.1 KB (611068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1317841f7aeb7d85eb6a49e9f0fd7c0dcb27e6d58b34aadf8ac7768eb14faf1b`  
		Last Modified: Sat, 17 Nov 2018 06:16:14 GMT  
		Size: 78.4 MB (78406058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced036e0b9fb8967f24e78788b738a9fc8fa6c27973bb9a7e0799560788fdd59`  
		Last Modified: Sat, 17 Nov 2018 06:16:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:c2df457ee92aef527f7aeaf8a0f61009066eba60181217b474f07a7fd2644745
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.8 MB (327818731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86d543929a71724b7b6d6be6683bb2ce7f849721d206be9fcef492658a74fa0`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:37 GMT
ADD file:570ffab8651ae2f95dabaf4118be374c3024032a1baee5b1a2bcc74eb193120a in / 
# Tue, 16 Oct 2018 08:53:40 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:09:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:09:19 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:09:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:11:27 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:11:27 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:11:28 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 08:52:13 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 08:53:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 08:53:10 GMT
CMD ["jshell"]
# Thu, 25 Oct 2018 09:22:01 GMT
CMD ["gradle"]
# Thu, 25 Oct 2018 09:22:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 25 Oct 2018 09:22:01 GMT
ENV GRADLE_VERSION=4.10.2
# Thu, 25 Oct 2018 09:22:12 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 09:22:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Thu, 25 Oct 2018 09:22:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 25 Oct 2018 09:22:19 GMT
USER [gradle]
# Thu, 25 Oct 2018 09:22:20 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 25 Oct 2018 09:22:20 GMT
WORKDIR /home/gradle
# Thu, 25 Oct 2018 09:22:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:0dc1d0ed8db290aadec5576efe18a0adcaf918c852134583731d227ddf80a2f0`  
		Last Modified: Tue, 16 Oct 2018 09:02:45 GMT  
		Size: 24.1 MB (24051457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86907a04515df0ed5fa03ed01f311d9b37aef035b26e4cb22b16fd2c84be0cd`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 452.5 KB (452526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a9409761fd777958d0c1a55090920b613d3204c40b30d5f65359bf11dd876`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd585e6fe0ce79f2ff0eaf1ef5ed0e32c445ee587b1e72de0d3bd3ad833bd0f`  
		Last Modified: Tue, 16 Oct 2018 09:22:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50793477520525c0725226f32b95856999aaf77d1dcce0a85efef9b48112c8e0`  
		Last Modified: Thu, 25 Oct 2018 08:59:15 GMT  
		Size: 224.3 MB (224308386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6336c64492178f38f243e8fc2e1f786727e7802fd5e0864b8bdc7ef15895506`  
		Last Modified: Thu, 25 Oct 2018 09:24:45 GMT  
		Size: 599.6 KB (599649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772614120cdfe508f8e5366e9e5b85ac169b2cc1ecd559b412adb8c49735907a`  
		Last Modified: Thu, 25 Oct 2018 09:24:55 GMT  
		Size: 78.4 MB (78406105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70603c758340c2829d69cef2bdf0a6adbc243189cd761a4de57fe2c80c0a6548`  
		Last Modified: Thu, 25 Oct 2018 09:24:46 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:e7761bda07c1614e885a9f47413ab907a668a0808346cfcb54f3bbd03b8f956e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.7 MB (339702706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b376eab3c15b409a44fa62adfb7e72e6b176fe68e25fb6d209fef2b71015d24a`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:34 GMT
ADD file:d966b641bd0795de9f6442fec893e1b9449c978d22fd9094d193b1535602d0a2 in / 
# Wed, 05 Sep 2018 12:02:35 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:10:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:10:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:14:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 12:05:47 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 12:01:43 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 12:02:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 12:02:35 GMT
CMD ["jshell"]
# Thu, 25 Oct 2018 12:37:40 GMT
CMD ["gradle"]
# Thu, 25 Oct 2018 12:37:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 25 Oct 2018 12:37:41 GMT
ENV GRADLE_VERSION=4.10.2
# Thu, 25 Oct 2018 12:37:49 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 12:37:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Thu, 25 Oct 2018 12:37:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 25 Oct 2018 12:37:57 GMT
USER [gradle]
# Thu, 25 Oct 2018 12:37:57 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 25 Oct 2018 12:37:58 GMT
WORKDIR /home/gradle
# Thu, 25 Oct 2018 12:38:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ba8445defddd24c3f2ac1eee6211fd2c3b937fa4fb76c2b8e6cff179fd515555`  
		Last Modified: Wed, 05 Sep 2018 12:11:44 GMT  
		Size: 22.0 MB (21986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7054fed937aa9eb213be249c9e83d066ebfc81075a7ac56b5fcc5ea9db7df2bf`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 435.3 KB (435302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9fa9b089781c7e685cb03827f255eaddb539c9ca57b5a62119f11f2f48816`  
		Last Modified: Wed, 05 Sep 2018 13:36:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111e6a305987c8f4221f0f1b980a91e385498b2b08dade9597055697d681b88`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7207df6e6b966792b6080484bddcedf9b1735553932e172afb56a326587686e1`  
		Last Modified: Thu, 25 Oct 2018 12:17:18 GMT  
		Size: 238.3 MB (238292792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0352075523a6e5f789012af01b18efbaf71d094f4b5f760729e0438f52fbda36`  
		Last Modified: Thu, 25 Oct 2018 12:40:01 GMT  
		Size: 581.3 KB (581336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e023e744d0da0edfb87c651946c0fc9827336f112741af90be83fd1f68d3f1`  
		Last Modified: Thu, 25 Oct 2018 12:40:11 GMT  
		Size: 78.4 MB (78406112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e58355451efbc34f56dd60c21684811ba6e85c6d6dafcd2b376ee4c1ad04dc`  
		Last Modified: Thu, 25 Oct 2018 12:40:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:38f63784c820596cdea66213bfe02371c717258e0c94730e07bae48d888a3556
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.5 MB (355549830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0dcdc9a939804d050b4d4e0c663e6dd168d8a5f1cbe677d2f5bbe33232e2e7`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:52 GMT
ADD file:28f5428adbb0e42900e3c72b4cbf34c1ec73a7f6291cd1e2723a7f579a754947 in / 
# Fri, 16 Nov 2018 10:11:02 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 04:25:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:25:21 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:25:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:43:45 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:43:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:43:47 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 17 Nov 2018 04:43:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Sat, 17 Nov 2018 04:45:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 04:45:16 GMT
CMD ["jshell"]
# Sat, 17 Nov 2018 21:13:09 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 21:13:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 21:13:11 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 21:13:26 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 21:13:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 21:13:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 21:13:55 GMT
USER [gradle]
# Sat, 17 Nov 2018 21:13:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 21:13:57 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 21:14:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:77c16290cf417232d2441e8fdfed16146041192c6fd690f232cc4db2f328d09d`  
		Last Modified: Thu, 15 Nov 2018 01:31:50 GMT  
		Size: 24.9 MB (24909641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a43f1a0db0daf11d3745b412ba5e2247498323d168915996249c293242557eb`  
		Last Modified: Sat, 17 Nov 2018 05:19:00 GMT  
		Size: 446.4 KB (446389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcad3f77424094b0bd2909b7e5d597015d7b0feba829760f386b01be2327398`  
		Last Modified: Sat, 17 Nov 2018 05:19:00 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d8255de1f322512b1d5d55d46aadaf0891f24bca485966d0c07c5c22dce028`  
		Last Modified: Sat, 17 Nov 2018 05:36:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06264bf5c1a8c3fe06208f7f64331f2f423a59297a10fc3f683c7c92c1c08651`  
		Last Modified: Sat, 17 Nov 2018 05:37:27 GMT  
		Size: 251.2 MB (251175744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19e05487bcac2f2630943d0ed58de7e28e81b4fb0e846fabc01655949b044d0`  
		Last Modified: Sat, 17 Nov 2018 21:35:17 GMT  
		Size: 611.4 KB (611418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd6b78501cdc0aa4f43630ccaef7542cb8d78e043bea7d73f47b89649eae93c`  
		Last Modified: Sat, 17 Nov 2018 21:35:28 GMT  
		Size: 78.4 MB (78406062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904b9d1fc60bded6e85676cac6a6b039c38d265a3acd2ddd32eeee2efd741521`  
		Last Modified: Sat, 17 Nov 2018 21:35:17 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; 386

```console
$ docker pull gradle@sha256:48d5c6164410a133159407ee3b7fbf909a7522b58e5f295291b5444f41365994
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.7 MB (445677778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8d4094a526a1a5418ad7cb1fbc19491d01be5640c346357c2986e0ed0841b8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 10:46:11 GMT
ADD file:de1ede4d258303cc898beaef52403a45e336767a5efcfee2e497c8ff2b09bf4f in / 
# Tue, 16 Oct 2018 10:46:11 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:27:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:27:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:27:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:30:15 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:30:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:30:16 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 10:58:49 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 10:59:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 10:59:45 GMT
CMD ["jshell"]
# Thu, 25 Oct 2018 12:36:46 GMT
CMD ["gradle"]
# Thu, 25 Oct 2018 12:36:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 25 Oct 2018 12:36:47 GMT
ENV GRADLE_VERSION=4.10.2
# Thu, 25 Oct 2018 12:36:52 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 12:36:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Thu, 25 Oct 2018 12:36:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 25 Oct 2018 12:36:57 GMT
USER [gradle]
# Thu, 25 Oct 2018 12:36:57 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 25 Oct 2018 12:36:58 GMT
WORKDIR /home/gradle
# Thu, 25 Oct 2018 12:37:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:8081280a76deef5332a8b69838e8a401e3bada1d5a8daf36a23f8af2f073d917`  
		Last Modified: Tue, 16 Oct 2018 11:02:27 GMT  
		Size: 26.9 MB (26856248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3ccb230308bbb498c4e46d9efaa4597ceb0bf410784d54013b20430a0321ea`  
		Last Modified: Tue, 16 Oct 2018 11:41:18 GMT  
		Size: 469.5 KB (469503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdfe326205ae151a1b42c81e7531e2261f16a61846bd8fe88d816f2d4972e18`  
		Last Modified: Tue, 16 Oct 2018 11:41:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0cf28777567158df0d92be88b7ab501545b9ea257da9b82d63389b7bfc2585`  
		Last Modified: Tue, 16 Oct 2018 11:46:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5085b30f0d5bc897bdd0045e3d761dd5f96c43c49787fa84da6049fa9093bcfd`  
		Last Modified: Thu, 25 Oct 2018 11:06:58 GMT  
		Size: 339.3 MB (339318238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2503569c09d38e34ad1ed4f5041e0d8147966741f63727e57731c914e833036a`  
		Last Modified: Thu, 25 Oct 2018 12:41:30 GMT  
		Size: 627.2 KB (627232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a150ac619dbd65a87bbeefe0adaeba96eb993c6702aa8b183b76788179025942`  
		Last Modified: Thu, 25 Oct 2018 12:41:37 GMT  
		Size: 78.4 MB (78406048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e4d9d505c2c955faaa9d36e8b122495316fe1ced385864a77ba6d71f21ee99`  
		Last Modified: Thu, 25 Oct 2018 12:41:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:48edb7f2e854e787cf40757607413c91e7a7a1ce723a3d04d52fa8968c03ab76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.7 MB (360740069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc3e00e2bf6b17e82e541f1b23cf6736dc04a1badc813881d96aa8bc58cee0f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:29:41 GMT
ADD file:4e7aed8442dab8670ee744a30c1509d64bc59b21c1de883a0aa7c347864e8f32 in / 
# Fri, 16 Nov 2018 09:29:44 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:46:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:46:31 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:46:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 21:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 21:57:03 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 21:57:04 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 21:57:05 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 21:58:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 21:58:29 GMT
CMD ["jshell"]
# Sat, 17 Nov 2018 05:41:41 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 05:41:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 05:41:42 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 05:41:54 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:41:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 05:42:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 05:42:10 GMT
USER [gradle]
# Sat, 17 Nov 2018 05:42:11 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 05:42:12 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 05:42:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:10ef44428855cb1531bb921aece7e2fce8c3114535e791b0137ae992bcf6c0de`  
		Last Modified: Fri, 16 Nov 2018 09:38:12 GMT  
		Size: 29.4 MB (29380289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054bdbfdc967c63925725f62f220d089aae13bf5b98096107a202b4ca109c8d4`  
		Last Modified: Fri, 16 Nov 2018 22:26:10 GMT  
		Size: 458.0 KB (457984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c725e69781be4295e403a1705023b4f68d41b63088650dee68b80f6bebce9ed`  
		Last Modified: Fri, 16 Nov 2018 22:26:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bf954869f1f2cea6492a55b19789f0fd5546aa2bc2d43b39321f5417dc047`  
		Last Modified: Fri, 16 Nov 2018 22:39:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecafa7e546c5c53f992c25f8603d46a40ea8e2115d83f6cc41d9c4fea8253a8`  
		Last Modified: Fri, 16 Nov 2018 22:40:19 GMT  
		Size: 251.8 MB (251844540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228d9b9f7c2e0ee4563f610114e23aae5a53358503458e2f8062f8b5db505a80`  
		Last Modified: Sat, 17 Nov 2018 05:58:29 GMT  
		Size: 650.5 KB (650503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf97738ee3fe3542aaa286b7640f1f210f4d48fba151838ecce8d4cfe695d2c`  
		Last Modified: Sat, 17 Nov 2018 05:58:37 GMT  
		Size: 78.4 MB (78406147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8164ea7bc7205fdc16e097ff28844028f6a5e9e1c7f4b2fc80f629534fd33875`  
		Last Modified: Sat, 17 Nov 2018 05:58:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; s390x

```console
$ docker pull gradle@sha256:3072d13739f9c0eefae530aa67da40b0a7af3b3a2bff8b5777b59700a43994e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.4 MB (354394720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c366fa41bb12614b220b13a6e7a3cc3b11f87bad958f3d2269cb7470738a60f7`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:42:52 GMT
ADD file:3973d2bdf4ed1dc196652a0c44df84251530a44f0375e217e92c2c8da163daee in / 
# Fri, 16 Nov 2018 12:42:53 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:45:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:45:17 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:45:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:49:23 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:49:23 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:49:23 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 20:49:23 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 20:50:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 20:50:16 GMT
CMD ["jshell"]
# Sat, 17 Nov 2018 07:48:45 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 07:48:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 07:48:45 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 07:48:50 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:48:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 07:48:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 07:48:54 GMT
USER [gradle]
# Sat, 17 Nov 2018 07:48:54 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 07:48:55 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 07:48:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:17f6fbb713515e136919f5f0438be0049eff031a24cf8c46275983348721893d`  
		Last Modified: Thu, 15 Nov 2018 01:49:15 GMT  
		Size: 25.2 MB (25217722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b800f4791d15790ab70d71048aae04dadfd4964f749d46ce99cda9b4fb1a8cc2`  
		Last Modified: Fri, 16 Nov 2018 20:59:20 GMT  
		Size: 469.4 KB (469350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb03c98a7412abbc65c9348237e4e3991394048f85c985fe27a347f5ae40c3a`  
		Last Modified: Fri, 16 Nov 2018 20:59:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65db5f0dd0d621ebed6e78c0759b8402b3904d55e5c0834c0141205963656268`  
		Last Modified: Fri, 16 Nov 2018 21:05:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967902c063b34f8f9ef38ef5ba8c47e87ac54e2e16946b10e5e17dc707283913`  
		Last Modified: Fri, 16 Nov 2018 21:05:43 GMT  
		Size: 249.7 MB (249691635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac441c5e61493180494d0ea191f995308ba1e3521dd901bfde330078cfba640`  
		Last Modified: Sat, 17 Nov 2018 07:54:31 GMT  
		Size: 609.4 KB (609421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a31532e1979c6d9e503bd428940af51c80ad8ad0910c40e7538711f9d52c03a`  
		Last Modified: Sat, 17 Nov 2018 07:54:38 GMT  
		Size: 78.4 MB (78406013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889dbc801fc22b0c7a7c149dde42aeb9cc7ed02f9ae1941dae110647323adaf7`  
		Last Modified: Sat, 17 Nov 2018 07:54:31 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
