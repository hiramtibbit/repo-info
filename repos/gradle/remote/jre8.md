## `gradle:jre8`

```console
$ docker pull gradle@sha256:e7a22069b1bb017272d3a761582c8486325da412999d57e96edea0ec2ab76d88
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
$ docker pull gradle@sha256:fac07eed786338134372d9f16e984f7781d7fac3e56132747e32513b290653cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268903924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921b70a286e536c4e8dc022ca7573508b0f305a2ec8ed8c3fd5f5a8b61161431`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:46:34 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 10:46:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 29 Dec 2018 10:46:35 GMT
ENV GRADLE_VERSION=5.0
# Sat, 29 Dec 2018 10:46:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Sat, 29 Dec 2018 10:46:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 29 Dec 2018 10:46:40 GMT
USER gradle
# Sat, 29 Dec 2018 10:46:41 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 29 Dec 2018 10:46:41 GMT
WORKDIR /home/gradle
# Sat, 29 Dec 2018 10:46:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4da42e9d4371dc90c9223eb35f4782f817c7f887117426489b057068ecabed6`  
		Last Modified: Sat, 29 Dec 2018 10:50:23 GMT  
		Size: 85.5 MB (85485116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72e255fe1e36931435d4e9532c2a7c912883e64cf39671ca0bca6b2f3349035`  
		Last Modified: Sat, 29 Dec 2018 10:50:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; arm variant v5

```console
$ docker pull gradle@sha256:b4f60f9557e9dfbd4b3cf3d180ba23c829c7bd769eb0ce0c589cbb8086b4fe0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256235017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0e13ad50aca8b0348bfac7db196403aca12e4a558dea05b0f5d639ec1e42e1`
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
# Fri, 16 Nov 2018 18:40:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:40:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 18:40:04 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:40:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 18:40:05 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 18:40:06 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 10:00:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:21:05 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 11:21:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 11:21:05 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 11:21:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 11:21:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 11:21:13 GMT
USER gradle
# Wed, 26 Dec 2018 11:21:13 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 11:21:14 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 11:21:17 GMT
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
	-	`sha256:52d3a713d0eed8657ebfd045f0d83a616e50d4be386fec063e2ebfe16a2c5376`  
		Last Modified: Fri, 16 Nov 2018 19:05:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14012e82162ec05cfb1769937475766deaaff3ff3fc4d1478fcc76264f8a3a1b`  
		Last Modified: Fri, 16 Nov 2018 19:05:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad37656140f26baad7bb4149e61bd08a4fe574448bbebc4cf9a6b5180e8eedb`  
		Last Modified: Wed, 26 Dec 2018 10:08:19 GMT  
		Size: 111.9 MB (111902467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6959e1cad61677d6be3906f8d9f49ef8f9b2b95faf93f8cd6304dd6590789c`  
		Last Modified: Wed, 26 Dec 2018 11:25:07 GMT  
		Size: 85.5 MB (85485084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b69cbcbf1a97c1d063ac4db4525d1a6e7dd25bd4bf169fc8f9ffcb7cefd158`  
		Last Modified: Wed, 26 Dec 2018 11:24:54 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; arm variant v7

```console
$ docker pull gradle@sha256:3dc0eaf6938fa15f68751ed938a4098fe16096f3b79cd7c537e7c1d2aef1c961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.5 MB (281538900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0e6b89191691df059d692e664db03e20ab7721f7cf92215e0fa7a404a0f230`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 20 Jun 2018 12:02:10 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 12:02:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Nov 2018 12:58:31 GMT
ENV GRADLE_VERSION=5.0
# Tue, 27 Nov 2018 12:58:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Tue, 27 Nov 2018 12:58:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 27 Nov 2018 12:58:44 GMT
USER [gradle]
# Tue, 27 Nov 2018 12:58:45 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Nov 2018 12:58:45 GMT
WORKDIR /home/gradle
# Tue, 27 Nov 2018 12:58:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556c88cebd1328df1035c42237291beec3a2410398f1091eeaa1ed2bcef471b2`  
		Last Modified: Tue, 27 Nov 2018 13:04:31 GMT  
		Size: 85.5 MB (85485069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89564d978357de75070f7bc3146dddda7a93a92a73b765adc39fbf564bed96a6`  
		Last Modified: Tue, 27 Nov 2018 13:04:06 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0ceaf2c1ee0537916deaaa59bcf181747c1b699ee7dcc1244b9c0221e186094c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (255980689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68a9e2d28162ee410a6adaa13dd9bbed5076aa97ce84806d22b909905e9bdbf`
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
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 10:19:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:01:04 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:01:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:01:08 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:01:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:01:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:01:29 GMT
USER gradle
# Wed, 26 Dec 2018 13:01:30 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:01:31 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:01:37 GMT
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
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39770b9edc0b2cd789e1bb83a5f8f044c0be18c5c73bb1ca5d322ba0513aad11`  
		Last Modified: Wed, 26 Dec 2018 10:29:59 GMT  
		Size: 112.8 MB (112755723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bcd7a3b0558b587cd800249c684ea9d59a40d7526b71e80aa0be0f887590e7`  
		Last Modified: Wed, 26 Dec 2018 13:09:47 GMT  
		Size: 85.5 MB (85485150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e87d91f567c017be22e44ad6aff10f9b56c8847e9205a1914d7ce429c8aaf45`  
		Last Modified: Wed, 26 Dec 2018 13:09:33 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; 386

```console
$ docker pull gradle@sha256:f8413e5178c8921c94701d1a73eabd5804949868c48cdf0ee72c658545e56349
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270324807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97694c0358b8d4cf031bbc97f7927b096b77b5a20755ddaaa7458193ab226e4d`
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
# Sat, 17 Nov 2018 14:04:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:04:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:04:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:04:40 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 14:04:40 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 14:04:40 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 12:14:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 14:43:42 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 14:43:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 14:43:43 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 14:43:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 14:43:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 14:43:47 GMT
USER gradle
# Wed, 26 Dec 2018 14:43:48 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 14:43:48 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 14:43:49 GMT
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
	-	`sha256:a3a5be9441fb5663e76f9d367ae51e64997d57219621d7c6489347dd079bb325`  
		Last Modified: Sat, 17 Nov 2018 14:51:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64abda2ade264bb23cbd3abc7410c83a59abdea27ca44754af4ad144280bbc25`  
		Last Modified: Sat, 17 Nov 2018 14:51:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef588fc29fd0fd21949174d8af75d9e24a43bf36b1b95b94074f1e370e98c96a`  
		Last Modified: Wed, 26 Dec 2018 12:20:34 GMT  
		Size: 122.6 MB (122608333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98c85564b3beb0958ad7cacb329a7acf2df747251015330383a0cb7b19580fe`  
		Last Modified: Wed, 26 Dec 2018 14:46:22 GMT  
		Size: 85.5 MB (85485038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ee8c11322c450e9287b2953b7c84a409f3591f84044a181b719050758cb6b4`  
		Last Modified: Wed, 26 Dec 2018 14:46:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; ppc64le

```console
$ docker pull gradle@sha256:5877cf308494f1bf7018a234b7877ce25de8044e8d076b1d4d7a231efc455bda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260767522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db5d7db1b4a582fff03a08249676a823f35b64f86e83b51f8d64f8207d8a0f0a`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:42:39 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:42:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:42:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:42:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 12:42:57 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 12:42:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 12:49:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 18:10:38 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 18:10:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 29 Dec 2018 18:10:43 GMT
ENV GRADLE_VERSION=5.0
# Sat, 29 Dec 2018 18:10:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Sat, 29 Dec 2018 18:10:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 29 Dec 2018 18:10:57 GMT
USER gradle
# Sat, 29 Dec 2018 18:11:00 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 29 Dec 2018 18:11:04 GMT
WORKDIR /home/gradle
# Sat, 29 Dec 2018 18:11:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce878902ab14c81278ee0033aab4de97d8037e046834071553b9aa82798160a`  
		Last Modified: Sat, 29 Dec 2018 12:56:43 GMT  
		Size: 848.3 KB (848343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a4d53d18918f77039a0b0b87db429caec91761df724796f525a9d8d044cea9`  
		Last Modified: Sat, 29 Dec 2018 13:00:34 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374c40d515e815bd9af595a34e8a4ad8ff9b20774fadfc7d0593539748e35adc`  
		Last Modified: Sat, 29 Dec 2018 13:00:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043067f93b5ac535434b3b8b27a0b8590b8ac822e8f6783143f3791a25acb22a`  
		Last Modified: Sat, 29 Dec 2018 13:01:06 GMT  
		Size: 114.5 MB (114545636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d4aa0f6030cc4f335746913078c1c69f4dbcc3ccd67420618442894f193604`  
		Last Modified: Sat, 29 Dec 2018 18:19:21 GMT  
		Size: 85.5 MB (85485082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3468f2fe1750884612475705ffaf078efd20bddc03984e1af827612c22c8cb0`  
		Last Modified: Sat, 29 Dec 2018 18:19:12 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; s390x

```console
$ docker pull gradle@sha256:a8848ff144771ab5f2d453e2df0f3c8fcf65f898b6f594d2742aa4fcb11ab98e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260372754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a73fec4b9a1f00e57a6faec5f10c22e011bd230bba3f66f5406b56ab25d0a4d`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:15:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:15:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 14:26:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:28:48 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:28:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:28:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:28:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 14:28:50 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 14:28:50 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 14:29:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 17:49:41 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 17:49:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 29 Dec 2018 17:49:41 GMT
ENV GRADLE_VERSION=5.0
# Sat, 29 Dec 2018 17:49:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Sat, 29 Dec 2018 17:49:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 29 Dec 2018 17:49:45 GMT
USER gradle
# Sat, 29 Dec 2018 17:49:45 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 29 Dec 2018 17:49:45 GMT
WORKDIR /home/gradle
# Sat, 29 Dec 2018 17:49:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ab879437b7ffa94dbf20c17fff26c665632ba45fe169c1234acdfc98235ea4`  
		Last Modified: Sat, 29 Dec 2018 13:25:05 GMT  
		Size: 10.3 MB (10312640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d08cd769086cf57f94597710a8e83155b78206b639c049f55a8c4c2896ce2`  
		Last Modified: Sat, 29 Dec 2018 13:25:04 GMT  
		Size: 4.4 MB (4371853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22d7ef1f4813ccdcd3f8f5cd73de424749b61abbe7c9508959f11ebc1c47a27`  
		Last Modified: Sat, 29 Dec 2018 14:32:24 GMT  
		Size: 863.6 KB (863620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934db6a1dbadd65e18594743c7c522fd1a0f7585badea4632b3d4ea47fa7c8a`  
		Last Modified: Sat, 29 Dec 2018 14:34:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45c82e1d434cfc0a79b41a2b4eb2c856c02dd08c87f5bfdd1f7bc798ae050a0`  
		Last Modified: Sat, 29 Dec 2018 14:34:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5f932e6a459452c0f5e1d19e834324f3ac744275e0003350552bb96aee40a1`  
		Last Modified: Sat, 29 Dec 2018 14:34:25 GMT  
		Size: 114.1 MB (114132838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dc8f56923ec872e41c8c310ad82b95ed7c2234b8e7d141edd5d99eb5a48c00`  
		Last Modified: Sat, 29 Dec 2018 17:52:58 GMT  
		Size: 85.5 MB (85485058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0561177943625372f4d3866520ad9a6e1e32fc4723ed07c12b32c2fad4661040`  
		Last Modified: Sat, 29 Dec 2018 17:52:47 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
