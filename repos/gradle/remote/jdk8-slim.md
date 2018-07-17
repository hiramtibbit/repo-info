## `gradle:jdk8-slim`

```console
$ docker pull gradle@sha256:cb7ba0d353fd8456298f9aa5577e26996dd899e0d0bda88a33156ad689cafca3
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

### `gradle:jdk8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:1f541a35d8d3eb7058f5ebe0b82076ab2804068646dddf65376b33a8ddf65577
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167638004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2baba3515b0a491f553d9fe5287bbdb5f8f3b2524af9d2cbe278a68220e52ed2`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:18:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:18:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:18:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:18:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:18:32 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:18:33 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:18:33 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:18:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:19:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:19:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:32:16 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:32:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 16:32:17 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 16:32:25 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:32:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 16:32:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 16:32:31 GMT
USER [gradle]
# Tue, 17 Jul 2018 16:32:31 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 16:32:32 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 16:32:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afd40ffc1e2ac132b1073f4b57c9f62d1a1096c3dcbd2cb5f5311a51598569`  
		Last Modified: Tue, 17 Jul 2018 06:58:30 GMT  
		Size: 454.8 KB (454827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c26bf1484f75a142df43d755acb0f4c9330ca74998af12b47b943409d48ed6`  
		Last Modified: Tue, 17 Jul 2018 06:58:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4da1ccc6247932be19ef1746b2e94063a6e08b9fa5da79d6ba35e71e0b7c25`  
		Last Modified: Tue, 17 Jul 2018 06:58:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8645fb5999463a48303542bb10e7da6c9e0cad278fb91144563a6e419a652d66`  
		Last Modified: Tue, 17 Jul 2018 06:58:50 GMT  
		Size: 67.5 MB (67475831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0936c04e46ed195ae89c7dda4aa3669fb180927485783637e8b2b6df97d2c0`  
		Last Modified: Tue, 17 Jul 2018 06:58:30 GMT  
		Size: 246.7 KB (246697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8364d4158054548faf339690eec49edc85384a24ec489604631fb9883a07bb91`  
		Last Modified: Tue, 17 Jul 2018 16:47:18 GMT  
		Size: 1.1 MB (1098796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aad2672eaebc66ee7149b2e3066a1ba7a9e24d8606b04d5ef18500e198f4fe`  
		Last Modified: Tue, 17 Jul 2018 16:47:25 GMT  
		Size: 75.9 MB (75875432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8003118e2929684a4ed189e57d9ecc169b229e2d3526bf5aeae2376052379c`  
		Last Modified: Tue, 17 Jul 2018 16:47:17 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:20ab574da40b93ed6077c5adb5c1c5a0cb9e89a6d486771f154c85f077b14bd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154632505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b648fba31aea0216a7c7452748ac236630c4e4d39a14b40b94230b708c4b79a`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:18:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:18:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:18:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:18:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:18:50 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 09:18:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 09:18:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 09:18:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 09:19:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 09:19:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 13:11:53 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 13:11:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 13:11:53 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 13:12:04 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:12:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 13:12:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 13:12:10 GMT
USER [gradle]
# Tue, 17 Jul 2018 13:12:11 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 13:12:11 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 13:12:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c354f9816a0a1d1eca71695570ca0f466fdfd2ea89b752e7c197ef4276b2738`  
		Last Modified: Tue, 17 Jul 2018 09:30:21 GMT  
		Size: 447.7 KB (447660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b67bd2c9978a6015002e17d5302d98f2f10b9f819d50bd44d1d15e97b91344`  
		Last Modified: Tue, 17 Jul 2018 09:30:21 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4f4f79cf2d84a7ddcb77255a867f1623d652df942f1b9bf9bb7bb60b70d2c5`  
		Last Modified: Tue, 17 Jul 2018 09:30:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8926f1e955707ed228773ddd3770f8f6a1f0acac185edb1e5bf933b310c0925`  
		Last Modified: Tue, 17 Jul 2018 09:30:42 GMT  
		Size: 55.8 MB (55838634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c22063c51677cf7eacc03df2544bc09f13dc0e0c20e107c0ede0812f561c2b`  
		Last Modified: Tue, 17 Jul 2018 09:30:21 GMT  
		Size: 246.7 KB (246740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f556ecd844c0b379adefdf65ebcd382d6f8baa75cf60bd00f39107dda414534`  
		Last Modified: Tue, 17 Jul 2018 13:20:28 GMT  
		Size: 1.1 MB (1060760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2bba32a916b9f7575e99d418633cde1395bd853dc4fea4aa9f39f94f3dabf4`  
		Last Modified: Tue, 17 Jul 2018 13:20:37 GMT  
		Size: 75.9 MB (75875454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22410d34666df2277a3a71449bd9b326a9455e14857f80e427c0b18b74bbfea2`  
		Last Modified: Tue, 17 Jul 2018 13:20:28 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:a50d3c3904c8b42f2bf539d0b211270a058c2dd8cb0b4a2ea97d12f6db507035
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.9 MB (154885954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068b71d222791eda483bb62e4e68fd1851d54285e11290f61d81a67dc1fce6b6`
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
# Sat, 14 Jul 2018 12:10:09 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 14 Jul 2018 12:13:38 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Jul 2018 12:13:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 14 Jul 2018 12:13:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 14 Jul 2018 12:13:43 GMT
USER [gradle]
# Sat, 14 Jul 2018 12:13:44 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 14 Jul 2018 12:13:44 GMT
WORKDIR /home/gradle
# Sat, 14 Jul 2018 12:13:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
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
	-	`sha256:4bbb1ea2fb959ae55b1ae0ebb2274aac09dd5ad34265612bf22e2fbd8a0f44f0`  
		Last Modified: Sat, 14 Jul 2018 12:17:16 GMT  
		Size: 1.1 MB (1062750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a559fdb80abc6945a858f23aa6a63426fd2a08b6518b942d14144529c2169a20`  
		Last Modified: Sat, 14 Jul 2018 12:17:24 GMT  
		Size: 75.9 MB (75875781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2357830ecc0f413da35ab9d3ceead3873109c8bd0e6f24ad2a2c2e3deda2940e`  
		Last Modified: Sat, 14 Jul 2018 12:17:16 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:01a6f613446c1ab76a45b4a118b11dd2694a3f92d84e23d64577fd8eab881ee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155206439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409d02e0b6c3f749ed58f725d14ca589e6e665b7f1f4b11a35b865ba415a2c7e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:10:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 10:10:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 10:10:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 10:10:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 10:10:50 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 10:10:51 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 10:10:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 10:10:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 10:12:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 10:12:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:29:03 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 21:29:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 21:29:04 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 21:29:23 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:29:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 21:29:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 21:29:37 GMT
USER [gradle]
# Tue, 17 Jul 2018 21:29:38 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 21:29:38 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 21:29:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5433e5c94122fce8417f1e1de0c77f61db8737e6029447cb68ee02ca7a1518a9`  
		Last Modified: Tue, 17 Jul 2018 10:37:29 GMT  
		Size: 440.8 KB (440832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002786a72ae7d2d250cccd3729163ff7a97d1993e5dfec3e2a222452355b26ff`  
		Last Modified: Tue, 17 Jul 2018 10:37:29 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d05181013caa10cb13c8d0779c79735001a150f4290fa2a075ac5704dfe17`  
		Last Modified: Tue, 17 Jul 2018 10:37:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b33b36904f890f0730f29679a10dbe19fcf7fb9065318b545758ef9d99293f`  
		Last Modified: Tue, 17 Jul 2018 10:37:47 GMT  
		Size: 57.3 MB (57256782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61242f1c892cc635cb1590c643a7d8542445f5684fd35e144fe7a01dd6ae1907`  
		Last Modified: Tue, 17 Jul 2018 10:37:31 GMT  
		Size: 246.7 KB (246658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c6f21b10e8ae69d8393aa810f7c7b1e6893ae99be88b5df829a8fc5519cdc4`  
		Last Modified: Tue, 17 Jul 2018 21:41:24 GMT  
		Size: 1.1 MB (1054493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47518971c7b37bb708d855a1833496304ff8cd96c8ff6bb2cc4597e3e9734bd`  
		Last Modified: Tue, 17 Jul 2018 21:41:37 GMT  
		Size: 75.9 MB (75875442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0f0967377548c30483109ad1fb789586af9e8a2f7ab43e634c6277569f5cbb`  
		Last Modified: Tue, 17 Jul 2018 21:41:24 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; 386

```console
$ docker pull gradle@sha256:535cd86e0b15f45bb757db1f28ec8b9f48b63ed7ae0e17911da50ae24bd44fad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167459077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2dcac2dac4916aef0a5e4ade74430756c036866189b2657bb9c46af2d182b42`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:28:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:28:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:28:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 11:28:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 11:28:05 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 11:28:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 11:28:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 11:28:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 11:28:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 11:28:56 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:22:55 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 19:22:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 19:22:55 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 19:23:04 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:23:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 19:23:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 19:23:12 GMT
USER [gradle]
# Tue, 17 Jul 2018 19:23:12 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 19:23:12 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 19:23:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36472a1f82cb37b4d551b6893392b3ce03153bba6f69485d6d6fcee706ea7d9`  
		Last Modified: Tue, 17 Jul 2018 11:57:29 GMT  
		Size: 463.5 KB (463495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b21c7eaa622f05322b845709f354bb1fcae49c30ed6b893d116bdd165e09e84`  
		Last Modified: Tue, 17 Jul 2018 11:57:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d7b676c331909e9ea77448bc6db70f4d472eb2dd523cf7df90113ae83ca9c9`  
		Last Modified: Tue, 17 Jul 2018 11:57:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcc3a55edcd06f9c1f37176e30ba677886e588af58477c96566ec2b7090dc1a`  
		Last Modified: Tue, 17 Jul 2018 11:58:26 GMT  
		Size: 66.6 MB (66625917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f1d6eb2f53adf416b6dabfe3ea0038739c66cb7d109f89f7c6f60934a1ca15`  
		Last Modified: Tue, 17 Jul 2018 11:57:28 GMT  
		Size: 246.7 KB (246713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba24ea423bbd7f5041bd55978e8e269e2e85ee601b851f1232f0df4e1a28701e`  
		Last Modified: Tue, 17 Jul 2018 19:37:40 GMT  
		Size: 1.1 MB (1120628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc821b1c0fb368f091203d48486fa508cb54a1215884cc3631f6dba2b942186`  
		Last Modified: Tue, 17 Jul 2018 19:37:52 GMT  
		Size: 75.9 MB (75875431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4abbb07f9915a3d46954459b00a237c907a791bd25a883ca5e74e3199aa3b94`  
		Last Modified: Tue, 17 Jul 2018 19:37:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:99a6939b00994c7ae1ba645395bbf705af244884ee949b09d887c55c89defefd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158183204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48a32794af8508dc2ba4b7d5b11f2953bd9fd95ed7e5048e90870de0cfdd4d5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:16:24 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:16:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:16:47 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:16:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 09:16:55 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 09:16:59 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 09:17:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 09:21:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 09:22:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:17:03 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 18:17:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 18:17:05 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 18:17:22 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 18:17:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 18:17:33 GMT
USER [gradle]
# Tue, 17 Jul 2018 18:17:35 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 18:17:37 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 18:17:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2b5cd8f08bc26294621d1f1193c7401b6a2162916c3588a27328d4600f973a`  
		Last Modified: Tue, 17 Jul 2018 09:58:12 GMT  
		Size: 449.8 KB (449787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83c3c1c9e762877eac3e78859a1ae629d2b76bddc719f26543ce92f70869aa6`  
		Last Modified: Tue, 17 Jul 2018 09:58:07 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a457de54733d8f8a429841f2f3b953775e0917122326aa18e4f889cb4ffd9e6`  
		Last Modified: Tue, 17 Jul 2018 09:58:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85da72459bacdea9c20e66b1949cf9724b8c9cc4980807e06ef0f8e251ef449a`  
		Last Modified: Tue, 17 Jul 2018 09:59:09 GMT  
		Size: 57.8 MB (57786040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16cdd6763d2d2f44e8daec486e3191fe9be1f6ceae3435e93a55e8293b0a5fd`  
		Last Modified: Tue, 17 Jul 2018 09:58:09 GMT  
		Size: 246.8 KB (246766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0142578397e9a7714c2848b0ec275be6d4dc3432cf812b2b2006001d0fbe594a`  
		Last Modified: Tue, 17 Jul 2018 18:28:05 GMT  
		Size: 1.1 MB (1084097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab7514afec823a56737e4778e87b44bd6fcbca79ec57850449893096ee9972`  
		Last Modified: Tue, 17 Jul 2018 18:28:13 GMT  
		Size: 75.9 MB (75875455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc3d07a1c37da4f3a09cb97217e222c1edbd814caa17c7cbbde2c1679541890`  
		Last Modified: Tue, 17 Jul 2018 18:28:04 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; s390x

```console
$ docker pull gradle@sha256:0c49dfef3c6f8dbd313068e7735943ac106b5f4201b5e45fea5a458ade0fc8e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (156961894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f562697a66551ec7ce50300b79443ee394ed7cbf67235d7c8d30ce8d86b95449`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:06:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:06:28 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:06:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:06:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:06:30 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:06:30 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:06:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:06:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:06:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:07:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 15:01:22 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 15:01:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 15:01:23 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 15:01:27 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:01:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 15:01:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 15:01:31 GMT
USER [gradle]
# Tue, 17 Jul 2018 15:01:32 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 15:01:32 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 15:01:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2694fc3ff6a3c4f4d763d513c5c736ebb40c309940a78d32a1e7316f2a1e66`  
		Last Modified: Tue, 17 Jul 2018 12:15:02 GMT  
		Size: 465.8 KB (465754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611a9d1fe5445ffae9bcc89d406f64a2bf2552772d06f33e3bed02b6b3a37443`  
		Last Modified: Tue, 17 Jul 2018 12:15:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b0cb7f2711fa5d57e82080787031b4539666474ed36cff3c426256535095b1`  
		Last Modified: Tue, 17 Jul 2018 12:15:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410f4c6596179777a5c88259490dde6b36e151845099b2b56cfdb3f60ad4e336`  
		Last Modified: Tue, 17 Jul 2018 12:15:11 GMT  
		Size: 56.9 MB (56929705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214ad0fe4621b802ef5bb87af51e5c8fc11031f9b0da186d72dee155cb2f5be5`  
		Last Modified: Tue, 17 Jul 2018 12:15:02 GMT  
		Size: 246.7 KB (246686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bdaed88fe4686ea14e6d3ac9e21cf7baad3692469bf54cc39d360edd2339ee`  
		Last Modified: Tue, 17 Jul 2018 15:05:07 GMT  
		Size: 1.1 MB (1109185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8d285ebb85c25722a8207e9f1e63510059add1b9959689c8b6740425018c0e`  
		Last Modified: Tue, 17 Jul 2018 15:05:12 GMT  
		Size: 75.9 MB (75875460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4effb910b3ab017daa45bd8e3d5d0674cb1fda125fc4c9f53c7da3dc243a204`  
		Last Modified: Tue, 17 Jul 2018 15:05:06 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
