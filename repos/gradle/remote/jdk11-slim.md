## `gradle:jdk11-slim`

```console
$ docker pull gradle@sha256:51fc3eadc76c64efd81eb45e4aa9ffbca93d4f1441e6efafd776479d6d4bfe5c
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
$ docker pull gradle@sha256:daf7858cd92c0002de8ab786ade0d0327360ab6663990b777847356e8682e8a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.0 MB (402044166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837841393e6fd1af0dd9a729657f553700a1caf663ec84ce89968c3e86089d94`
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
# Fri, 16 Nov 2018 14:45:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:45:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:45:47 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 14:45:47 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 14:46:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:46:51 GMT
CMD ["jshell"]
# Sat, 17 Nov 2018 05:53:47 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 05:53:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 05:53:48 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 05:53:56 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:53:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 05:54:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 05:54:02 GMT
USER [gradle]
# Sat, 17 Nov 2018 05:54:02 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 05:54:03 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 05:54:07 GMT
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
	-	`sha256:acc1dbecb164e8ca70c49c609a29fdabbc6fe67162d24936ea99450255ee2390`  
		Last Modified: Fri, 16 Nov 2018 15:22:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e36f3b4ddaf5cd04a48bf8af9a30d67b299f7f0593fba72b9f6d73eb4a9692f`  
		Last Modified: Fri, 16 Nov 2018 15:22:49 GMT  
		Size: 296.0 MB (295993821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0067fcd223ab46bf222770642b0f2fd47b7514eb39f6d7dd2b282e7e8fd00df`  
		Last Modified: Sat, 17 Nov 2018 06:22:02 GMT  
		Size: 612.0 KB (612017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634a078cb5f2dcd0450f307ae63bc4b7951e47f136f54948434faa1f12b29307`  
		Last Modified: Sat, 17 Nov 2018 06:22:10 GMT  
		Size: 78.4 MB (78406042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c2d372bfb1b0baabec9273803b966ed3b620085bf913d157b115689a0c8863`  
		Last Modified: Sat, 17 Nov 2018 06:22:01 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:5ef2961e3df4dfcbcfb7eeebb173fe5140ecd6b0866d0af701f31040340dd566
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.8 MB (327836389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32870ce345879b2bf05e775e6fb896933d5cbb0517762caf8ac165744336243c`
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
# Tue, 16 Oct 2018 09:09:22 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:09:22 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 09:03:16 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 09:03:17 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 09:04:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 09:04:06 GMT
CMD ["jshell"]
# Fri, 19 Oct 2018 09:48:32 GMT
CMD ["gradle"]
# Fri, 19 Oct 2018 09:48:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 19 Oct 2018 09:48:33 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 19 Oct 2018 09:48:43 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:48:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 19 Oct 2018 09:48:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 19 Oct 2018 09:48:51 GMT
USER [gradle]
# Fri, 19 Oct 2018 09:48:51 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 19 Oct 2018 09:48:52 GMT
WORKDIR /home/gradle
# Fri, 19 Oct 2018 09:48:59 GMT
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
	-	`sha256:d22031b689bbc2e748ea0f850bfe940e07c0b42fa22fae3e13c76cd6dd26282c`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a921e48abc113ad5d986cdfb48c5810441e19396f0f2c1cd43d400dd510ad02e`  
		Last Modified: Fri, 19 Oct 2018 09:10:22 GMT  
		Size: 224.3 MB (224325006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207df6bfaeafe500587b1fddc5f6cdd9bc3a1a5c9f0161e741a31abbe027f80`  
		Last Modified: Fri, 19 Oct 2018 09:50:53 GMT  
		Size: 600.7 KB (600674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df662f0d20c43c62cc0f916ed2577bf49d2534761f860fbceef1eb4e3d6ea73a`  
		Last Modified: Fri, 19 Oct 2018 09:51:03 GMT  
		Size: 78.4 MB (78406119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20177a8fe4688151795ce0e419f5ca0c2f72110351d2c8b3f7dd14ca5a1e395a`  
		Last Modified: Fri, 19 Oct 2018 09:50:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:c484f612e9e77cd83c7bca2cea6d4450c862fffed2ec0dd184d828dc1fb2fb2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350414332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e4048fe3c473c8502c9124c810acc718fe63f6af89d9b4bca27613a927bc0`
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
# Wed, 05 Sep 2018 13:10:16 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:10:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 12:06:31 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 12:06:31 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 12:07:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 12:07:19 GMT
CMD ["jshell"]
# Fri, 19 Oct 2018 12:45:46 GMT
CMD ["gradle"]
# Fri, 19 Oct 2018 12:45:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 19 Oct 2018 12:45:47 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 19 Oct 2018 12:45:55 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:45:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 19 Oct 2018 12:46:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 19 Oct 2018 12:46:03 GMT
USER [gradle]
# Fri, 19 Oct 2018 12:46:03 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 19 Oct 2018 12:46:04 GMT
WORKDIR /home/gradle
# Fri, 19 Oct 2018 12:46:06 GMT
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
	-	`sha256:a1b4a4356e4985fd665b9c4ac6b65f0c326a47b37393268d7a132a1a9d8510b7`  
		Last Modified: Sat, 08 Sep 2018 12:22:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810cea17cfbb3ef77440730852440a4bbfebb68cc510c569e0b33b15891350d`  
		Last Modified: Fri, 19 Oct 2018 12:22:54 GMT  
		Size: 249.0 MB (249003169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a2cc7194b6d303a062741a0ad49a2cde9bc9eb312cc7a6803c4f323a0a9ed3`  
		Last Modified: Fri, 19 Oct 2018 12:47:56 GMT  
		Size: 582.6 KB (582581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ccf1f51aebe93e3b0cf9a3a2efb0d0708539c92dac152ffa34c1578af50ff5`  
		Last Modified: Fri, 19 Oct 2018 12:48:09 GMT  
		Size: 78.4 MB (78406117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de68ed23471fa6eb91b275ccf6f3afe8a35dce08f91098daa9f79d4d8d2a025`  
		Last Modified: Fri, 19 Oct 2018 12:47:56 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:130d42754039ab7cf91ff243d94df0bc87c31e7ff17c8e1cffb5ba1070c2fb10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.1 MB (383055918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1398676105eab8fb766fc031befd4c230779c52360b2ce03d862f0f60609b789`
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
# Sat, 17 Nov 2018 04:25:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:25:27 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:25:28 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 17 Nov 2018 04:25:29 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Sat, 17 Nov 2018 04:27:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 04:27:08 GMT
CMD ["jshell"]
# Sat, 17 Nov 2018 21:19:05 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 21:19:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 21:19:06 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 21:19:17 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 21:19:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 21:19:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 21:19:50 GMT
USER [gradle]
# Sat, 17 Nov 2018 21:19:51 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 21:19:51 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 21:19:57 GMT
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
	-	`sha256:be465007a56c376579b832ccfb116d1e5e3b71f955f0560d2e9f3a8f70e800b5`  
		Last Modified: Sat, 17 Nov 2018 05:19:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e32442bc10528eb2b363e9c5baf528e672507c4268e9829c9ff3473f8ff5df`  
		Last Modified: Sat, 17 Nov 2018 05:19:49 GMT  
		Size: 278.7 MB (278680871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a22d0a6af52979a84837b577a0e9d142fb15bd4a3a51ea2403e895454ad163`  
		Last Modified: Sat, 17 Nov 2018 21:40:37 GMT  
		Size: 612.4 KB (612377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aae1acdb6eb9ed391a3ffaf2a13dcf2f74fe506314d1df9200089bc71ea8928`  
		Last Modified: Sat, 17 Nov 2018 21:40:48 GMT  
		Size: 78.4 MB (78406062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237072e902c29ce41dc971cf5a8da739b258fe7ad782a67fd636c6204b315997`  
		Last Modified: Sat, 17 Nov 2018 21:40:36 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; 386

```console
$ docker pull gradle@sha256:72c6878c85cf880e7bab13c5faa3c0a90216c0eca40cfe39e6dd9cb5cbf06228
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.0 MB (479042400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559ace2e6a91a4018ad02f2ec21a45ed796e9aa30af289bb43a0f4b00b8e56e9`
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
# Tue, 16 Oct 2018 11:27:31 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:27:32 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 11:03:48 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 11:03:48 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 11:04:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 11:04:46 GMT
CMD ["jshell"]
# Fri, 19 Oct 2018 12:48:00 GMT
CMD ["gradle"]
# Fri, 19 Oct 2018 12:48:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 19 Oct 2018 12:48:01 GMT
ENV GRADLE_VERSION=4.10.2
# Fri, 19 Oct 2018 12:48:07 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:48:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Fri, 19 Oct 2018 12:48:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 19 Oct 2018 12:48:12 GMT
USER [gradle]
# Fri, 19 Oct 2018 12:48:12 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 19 Oct 2018 12:48:12 GMT
WORKDIR /home/gradle
# Fri, 19 Oct 2018 12:48:14 GMT
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
	-	`sha256:b1fd19fa27617fb253f177ca4e4579785ce7a25a17b68ca8e0aa8d30c81b44b2`  
		Last Modified: Tue, 16 Oct 2018 11:41:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c1a50191bae99647c03c5928ef2448d8811139e8abd7782076bbd37c5a6fe`  
		Last Modified: Fri, 19 Oct 2018 11:11:24 GMT  
		Size: 372.7 MB (372682093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e93dd4e4bb118118d9c4bdec23e030df64f0909d57c1357db1b0745f7a11ba`  
		Last Modified: Fri, 19 Oct 2018 12:50:25 GMT  
		Size: 628.0 KB (628043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b03904b4a9116854c197e52026dda3f45d7ec983b1b5fdd80a7fe476e62890c`  
		Last Modified: Fri, 19 Oct 2018 12:50:32 GMT  
		Size: 78.4 MB (78406005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a7697c0ca509bb4fca5d3b64baea23fa99c68a34a6486c45a1bc67c7446fec`  
		Last Modified: Fri, 19 Oct 2018 12:50:25 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:9ddd83b58893bfb200d17b5d416b6c91ebd76ba31aa4593f1cd7f6f65838aa6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.8 MB (373815235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94637056e83f4e1270e9fa3cac9530841a26e0ea49c2209ac250c333af7a9806`
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
# Fri, 16 Nov 2018 21:46:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 21:46:35 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 21:46:36 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 21:46:37 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 21:47:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 21:47:53 GMT
CMD ["jshell"]
# Sat, 17 Nov 2018 05:44:19 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 05:44:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 05:44:21 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 05:44:30 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:44:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 05:44:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 05:44:39 GMT
USER [gradle]
# Sat, 17 Nov 2018 05:44:41 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 05:44:42 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 05:44:49 GMT
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
	-	`sha256:cad2d205109331b45c64903130f8430bcef7133855780e19ecdee70c37796929`  
		Last Modified: Fri, 16 Nov 2018 22:26:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea82046629512fcf7a88acb5e6734b6cf33b519e7c48e9ff4d1932f479b88c0`  
		Last Modified: Fri, 16 Nov 2018 22:26:49 GMT  
		Size: 264.9 MB (264918999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126ee30dc0e7d0a670417431779464f4ce31bade170e9569055e8324af3a7570`  
		Last Modified: Sat, 17 Nov 2018 06:02:54 GMT  
		Size: 651.2 KB (651242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f72690af61967136adb8b57f49730dbc409a779ce29608d237267fdf0cbce1`  
		Last Modified: Sat, 17 Nov 2018 06:03:05 GMT  
		Size: 78.4 MB (78406119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c37992eacb5f873bd3d0c6f9c91cd086cf179f680850c02cdb09652383bcc6`  
		Last Modified: Sat, 17 Nov 2018 06:02:53 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; s390x

```console
$ docker pull gradle@sha256:90ebee20dea2053ee69d39b503ef4cc876e4bcbbc73dc7b868771a57974549e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.0 MB (365025946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819683e97d396651061c3158cce2cadc60c0c9d22b68cc0b42800af409866a3e`
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
# Fri, 16 Nov 2018 20:45:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:45:19 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 16 Nov 2018 20:45:19 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 16 Nov 2018 20:46:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 20:46:11 GMT
CMD ["jshell"]
# Sat, 17 Nov 2018 07:49:59 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 07:49:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 07:49:59 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 07:50:05 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:50:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 07:50:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 07:50:10 GMT
USER [gradle]
# Sat, 17 Nov 2018 07:50:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 07:50:10 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 07:50:12 GMT
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
	-	`sha256:b63a30123b42647b4246accf7f77d14825485e4321d2b745dcea8df96ccadfb7`  
		Last Modified: Fri, 16 Nov 2018 20:59:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ee5b015197570ad9c48c9acbe1ac9b6a1a03d9d448f536ae1e7ef5566c7fb4`  
		Last Modified: Fri, 16 Nov 2018 20:59:50 GMT  
		Size: 260.3 MB (260322032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22b633fa889b27a1f4e39e644f37c2d90e4fda7e57aebbd7dcfc31cb7ac8a99`  
		Last Modified: Sat, 17 Nov 2018 07:56:00 GMT  
		Size: 610.3 KB (610251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6f2f2f49dabb9ba26f228d9f17094feb1879be887d2bcc7f74e0114ad0e47f`  
		Last Modified: Sat, 17 Nov 2018 07:56:07 GMT  
		Size: 78.4 MB (78406018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4c81287dbe7fc32ceafdd8d3143380a6913e5b656a946d3177c27bf74f2765`  
		Last Modified: Sat, 17 Nov 2018 07:56:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
