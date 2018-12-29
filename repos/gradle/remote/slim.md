## `gradle:slim`

```console
$ docker pull gradle@sha256:52ae817dd730eedec020582975f572e43711b3e37202f2c32a7207c5e508f3bb
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

### `gradle:slim` - linux; amd64

```console
$ docker pull gradle@sha256:28744d35d68e821e5407c3a3fc706522ec1945ed5840f433be6ef6e7ad2287e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (177039967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063266435f3c2884eea47607f01a72764f34d8c622f02414340e400e63256ec3`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:57:43 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:57:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:57:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:58:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:46:53 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 10:46:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 29 Dec 2018 10:46:54 GMT
ENV GRADLE_VERSION=5.0
# Sat, 29 Dec 2018 10:47:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:47:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Sat, 29 Dec 2018 10:47:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 29 Dec 2018 10:47:07 GMT
USER gradle
# Sat, 29 Dec 2018 10:47:08 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 29 Dec 2018 10:47:08 GMT
WORKDIR /home/gradle
# Sat, 29 Dec 2018 10:47:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762c9dfbe1b522fbb875c7c59c8952d87108fc60057e726c938bd76ffd15e861`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 454.8 KB (454826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a6ba080cc24eee5792a8d25298d187969f160f67ad741a32ce622ad5492565`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48b92f71dd52fdd31c31b1974db61bca4458948f9073c20bc863250d38ea61`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de8c375824447639364530df0d2d1ac55cc6e2c8d427317ac5ffd735dcde15e`  
		Last Modified: Sat, 29 Dec 2018 03:25:20 GMT  
		Size: 67.5 MB (67507768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61d838c39aa2a56b672128b7742307ad123adebdc8d7d4055cab7b8ebe50351`  
		Last Modified: Sat, 29 Dec 2018 10:50:35 GMT  
		Size: 1.1 MB (1098826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fac5cd8bfd6edae32d851c0e6aa5ac26b8c2975a94a3b09dd3d3e9d3bfb40a`  
		Last Modified: Sat, 29 Dec 2018 10:50:42 GMT  
		Size: 85.5 MB (85485114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdced88aa13cb34b39b2e450e2efa1977aebec41b010bc14cba71b579b7fbc17`  
		Last Modified: Sat, 29 Dec 2018 10:50:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:37ac31c068cfce77f1f16c1b19308db00b62a5c949a9c0232bc91f7a9f5f2ecd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164087893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97d720e74ca8df1f5f9fdc14d9d2a2ff8b1bba1cea11b7479cb680c64ef3bd6`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:38:22 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:38:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 18:38:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:38:27 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 18:38:28 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 18:38:28 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 09:59:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:21:22 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 11:21:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 11:21:23 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 11:21:32 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 11:21:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 11:21:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 11:21:40 GMT
USER gradle
# Wed, 26 Dec 2018 11:21:41 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 11:21:41 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 11:21:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170d2c781892c05bd05b5c851c59acbae264c3e02d21a48a19aa82348b10a947`  
		Last Modified: Fri, 16 Nov 2018 19:04:05 GMT  
		Size: 447.7 KB (447702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a7d478573e48ad0a5b84dca7009edd6d7170bb8b119ed9d6c53a88265b8de5`  
		Last Modified: Fri, 16 Nov 2018 19:04:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cdde692cfa5c7650264a023d71ba27c14ae38f3fe3f3250933cdee1452a15`  
		Last Modified: Fri, 16 Nov 2018 19:04:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37520d00f3fa63ddaee6920668ae0fc6880097a2cb498470b4373cedfb023e09`  
		Last Modified: Wed, 26 Dec 2018 10:07:35 GMT  
		Size: 55.9 MB (55930642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21320c9ecc0db100e92c023ea884fa15bff3bd744671c7719da0f6e22eb2b52`  
		Last Modified: Wed, 26 Dec 2018 11:25:21 GMT  
		Size: 1.1 MB (1060872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8086fbe540582ace3e2df40773c1d2d5ac092cf0668b2d468cf2d716f582f440`  
		Last Modified: Wed, 26 Dec 2018 11:25:34 GMT  
		Size: 85.5 MB (85485055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2125dc9f6ff293698045ef67e5e222614e93d67dac2cf542aeee797a14f56a06`  
		Last Modified: Wed, 26 Dec 2018 11:25:20 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:931f9aa687c4ff58deaa6cf7a1ff64b11ce9dc832dc405f634062d9dd9f80531
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164495229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b5c3b14f988678e98ee71a94c011409c9a45e86fe754621b15ae496a47ff8e`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 01:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 01:50:11 GMT
ENV LANG=C.UTF-8
# Tue, 27 Mar 2018 01:50:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Mar 2018 01:50:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 01:53:09 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 01:53:10 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 01:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 01:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 01:53:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 01:53:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Jul 2018 12:10:09 GMT
CMD ["gradle"]
# Sat, 14 Jul 2018 12:10:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Nov 2018 12:58:56 GMT
ENV GRADLE_VERSION=5.0
# Tue, 27 Nov 2018 12:59:07 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 12:59:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Tue, 27 Nov 2018 12:59:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 27 Nov 2018 12:59:17 GMT
USER [gradle]
# Tue, 27 Nov 2018 12:59:18 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Nov 2018 12:59:18 GMT
WORKDIR /home/gradle
# Tue, 27 Nov 2018 12:59:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b006c16d8c81f9d03b541fa686cb57f40818f1d13ca2a326b7685a357d63e5`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 447.7 KB (447679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4c60102a2d43ceb83f32f54bc9fc75f477a8b3b7b43521e705bca7293161f6`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b290902da6536cde53ecb48ed3327fcebd41dd015833f9822475ef20d500ef85`  
		Last Modified: Tue, 27 Mar 2018 02:13:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7a8f49bb9739647a90c2b283f2dddbb67e1363d20bc02afa973e221d2cb398`  
		Last Modified: Tue, 27 Mar 2018 02:15:42 GMT  
		Size: 56.1 MB (56061983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b662a98e0b944b59df2e43fea315c35651e6a6b17941cc68a3475e550b88f5b6`  
		Last Modified: Tue, 27 Mar 2018 02:15:27 GMT  
		Size: 272.2 KB (272191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68b6869f14bcc9d6fff5a5e69a998af674d3a589656c1f4f353285eb097f496`  
		Last Modified: Tue, 27 Nov 2018 13:06:02 GMT  
		Size: 1.1 MB (1062765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f009ef25fd11646431dac6f2358fb08ebdf451a5b31bf3568a5f89011edacf72`  
		Last Modified: Tue, 27 Nov 2018 13:06:24 GMT  
		Size: 85.5 MB (85485043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0804353a95221b2c9034546d151d59f9256da396f932dfc1cff2355e856138`  
		Last Modified: Tue, 27 Nov 2018 13:06:02 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d5de92f8a7a1e91853f50615d72ddc8281986a2a525fb43d620c12f2da5504df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164659903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c5d749ed978fe7f8190cc828fa00a319d87217ae282e964b7a006f7000c934`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:01:31 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:01:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:01:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:01:37 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 05:01:38 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:01:39 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 10:13:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:01:55 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:01:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:02:00 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:02:28 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:02:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:02:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:02:51 GMT
USER gradle
# Wed, 26 Dec 2018 13:02:53 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:02:56 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:03:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d594caf9c11b4dd5588375b02cdab683c1f3ff4e66526d98aa006e849a8dea`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 440.9 KB (440857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df53400c62e60586cf50ab4f031bb0ef450d7bc7d26fa4f1e82718c5748e3f9`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2767e9387e76b486b12cc446ecd4a98e7cc06bc83637d321ab0f1d062a46136`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55697e33184a95294ffeeca8a68b9b7875b6abda8b68cb74ac93221266b70d45`  
		Last Modified: Wed, 26 Dec 2018 10:29:01 GMT  
		Size: 57.3 MB (57347424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7adf1af56bf75c53206dc5428e10e4a167f32fa513bbcc042ab4bbe9d62ebee`  
		Last Modified: Wed, 26 Dec 2018 13:10:07 GMT  
		Size: 1.1 MB (1054654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f4d3c940f0111b66efe86b161b4c4c2dc8532a3b9bf34a3abfb34b57aebcb0`  
		Last Modified: Wed, 26 Dec 2018 13:10:23 GMT  
		Size: 85.5 MB (85485076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53334c6231c66fe9b8e8f5a2ca889099a4e16bbb8c46785270cc7c2bc365889f`  
		Last Modified: Wed, 26 Dec 2018 13:10:06 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; 386

```console
$ docker pull gradle@sha256:bb56e277b4b6259573bbb34b3f3c579f8cb435664649f67e51db0cace7144822
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.9 MB (176926418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058653610c0fdaae972e3370581216c9e0d345dd6d9d080d7a7276aabe190220`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 14:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:03:06 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:03:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:03:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:03:09 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 14:03:09 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 14:03:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 12:13:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 14:43:56 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 14:43:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 14:43:56 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 14:44:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 14:44:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 14:44:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 14:44:07 GMT
USER gradle
# Wed, 26 Dec 2018 14:44:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 14:44:07 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 14:44:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d03dee212f9be81a5e3d859461fb2bb45b3e94124fc8ff506a0cc3ad8828de`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 463.5 KB (463502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad2774990f145bcde797451ac3caf264e19234b890f04cc57a4543a270667c3`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61514c2e9cb4d1c0abb7718cd06259d36ee12042eb3667a4fb010f27b00039d`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0256da3fd5e96bbd44c54e1f5404922fb7cf53fefa5f15f43022694d3f4e3be`  
		Last Modified: Wed, 26 Dec 2018 12:19:51 GMT  
		Size: 66.7 MB (66729878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb1628d895efc7afcd8c47655531f595c4050b399c7070980fc1c706f3187f0`  
		Last Modified: Wed, 26 Dec 2018 14:46:35 GMT  
		Size: 1.1 MB (1120673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48adf7ef47008f17295c57112440e469efe13aae99a706e2f33e9428d8c43237`  
		Last Modified: Wed, 26 Dec 2018 14:46:43 GMT  
		Size: 85.5 MB (85485076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb472a9841869c22e107d76172d7ea5eddd868c83a2b9f239dab96beac1140`  
		Last Modified: Wed, 26 Dec 2018 14:46:35 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:352a6cc1261c357f90fab86cdf01ea3d4e04a8f7067da45d65c4629b423cf770
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167625289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e084540dbf4f779689dcde3d964fe5482b29ac4de7df9f482b9922def9a4af`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:11:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:11:41 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:11:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 22:11:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 22:11:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 22:11:48 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 22:11:48 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 09:58:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:23:09 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 11:23:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 11:23:13 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 11:23:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 11:23:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 11:23:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 11:23:45 GMT
USER gradle
# Wed, 26 Dec 2018 11:23:47 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 11:23:50 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 11:23:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4afa5814d1a6b68fcdc7af12ef2fb2e6f8776d66c8deb23ca45c4577c7377`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 449.8 KB (449757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f374edcd3118d2ac0f97ab11ef65aab9ea9a45af261412d47d94fb07d75e82e`  
		Last Modified: Fri, 16 Nov 2018 22:50:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68e4c4957a701e3624720cf48efb880aa7d40694f94f872dd918e8e6a3de5c6`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae16cf070719c7e45d55d3e7dc4d180f735a0b2b46487f1ec81a0e63af94639`  
		Last Modified: Wed, 26 Dec 2018 10:12:07 GMT  
		Size: 57.9 MB (57865235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fae48fcad0f71e1c74fec34d4426a3c32adf6c3af326cc4bd5bb047a39ea2e`  
		Last Modified: Wed, 26 Dec 2018 11:30:26 GMT  
		Size: 1.1 MB (1083849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a194e70abb70d42f53cdfb31b264a546f6fd03c99cec94d8f39e5ea51de6d7`  
		Last Modified: Wed, 26 Dec 2018 11:30:34 GMT  
		Size: 85.5 MB (85485119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f6322cd7278eebd32eeaa260c5ae71f7bacac1d2c4bccb88725d6fe66f3e7b`  
		Last Modified: Wed, 26 Dec 2018 11:30:26 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; s390x

```console
$ docker pull gradle@sha256:d68ce08f9cbd5e5f6667f30e86867646628934a440cfe2bad47912dcea6ed9ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166423462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1d43058fb326cd552b2cc7ae12130517b88f1a5df534b5d40aaef748a5c4d2`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:54:05 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:54:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:54:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:54:09 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:54:09 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 20:54:12 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 12:53:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:24:42 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:24:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:24:43 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:24:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:24:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:24:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:24:51 GMT
USER gradle
# Wed, 26 Dec 2018 13:24:51 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:24:51 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:24:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d91749347b96136484261ecd380323abe2a6e1239b2fc43f11ac5b40645a54`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 465.7 KB (465732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b17441b229bdf6d8137039af83db434911ea884c98bf311a515910007f282f`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480ba75456ebba63a18eb0020102f636815ca680c262e5e090de03dff12dcef`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad3b5f3c30f8c9ae24704926b9a8f5f98b9d63df78dac788faff20068b965d4`  
		Last Modified: Wed, 26 Dec 2018 12:58:43 GMT  
		Size: 57.0 MB (57028100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5716660138d55ade9c7a3b1f663b90f3bd5a5102ffb2c26f5114688c3b5a92ef`  
		Last Modified: Wed, 26 Dec 2018 13:27:56 GMT  
		Size: 1.1 MB (1109231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeda8ed8d93900d61a6904254d44957b2f0b9eac323e2f016022f834b848bade`  
		Last Modified: Wed, 26 Dec 2018 13:28:02 GMT  
		Size: 85.5 MB (85485103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7acd617633a6e08a8ffdb154cddcc21937afde6926f1fbce8dc06d52b754838`  
		Last Modified: Wed, 26 Dec 2018 13:27:55 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
