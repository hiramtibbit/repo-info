## `gradle:jdk-slim`

```console
$ docker pull gradle@sha256:953aa487963b1662969acec2b4c3f16dd3c08d9790843f2c8507a943f6827348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `gradle:jdk-slim` - linux; amd64

```console
$ docker pull gradle@sha256:1e272332ecc4dc64cd2f6f46b6185d9db6b57ea03800a114287944cab0b304cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178702856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb8f05aa014a1e23f760a01868ccd89c512812caa2c208b02f8af9ef4cd4d2e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 16 Apr 2019 21:20:10 GMT
ENV GRADLE_VERSION=5.4
# Tue, 16 Apr 2019 21:20:15 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Apr 2019 21:20:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
# Tue, 16 Apr 2019 21:20:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 16 Apr 2019 21:20:19 GMT
USER gradle
# Tue, 16 Apr 2019 21:20:19 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 16 Apr 2019 21:20:20 GMT
WORKDIR /home/gradle
# Tue, 16 Apr 2019 21:20:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d944e3d00df7bedd2f9a6aa678132a1fb785f7d56b16fdf24c22d5c7c3b7a1`  
		Last Modified: Wed, 27 Mar 2019 01:07:47 GMT  
		Size: 454.9 KB (454886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bab4726b26256203f65b775249f692a75948d9a4ad21dc348d4e8faee30596`  
		Last Modified: Tue, 16 Apr 2019 21:23:34 GMT  
		Size: 1.1 MB (1098977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd75e5b05c7b9402d25f95b3b875f9df221db72c2af16ea35b1b6b19f4ff3ce`  
		Last Modified: Tue, 16 Apr 2019 21:23:43 GMT  
		Size: 87.1 MB (87097683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13750972db044566ef96f50de810d3f8197afbd75a2706f849aa0b89e890ec14`  
		Last Modified: Tue, 16 Apr 2019 21:23:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:15f10eb5e775ab68bcdb4bff249b4100cd3644353ad15436721dba8110e4248e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165758742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd8212a8dbbcde3bb3568d8cd240965679cdfc13962d587ca0b1f1cf5237bbfe`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:05:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:05:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:05:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:05:51 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:58:02 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:58:03 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:58:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:38:23 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:38:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 17 Apr 2019 08:49:00 GMT
ENV GRADLE_VERSION=5.4
# Wed, 17 Apr 2019 08:49:10 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Apr 2019 08:49:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
# Wed, 17 Apr 2019 08:49:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 17 Apr 2019 08:49:18 GMT
USER gradle
# Wed, 17 Apr 2019 08:49:19 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 17 Apr 2019 08:49:19 GMT
WORKDIR /home/gradle
# Wed, 17 Apr 2019 08:49:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f184019a96fee337c84a360b1e91acc9c23da4c079fff811b4063c86f948174`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 447.7 KB (447747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8cd2997515211b07b46ad7c489c674b0bc97d1df09588ab2f9963460d643b51`  
		Last Modified: Wed, 27 Mar 2019 12:23:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fbfcae4e9de3c126a4d1d2f1cc0dff41d9c4c2444c6d9e6b9ee756d626e0c`  
		Last Modified: Wed, 27 Mar 2019 12:23:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e75d1c2679aa1ec5c50c4ce5c34878e83f114db21b3b8349bae6d144ff48c05`  
		Last Modified: Thu, 28 Mar 2019 09:11:20 GMT  
		Size: 56.0 MB (55991303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d63ba1f65b6bcc019c446e90ac1150988764fddad598cccfb6dbcb430618a6`  
		Last Modified: Wed, 17 Apr 2019 08:53:07 GMT  
		Size: 1.1 MB (1061060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54768a6ecd9a363a0a6e9bf43eb8b1c70478bf3ae863e406b67a6440ec9a15f6`  
		Last Modified: Wed, 17 Apr 2019 08:53:20 GMT  
		Size: 87.1 MB (87097419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75fde762771b65e31a62b08eb2344d0a2fbc02890727ab91b4bbfee544b86c1`  
		Last Modified: Wed, 17 Apr 2019 08:53:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:18aa844dff93cab93a72442d9fa6c82afd46356a68f291dd49e51af6797f13c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168644703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857458d11322fed66aa23adeea35522563d28797d0b4439166b902c72a0cbb17`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 19:25:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:36:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:36:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:36:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:36:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 03:58:22 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 03:58:23 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 04:00:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 04:17:03 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 04:17:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 17 Apr 2019 08:41:10 GMT
ENV GRADLE_VERSION=5.4
# Wed, 17 Apr 2019 08:41:30 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Apr 2019 08:41:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
# Wed, 17 Apr 2019 08:41:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 17 Apr 2019 08:41:43 GMT
USER gradle
# Wed, 17 Apr 2019 08:41:43 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 17 Apr 2019 08:41:44 GMT
WORKDIR /home/gradle
# Wed, 17 Apr 2019 08:41:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b2a3db5fe5bcef92897d12d82e7bf4b1c81832ef030a3036b2cf488ad45373`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 440.9 KB (440897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2999ac8d95dfa97fcb9e08a6e0ebc377b5f2f7e28df1ec2186d8aa260a79cbb9`  
		Last Modified: Wed, 27 Mar 2019 19:45:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ac67d53f5794f0dd5934751906f180b059d1b5c1f3a8c7e849166451397cc7`  
		Last Modified: Wed, 27 Mar 2019 19:45:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1c2cd2b8922b961c580965218b76cfc9c87c342537b649ae828b2bd150ea97`  
		Last Modified: Thu, 28 Mar 2019 04:12:14 GMT  
		Size: 59.7 MB (59710562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6763776123eaafb82c1b69c3183f16fe5d21a9d38d3528f5958f5115fa72f30f`  
		Last Modified: Wed, 17 Apr 2019 08:49:59 GMT  
		Size: 1.1 MB (1054865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1782c8a26e021e5671c24b77a24581792ffbf8cee48598cf00b237a969b5d375`  
		Last Modified: Wed, 17 Apr 2019 08:50:12 GMT  
		Size: 87.1 MB (87097684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7577e664c356a0d7b8c8efa726b76676f5f18b26aaacdec302142a2d77f61a1e`  
		Last Modified: Wed, 17 Apr 2019 08:50:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; 386

```console
$ docker pull gradle@sha256:e8a0bb9cd88981df3c27843d741e925471b47e702c8f34b4c15640cfc6f6a20f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178588953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c375c12f5ba8d44df1753b036488f5a546372267ead4729908dffba9bc769fd3`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:56:38 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:56:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:56:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:56:39 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 00:58:52 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 00:58:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 00:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:28:27 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 01:28:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 17 Apr 2019 10:39:03 GMT
ENV GRADLE_VERSION=5.4
# Wed, 17 Apr 2019 10:39:09 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Apr 2019 10:39:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
# Wed, 17 Apr 2019 10:39:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 17 Apr 2019 10:39:14 GMT
USER gradle
# Wed, 17 Apr 2019 10:39:14 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 17 Apr 2019 10:39:15 GMT
WORKDIR /home/gradle
# Wed, 17 Apr 2019 10:39:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d7f9eb531082cde488d0aa03b101f3e89fbf5c5a1258cd81277fc760913c1`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 463.5 KB (463546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06032fd0d07a7a76e209678dc483ec560f49df6b1b9383ad5b54571cb3a91b3`  
		Last Modified: Wed, 27 Mar 2019 18:30:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c4d4f34e622de5c0a44259e6a9f14b9b6308cfec4d440550815ba715d6e3`  
		Last Modified: Wed, 27 Mar 2019 18:30:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800886bb2903d6ed9ceb8b56668276ddc345f3a9cd650ab12a498d988718815f`  
		Last Modified: Thu, 28 Mar 2019 01:17:17 GMT  
		Size: 66.8 MB (66780613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03801e8e74da3fcdeac8132887e4462c4f0478164b699ee3033d89b93a070bf`  
		Last Modified: Wed, 17 Apr 2019 10:41:58 GMT  
		Size: 1.1 MB (1120862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54afe888ca13fab7505c4782ef409f6739bf89d48f74a17e87dcebbfea5b0cae`  
		Last Modified: Wed, 17 Apr 2019 10:42:06 GMT  
		Size: 87.1 MB (87097669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c94eb38785d6aebc53525ebb317e3f56cdc9f152118722402e449660b57a8`  
		Last Modified: Wed, 17 Apr 2019 10:41:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:3a39f5bf76472e988616aded46a020ca367c273f3cf2c858118637ef0cebea3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169321858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b545ccbc84b905468ac5a357b30ef36bd01854a35ece2ccbfb44d37feab7137`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 17 Apr 2019 08:21:00 GMT
ENV GRADLE_VERSION=5.4
# Wed, 17 Apr 2019 08:21:35 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Apr 2019 08:21:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
# Wed, 17 Apr 2019 08:21:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 17 Apr 2019 08:22:00 GMT
USER gradle
# Wed, 17 Apr 2019 08:22:04 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 17 Apr 2019 08:22:09 GMT
WORKDIR /home/gradle
# Wed, 17 Apr 2019 08:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=c8c17574245ecee9ed7fe4f6b593b696d1692d1adbfef425bef9b333e3a0e8de
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d945fa8d0ebb59b7a9080958527a126b684d68ce1af2c32555975da70823c1d6`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 449.8 KB (449831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d782211d6e3fcf30f71bca6c6adeabd91ff189d712739f38a16ee00d5e253e1`  
		Last Modified: Wed, 17 Apr 2019 08:33:52 GMT  
		Size: 1.1 MB (1084116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ee4b123163c9dd0c56df696aa22cc0800b5b7356f80850faed1d863b77607`  
		Last Modified: Wed, 17 Apr 2019 08:34:02 GMT  
		Size: 87.1 MB (87097448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67ecbe8770f3d821dbff00264f2ac002320ac0ff26fc863e00e2b6f74540b32`  
		Last Modified: Wed, 17 Apr 2019 08:33:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
