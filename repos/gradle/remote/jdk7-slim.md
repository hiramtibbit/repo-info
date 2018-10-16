## `gradle:jdk7-slim`

```console
$ docker pull gradle@sha256:881bf779717403355fb4e9a4a69e104010db9b05ad571b1804b802bfe0aa4e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `gradle:jdk7-slim` - linux; amd64

```console
$ docker pull gradle@sha256:574fb3e92bf130e367822b38deb79bee4db33f19b8877340420a02a143b5bd68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206580959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f12882976c91f41577f12672da32eb097cefdd64a13a28f8b5de0cc8a2c633`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:32:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:32:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 05:33:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 16:37:03 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 16:37:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 16:37:04 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 16:38:13 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:38:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 16:38:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 16:38:20 GMT
USER [gradle]
# Tue, 16 Oct 2018 16:38:21 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 16:38:21 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 16:38:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8defe034fd48900ab2c6e8bd0efb090a2e8d7dc437c82e961339ec4ad7737`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 463.7 KB (463743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d8dad75e602d23f8d377d9e8981537f979365546442ee03aabbe7a2826ae42`  
		Last Modified: Tue, 16 Oct 2018 06:03:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad497c7359958782aa0f99bcc986a3e88be017a1052c80d1f7b51d886c93c462`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba98c252b6c1ff288a099f0b1e4e66dfe9fa004e77bfc35b8e870837db911666`  
		Last Modified: Tue, 16 Oct 2018 06:03:27 GMT  
		Size: 85.2 MB (85206189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864015f92db91facbb7def109f4826cbbd4ed4666b92cbf4875720ada3eb1bca`  
		Last Modified: Tue, 16 Oct 2018 16:51:16 GMT  
		Size: 12.4 MB (12384176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ecfb5c3070357755bb3180c2cc970f68140f952db95cb52b810ed8e2bd548d`  
		Last Modified: Tue, 16 Oct 2018 16:51:21 GMT  
		Size: 78.4 MB (78405711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a555debd4fc86d36784a17daafd0cead788932ab9a235c1b81d5a8b5cbbe92`  
		Last Modified: Tue, 16 Oct 2018 16:51:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:ff693fa59befd7408c1e8a9f4e8533c4e463454e8f6a2fbfcbba427df2a0b379
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191667485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b24ac9c7c1d12af3be674e6b8401198a434388d7b67e3e82dbb65c90fe075054`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 08:50:34 GMT
ADD file:69b30c48e8faba6f806af50fceaf1e3c221790b8c792da2f95d196e874576d79 in / 
# Tue, 16 Oct 2018 08:50:34 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:16:19 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:16:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:16:22 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:16:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:16:22 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 09:16:23 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 09:18:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 12:41:30 GMT
CMD ["gradle"]
# Tue, 16 Oct 2018 12:41:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Oct 2018 12:41:31 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 16 Oct 2018 12:42:14 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:42:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 16 Oct 2018 12:42:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Oct 2018 12:42:24 GMT
USER [gradle]
# Tue, 16 Oct 2018 12:42:24 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Oct 2018 12:42:25 GMT
WORKDIR /home/gradle
# Tue, 16 Oct 2018 12:42:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:60074b2fffc5dcd4b352d0312d355ce10a4ab05ced3d44643c9b24e24d0e0677`  
		Last Modified: Tue, 16 Oct 2018 09:00:17 GMT  
		Size: 28.4 MB (28430766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeec93c39892ab38a29c804d36b6e00fe148e151b04537b0d15730f9f491992`  
		Last Modified: Tue, 16 Oct 2018 09:27:25 GMT  
		Size: 456.5 KB (456464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc857170e080ede98a479682d6478fd31a131756212ac768dd59b0a9afa1f6e1`  
		Last Modified: Tue, 16 Oct 2018 09:27:25 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7ab62c4c593ba60dc90051684f35dfc9020702c624ecaa4061567dc0f0bf7b`  
		Last Modified: Tue, 16 Oct 2018 09:27:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5097c54cf14d6c89a80834ea4e23bb6e14bbea75394f2dbb97f8bee5d447dbeb`  
		Last Modified: Tue, 16 Oct 2018 09:27:41 GMT  
		Size: 72.2 MB (72182788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b580c5479c194ac6f7afe2f08e48ce86d28715be977fde073b8eca366b7c2d`  
		Last Modified: Tue, 16 Oct 2018 12:48:42 GMT  
		Size: 12.2 MB (12191257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd2123e3b39a9a256c91a5bbc0798d2bdd03c82fa6ee623ea03adb09b8ab29f`  
		Last Modified: Tue, 16 Oct 2018 12:48:50 GMT  
		Size: 78.4 MB (78405594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6a9ea9894343678146c1887e13aac265477f652db7c5afa36bacff44903f29`  
		Last Modified: Tue, 16 Oct 2018 12:48:37 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:7e512dc9f5aa8dcd49853feeb593c75b5a4f75f705987a7fc79685aec60c5033
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.7 MB (187681874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd8d7faa6ca900078564b43cdfc02f1522ba47e4d928fba171a9841de00c550`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:27:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:27:59 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:28:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:28:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:28:02 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 13:28:02 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 13:28:03 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 13:29:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 17:51:57 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 17:51:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 25 Sep 2018 12:00:37 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 25 Sep 2018 12:01:18 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 12:01:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 25 Sep 2018 12:01:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 25 Sep 2018 12:01:27 GMT
USER [gradle]
# Tue, 25 Sep 2018 12:01:28 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Sep 2018 12:01:28 GMT
WORKDIR /home/gradle
# Tue, 25 Sep 2018 12:01:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20732298c973041fa9dfd5140384088b681b5210d358af234f804c92ea624af8`  
		Last Modified: Wed, 05 Sep 2018 13:45:03 GMT  
		Size: 432.3 KB (432314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306c16b05ac260bf5495a9d4e58021eaee24fbbbb56c335ef2a1c49ad0965ec0`  
		Last Modified: Wed, 05 Sep 2018 13:45:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1850d26c80f8e448e6e27b56b953c98e21ec755978c144ce38fc7579edac845e`  
		Last Modified: Wed, 05 Sep 2018 13:45:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0c6734989760ae2cd2083cab8fcd04cc755190895509541f6f227f64a72f3d`  
		Last Modified: Wed, 05 Sep 2018 13:45:13 GMT  
		Size: 70.5 MB (70509827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217964ea2393abb008a7a73a93a805e7a0d85700ea63dc1b9fd808a86adf7ac0`  
		Last Modified: Tue, 25 Sep 2018 12:10:31 GMT  
		Size: 12.0 MB (12046521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d5a4e9f9fda28622d04ac4635bd23a54537ed771a6a3cc3398ab8013126250`  
		Last Modified: Tue, 25 Sep 2018 12:10:37 GMT  
		Size: 78.4 MB (78405595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2913e50af8b9bea7be5f7d0b4f5b4e81eb4a93d93e3b74456ef199742c002c80`  
		Last Modified: Tue, 25 Sep 2018 12:10:28 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-slim` - linux; 386

```console
$ docker pull gradle@sha256:061412b8239287f0602c0da57c36fb6bdc7f277d1c66121a7a216a87e670f1e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218786604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8529feefec4eae211ec32089c83dae0900de5cb5facc5745d2a841615c998939`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:06:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:06:49 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:06:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:06:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:06:52 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 13:06:52 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 13:06:52 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 13:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 07 Sep 2018 03:05:48 GMT
CMD ["gradle"]
# Fri, 07 Sep 2018 03:05:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 25 Sep 2018 10:39:29 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 25 Sep 2018 10:40:05 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 10:40:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 25 Sep 2018 10:40:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 25 Sep 2018 10:40:10 GMT
USER [gradle]
# Tue, 25 Sep 2018 10:40:10 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Sep 2018 10:40:10 GMT
WORKDIR /home/gradle
# Tue, 25 Sep 2018 10:40:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec388e0f3fa2dac46c15155f8c5d833c73c83c38c56ba879b7b9ee1f82c33721`  
		Last Modified: Wed, 05 Sep 2018 13:29:52 GMT  
		Size: 466.3 KB (466290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c171584d41ec51129431a206158a478453ba12d8395205e3c8025530b52569`  
		Last Modified: Wed, 05 Sep 2018 13:29:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ecedb5dbb7ded7bb71dc9d3bdfd303cc59568a829ded2c8f3b03ae675d64fa`  
		Last Modified: Wed, 05 Sep 2018 13:29:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db7d236a8c1946b51d10b136454944602db831d457ca12fbabf5853c74ba9fd`  
		Last Modified: Wed, 05 Sep 2018 13:30:29 GMT  
		Size: 97.1 MB (97124036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee960c36d7cd997c5f3d95cd92263a4c4ead61dcddffedf676d96bede6e0dccf`  
		Last Modified: Tue, 25 Sep 2018 10:46:19 GMT  
		Size: 12.5 MB (12520059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfaa93032aa849a74bc2b09611a4c6aa867a69e63060f4004b47dc1dcba3354a`  
		Last Modified: Tue, 25 Sep 2018 10:46:23 GMT  
		Size: 78.4 MB (78405634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccc98240e1e7b75d9c365759a2831f87a253ddb589ea5131f8952f6fbf3deed`  
		Last Modified: Tue, 25 Sep 2018 10:46:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
