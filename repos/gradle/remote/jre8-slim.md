## `gradle:jre8-slim`

```console
$ docker pull gradle@sha256:2bbc2e714d801b6e2a4625099b3741ab88e1ce9f5c7a9eaae90d1482994f7700
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

### `gradle:jre8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:0cb99a3de0284f7b7ce005bf2f89591c6cf0bb0538006d5e9c41ee96be0ba537
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.0 MB (155971137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0540cbedd8ec54814a7f1e3188dba7da61f1a28d2ba0a3d6c1996a854cabf7d8`
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
# Tue, 17 Jul 2018 06:20:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:20:32 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:20:32 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:20:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:33:15 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:33:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 16:33:16 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 16:33:23 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:33:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 16:33:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 16:33:28 GMT
USER [gradle]
# Tue, 17 Jul 2018 16:33:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 16:33:29 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 16:33:31 GMT
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
	-	`sha256:0ff62c1670db20052cd2e1e78933b2647fb63d9687e1d702bf28d5ffbd2b064f`  
		Last Modified: Tue, 17 Jul 2018 07:07:21 GMT  
		Size: 55.8 MB (55809942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48888ade711f696d9d716f55aa7e5e7b48aa4af8e7b91310d159bf26426df850`  
		Last Modified: Tue, 17 Jul 2018 07:07:05 GMT  
		Size: 246.7 KB (246727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869fbdd77a7ee57cf0ce53979ef7c1fdf2f615374f82c14b1a3e8d94da306233`  
		Last Modified: Tue, 17 Jul 2018 16:50:03 GMT  
		Size: 1.1 MB (1097763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c5989e20beaa96bb461afcc1ddcd7252dd994cdcc2daec98d6f751bf92924f`  
		Last Modified: Tue, 17 Jul 2018 16:50:12 GMT  
		Size: 75.9 MB (75875457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faec22faa3476a174d05df3f479f250761f7bf97171b51197b7037a401c158bf`  
		Last Modified: Tue, 17 Jul 2018 16:50:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:14ddc0dbc6ff3ecacb7bd93d6331577fb8b80febad4cfdcd210afc3bb4e0d775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.3 MB (145336338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5853c431c5d8f48ffaa58c810f8b9d5e9bdcebff1f196496026765b06da531`
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
# Tue, 17 Jul 2018 09:20:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 09:20:02 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 09:20:02 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 09:20:02 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 09:20:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 09:20:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 13:12:34 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 13:12:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 13:12:35 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 13:12:44 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:12:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 13:12:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 13:12:50 GMT
USER [gradle]
# Tue, 17 Jul 2018 13:12:50 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 13:12:50 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 13:12:54 GMT
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
	-	`sha256:93a008d5f02c974bfd7d51bcbd2f31c742061b87bad76cc4f02b9daa4a286f0c`  
		Last Modified: Tue, 17 Jul 2018 09:33:21 GMT  
		Size: 46.5 MB (46543528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fdc1484e0f0035415e71c99b51bcd8584e0d26beb5ca6932377553b3500944`  
		Last Modified: Tue, 17 Jul 2018 09:33:09 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77668d04147ee66b13c003a3f9c0fb1f0cd11b59dd7cea474bd39a3b6d02200`  
		Last Modified: Tue, 17 Jul 2018 13:22:00 GMT  
		Size: 1.1 MB (1059706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc07d2622dc0f83a80c464628362f92622fd96a8c696538a130187cc33fe119d`  
		Last Modified: Tue, 17 Jul 2018 13:22:10 GMT  
		Size: 75.9 MB (75875458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75787be366bfb73a1c77e37e50c5bd4084d9a8043fa0ad1736ff48bf30f5d29a`  
		Last Modified: Tue, 17 Jul 2018 13:22:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:f9cacba06c2f3d1dde3ea3b93dd0bf7de52ffc085d3a42cd59d1d3d713e98e6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145592102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681454faa6edb876aad40629bfd498b4df6eb5902e0f22461e0131ce343386f8`
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
# Tue, 27 Mar 2018 01:50:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 27 Mar 2018 01:50:15 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 01:50:15 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 01:50:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 01:50:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 01:51:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Jul 2018 12:14:01 GMT
CMD ["gradle"]
# Sat, 14 Jul 2018 12:14:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 14 Jul 2018 12:14:02 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 14 Jul 2018 12:14:10 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Jul 2018 12:14:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 14 Jul 2018 12:14:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 14 Jul 2018 12:14:17 GMT
USER [gradle]
# Sat, 14 Jul 2018 12:14:17 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 14 Jul 2018 12:14:17 GMT
WORKDIR /home/gradle
# Sat, 14 Jul 2018 12:14:22 GMT
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
	-	`sha256:cd7dafe25a2c944102fd7f991fbe4c637540d55a8c821e79b4c9314d2a490d02`  
		Last Modified: Tue, 27 Mar 2018 02:13:42 GMT  
		Size: 46.8 MB (46769228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f3d863baa2a4efcf659083b9683c68d6ea00f60e0acb7d7610efb2edc9d4f5`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 272.2 KB (272185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9790e940ccd4eb62dcbd25b6a70aa04cd70fd46176f374f131f43975e245ec`  
		Last Modified: Sat, 14 Jul 2018 12:18:46 GMT  
		Size: 1.1 MB (1061677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20039b1f93c2f4f14ced40da5f4ac5c2913a06ce3a07a78b70e61191aff5ae67`  
		Last Modified: Sat, 14 Jul 2018 12:18:56 GMT  
		Size: 75.9 MB (75875763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972e3254809fe019ad21abf737941a641da223038978f7750922675c53a23409`  
		Last Modified: Sat, 14 Jul 2018 12:18:46 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:665e65e54fb452a1e8f5f843e54c492f0455357ae265b4e487329b106a644a68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146012690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0db95d0edd73fcc087c1f4e6763c5033e05203ccc91062b3e6cbc10876f3d5`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:35:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 10:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 10:35:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 10:38:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 10:38:42 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 10:38:43 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 10:38:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 10:41:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 10:41:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 30 Jun 2018 08:51:03 GMT
CMD ["gradle"]
# Sat, 30 Jun 2018 08:51:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Jun 2018 08:51:05 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 30 Jun 2018 08:51:18 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 30 Jun 2018 08:51:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 30 Jun 2018 08:51:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Jun 2018 08:51:29 GMT
USER [gradle]
# Sat, 30 Jun 2018 08:51:29 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Jun 2018 08:51:30 GMT
WORKDIR /home/gradle
# Sat, 30 Jun 2018 08:51:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c188af2663c2692b617929ecc379feec18f8c714a163e91ffefe4892b20ebe`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 440.8 KB (440827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bae1d6e46f95e052f094dc4f2dacf47cb7d307e2f57d0d521ef848ee9862f4`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469228b6cf78d13c8c9fad07633d71418ff610b9a6407eaf3af0bd4e6a59ab69`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003badcc6ad1bb82ce8988e2393f6612f0002d580896c91c100cf9340f4c873`  
		Last Modified: Wed, 27 Jun 2018 10:52:42 GMT  
		Size: 48.0 MB (48021532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e107cce4cc0c933a008a5e63d72b2339afbe6e29a3feb88c5e6b86dcd713eacc`  
		Last Modified: Wed, 27 Jun 2018 10:52:29 GMT  
		Size: 272.1 KB (272107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d6b7bc30d0652dbc068a02fa40b2dcdd5e88ce5cbb1fabc8f92155f421146`  
		Last Modified: Sat, 30 Jun 2018 08:56:50 GMT  
		Size: 1.1 MB (1054121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb3faeabfad30993dfeb38889dd34a2c6db311fc15b09ad5475950e77a20652`  
		Last Modified: Sat, 30 Jun 2018 08:57:01 GMT  
		Size: 75.9 MB (75875441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc77575558e72b601f2db525a227d533eb74f92a3fef6e1944f61061b69db7ab`  
		Last Modified: Sat, 30 Jun 2018 08:56:49 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; 386

```console
$ docker pull gradle@sha256:6541631bff28ab4cae6cf26a46b5d186bb6a64c55e768f80e03ad9f4226d9693
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156160503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4379d4eee19d64984abfda2a157117c6a39a5188f36dadda4b552fbaa29794b`
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
# Tue, 17 Jul 2018 11:29:22 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 11:29:22 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 11:29:22 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 11:29:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 11:29:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 11:29:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:23:36 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 19:23:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 19:23:36 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 19:23:45 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:23:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 19:24:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 19:24:02 GMT
USER [gradle]
# Tue, 17 Jul 2018 19:24:02 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 19:24:02 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 19:24:05 GMT
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
	-	`sha256:5e04c3557113d0529f5961fb56a512d5251153e82fd9cedfbb540eca1e8f186e`  
		Last Modified: Tue, 17 Jul 2018 12:02:13 GMT  
		Size: 55.3 MB (55328334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55f72e26b29549ff3283a1640789576e247d40ccbc8f483607e94b031d13e5a`  
		Last Modified: Tue, 17 Jul 2018 12:01:53 GMT  
		Size: 246.7 KB (246723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4559a1c8f96061fe841f52e9eb87eb2dc0aa66e0b85f9137f827c7569448b05`  
		Last Modified: Tue, 17 Jul 2018 19:40:34 GMT  
		Size: 1.1 MB (1119629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c30f6f278bda88e97ddbc31f9bb22bd8bf96f05e891dc96c3a725e18a28ca3`  
		Last Modified: Tue, 17 Jul 2018 19:40:43 GMT  
		Size: 75.9 MB (75875428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52605c46fe70bc0fc26f6e3ba1eff8e5dd8efbe1c480241ea9ed970ee0a5d07`  
		Last Modified: Tue, 17 Jul 2018 19:40:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:9c0103fe7fd555e971935456576553614c0bda980dae3ccb796f8b287c650bf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148841482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963ff7b2bacc009802429f4c5c8108a8e6e6ddea80d42508c5a1ab87b139041e`
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
# Tue, 17 Jul 2018 09:22:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 09:22:55 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 09:22:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 09:23:00 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 09:27:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 09:27:27 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:17:58 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 18:17:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 18:18:00 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 18:18:13 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:18:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 18:18:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 18:18:25 GMT
USER [gradle]
# Tue, 17 Jul 2018 18:18:27 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 18:18:29 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 18:18:35 GMT
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
	-	`sha256:845a0aed173951b2039a8aca15b16d248dc0921b4ee9d3346cd2963b539f5c45`  
		Last Modified: Tue, 17 Jul 2018 10:01:03 GMT  
		Size: 48.4 MB (48445293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88be191344c9fbd22cc6a4771ac81bf1901305cbe6d24892ca4f115628ea30d0`  
		Last Modified: Tue, 17 Jul 2018 10:00:48 GMT  
		Size: 246.8 KB (246784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12beee0a9f4ab65111aac49089a6fb5f8972724974c41b44839361a755bb179`  
		Last Modified: Tue, 17 Jul 2018 18:29:20 GMT  
		Size: 1.1 MB (1083077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7831ab6e558e1aa2e6b8a194c1dca7358d06d65f21ea2aa678ef6d6bd4d4488`  
		Last Modified: Tue, 17 Jul 2018 18:29:29 GMT  
		Size: 75.9 MB (75875482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f25a403f53329a9b3250c3170937d6da887865c872e446f99a26874f3c1f78`  
		Last Modified: Tue, 17 Jul 2018 18:29:19 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; s390x

```console
$ docker pull gradle@sha256:5821ea9e71deeebb33e92ebdbdc7c092a1302771e4c594fddc6ead190a246031
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147676379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fb1592c536a8acd86ba3368c82dd389edcdecb8ad617b9ca2c4fd723a759b89`
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
# Tue, 17 Jul 2018 12:07:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:07:22 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:07:22 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:07:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:07:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:07:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 15:01:47 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 15:01:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 15:01:47 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 15:01:51 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:01:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 15:01:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 15:01:57 GMT
USER [gradle]
# Tue, 17 Jul 2018 15:01:57 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 15:01:57 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 15:02:00 GMT
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
	-	`sha256:47fe10f04a41ecc9eff4150f75732b7eee9337586cb7246efa208479033287d6`  
		Last Modified: Tue, 17 Jul 2018 12:16:05 GMT  
		Size: 47.6 MB (47645104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b13b318a6f6af901eacf5c583866a11dfdc2c30dde9190f08b42b62f3360c`  
		Last Modified: Tue, 17 Jul 2018 12:15:59 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a441b6bc36d41f6684a6cc58a7d622b6dd6d8e171eccaada7c8102aa5326ba2`  
		Last Modified: Tue, 17 Jul 2018 15:05:50 GMT  
		Size: 1.1 MB (1108275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b342b88305e1d3c5f27a9038d8492156d1b6ce5a5eeef760321efaacabc15b`  
		Last Modified: Tue, 17 Jul 2018 15:05:56 GMT  
		Size: 75.9 MB (75875460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f05a4a19bcb54bc207a838475460d8fca0df22034cd0430c35e5e1636e6a2c`  
		Last Modified: Tue, 17 Jul 2018 15:05:49 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
