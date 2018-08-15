## `gradle:jdk-slim`

```console
$ docker pull gradle@sha256:5738be31444d2cb81229f5dee8fef4c9a4efda0b0dbaa03a578a4c57aefdc39e
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

### `gradle:jdk-slim` - linux; amd64

```console
$ docker pull gradle@sha256:03b3c0a61eed4c829fee81668c4abc0ad2c28a26fd1d9fef3227f171a6d4080d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168126314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebfe55bbacdc5d2c41eab5b2ab326ebd79a621775b046792acae75bb7748492`
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
# Tue, 14 Aug 2018 20:33:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:33:53 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:33:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:34:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:34:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:07:45 GMT
CMD ["gradle"]
# Tue, 14 Aug 2018 23:07:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 14 Aug 2018 23:07:46 GMT
ENV GRADLE_VERSION=4.9
# Tue, 14 Aug 2018 23:07:53 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:07:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Tue, 14 Aug 2018 23:07:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 14 Aug 2018 23:08:00 GMT
USER [gradle]
# Tue, 14 Aug 2018 23:08:00 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 14 Aug 2018 23:08:01 GMT
WORKDIR /home/gradle
# Tue, 14 Aug 2018 23:08:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
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
	-	`sha256:67cdcb747d2a40a46aeadb694f9aebe48228cfefef2f1c8f75ad0f42013c1963`  
		Last Modified: Tue, 14 Aug 2018 20:42:04 GMT  
		Size: 67.5 MB (67517190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9ae420b7e407e93f0d97dcdd2e59c67a9f2983ac4aa1fff52c914ada673cc7`  
		Last Modified: Tue, 14 Aug 2018 20:41:45 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:decaa52e7ce7ec6a2de932bdd784d510cf458ee6fb8a5a208803db4fc112bc94`  
		Last Modified: Tue, 14 Aug 2018 23:16:23 GMT  
		Size: 1.1 MB (1098827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ca1da8711007c200aa893e8c69e515384b922488879e50a1b7a5488d12cf11`  
		Last Modified: Tue, 14 Aug 2018 23:16:32 GMT  
		Size: 76.3 MB (76322346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6dff7363110374dbbff172aa46a9558cf5720d27ad955189d2a7dd1d64b9ca`  
		Last Modified: Tue, 14 Aug 2018 23:16:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:69cf618d594850885607736d65f87771bc21a32bc116062b6eab13d0fa7b4b0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155161540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baced6b80ea41d4d3fdc9558f4f37d246d00fdbb0858ea0d64b4a9aded91b908`
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
# Wed, 15 Aug 2018 08:50:48 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 08:50:48 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 15 Aug 2018 08:50:48 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 15 Aug 2018 08:51:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 15 Aug 2018 08:51:30 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 15 Aug 2018 09:27:34 GMT
CMD ["gradle"]
# Wed, 15 Aug 2018 09:27:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 15 Aug 2018 09:27:34 GMT
ENV GRADLE_VERSION=4.9
# Wed, 15 Aug 2018 09:27:43 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 09:27:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 15 Aug 2018 09:27:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 15 Aug 2018 09:27:49 GMT
USER [gradle]
# Wed, 15 Aug 2018 09:27:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 15 Aug 2018 09:27:49 GMT
WORKDIR /home/gradle
# Wed, 15 Aug 2018 09:27:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
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
	-	`sha256:dc740bb8278546a3b021ccc68e9a8138e15db7b1e79c38be22eb129943d01da3`  
		Last Modified: Wed, 15 Aug 2018 08:56:06 GMT  
		Size: 55.9 MB (55920646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef781d576e389a5ca229c692d7347b3e032c4569d951a155dcbd81acfa807c`  
		Last Modified: Wed, 15 Aug 2018 08:55:51 GMT  
		Size: 246.7 KB (246737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859f6b5e8bbbcdae15605c0979beebe9852650ae66471944efb6c5f3d8fabf1e`  
		Last Modified: Wed, 15 Aug 2018 09:30:28 GMT  
		Size: 1.1 MB (1060777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eed180b9db2f2dc345ca00542614c5a5fc2a9b12184cbe099b7979b73ec207`  
		Last Modified: Wed, 15 Aug 2018 09:30:38 GMT  
		Size: 76.3 MB (76322460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093785b086c5eccad756e67ff85a24617d02a89e615cc4726d9c8ce3fc0cc78c`  
		Last Modified: Wed, 15 Aug 2018 09:30:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:1794b67f4c8902fb0bc099171c843dc0771120270dfb52a0ce307020a7720c38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155332723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8294d9abe73b0b79dbdfcaccdf2addb21b2304b33b273c08b9f48355e73387`
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
# Wed, 18 Jul 2018 12:02:31 GMT
ENV GRADLE_VERSION=4.9
# Wed, 18 Jul 2018 12:02:42 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 12:02:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 18 Jul 2018 12:02:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 18 Jul 2018 12:02:58 GMT
USER [gradle]
# Wed, 18 Jul 2018 12:02:58 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Jul 2018 12:02:58 GMT
WORKDIR /home/gradle
# Wed, 18 Jul 2018 12:03:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
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
	-	`sha256:ea743dd7f3c8ed1601fd348fa88046d2b23263cb921d83e8401deec937d577db`  
		Last Modified: Wed, 18 Jul 2018 12:14:13 GMT  
		Size: 1.1 MB (1062767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a6012146d25729d519d1b56d506e99d8346b52a12b417a1921881afaa8e06c`  
		Last Modified: Wed, 18 Jul 2018 12:14:22 GMT  
		Size: 76.3 MB (76322533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23920407113829b4132fccb52d2250c75d897f10805e9d57511d9d166141b11a`  
		Last Modified: Wed, 18 Jul 2018 12:14:12 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1b1a87408a84d0ef6acf9f6d8856f4644677cfd9c088bfb02b5c780ff8308b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155742443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870602b249660563d489b2fd78bd5a6005a626582acb69e37572e31e208ba132`
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
# Wed, 15 Aug 2018 09:23:10 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 09:23:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 15 Aug 2018 09:23:17 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 15 Aug 2018 09:27:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 15 Aug 2018 09:27:18 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 15 Aug 2018 11:50:15 GMT
CMD ["gradle"]
# Wed, 15 Aug 2018 11:50:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 15 Aug 2018 11:50:17 GMT
ENV GRADLE_VERSION=4.9
# Wed, 15 Aug 2018 11:50:32 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 11:50:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 15 Aug 2018 11:50:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 15 Aug 2018 11:50:45 GMT
USER [gradle]
# Wed, 15 Aug 2018 11:50:46 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 15 Aug 2018 11:50:47 GMT
WORKDIR /home/gradle
# Wed, 15 Aug 2018 11:50:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
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
	-	`sha256:bc7832c1e65b68c0d48bbd8e5e1a9257735f42d0c01c100c4dfdbc344b7c2d97`  
		Last Modified: Wed, 15 Aug 2018 09:39:02 GMT  
		Size: 57.3 MB (57345443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8ad02073f7ef3c29c974a7a96c4fd043ebd4d1a1465c5eb1e18433eacecc5a`  
		Last Modified: Wed, 15 Aug 2018 09:38:46 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fb082bb75678188f15792a5581e3677fb98bff4a4ae159b457615545472d00`  
		Last Modified: Wed, 15 Aug 2018 12:00:05 GMT  
		Size: 1.1 MB (1054912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc8a75210e6d7af23d693594145bfb16408d118553e90d013cafa448610752d`  
		Last Modified: Wed, 15 Aug 2018 12:00:16 GMT  
		Size: 76.3 MB (76322359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280c01dac2824d6c644718dc2b6237c869181142d41b63f6209ac49c3e625cfe`  
		Last Modified: Wed, 15 Aug 2018 12:00:05 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; 386

```console
$ docker pull gradle@sha256:212a19be060fa14034c4144ed700c919de5a414dcd18ff7a2b81afc016e89f30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167986679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b67fbfdaa43ad4fa29a1ada9c2b864bae5a1ea0e88258e9db08ab84ee14273`
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
# Wed, 15 Aug 2018 11:05:41 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 11:05:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 15 Aug 2018 11:05:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 15 Aug 2018 11:06:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 15 Aug 2018 11:06:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 15 Aug 2018 12:28:34 GMT
CMD ["gradle"]
# Wed, 15 Aug 2018 12:28:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 15 Aug 2018 12:28:35 GMT
ENV GRADLE_VERSION=4.9
# Wed, 15 Aug 2018 12:28:42 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 12:28:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 15 Aug 2018 12:28:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 15 Aug 2018 12:29:11 GMT
USER [gradle]
# Wed, 15 Aug 2018 12:29:12 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 15 Aug 2018 12:29:12 GMT
WORKDIR /home/gradle
# Wed, 15 Aug 2018 12:29:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
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
	-	`sha256:46031671683917a92ab964b589cd96c8c947a8c75f9fa536cc44b8cbfd0badcc`  
		Last Modified: Wed, 15 Aug 2018 11:15:16 GMT  
		Size: 66.7 MB (66706588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65940d12834e29fc0a5558dabc2efbf18fd842fb2767e767e432f6d55639c3c3`  
		Last Modified: Wed, 15 Aug 2018 11:14:53 GMT  
		Size: 246.7 KB (246708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00835eade1807ea6ba563277071e88df20ed9eba17872aefd3121ffd2b6e7c5`  
		Last Modified: Wed, 15 Aug 2018 12:38:19 GMT  
		Size: 1.1 MB (1120691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa55e967f18a3251f2ee4614a183f47c56c9c0df9761281ea5cb63d36c2b11`  
		Last Modified: Wed, 15 Aug 2018 12:38:29 GMT  
		Size: 76.3 MB (76322304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b675939f346d266b5155afc61bef3247f8f4c8fa81e0ae7ac3e31db1c57febc`  
		Last Modified: Wed, 15 Aug 2018 12:38:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:a3940640f5d903660919a0bf9255ad3900454fac16d68b978a705689efa7ec1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158690185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9565a1b1f635be2fcd42757e75182a9bfd4a45925cea8d1de74550b7e1df2611`
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
# Wed, 15 Aug 2018 09:43:24 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 09:43:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 15 Aug 2018 09:43:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 15 Aug 2018 09:44:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 15 Aug 2018 09:44:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 15 Aug 2018 10:42:37 GMT
CMD ["gradle"]
# Wed, 15 Aug 2018 10:42:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 15 Aug 2018 10:42:41 GMT
ENV GRADLE_VERSION=4.9
# Wed, 15 Aug 2018 10:43:26 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 10:43:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 15 Aug 2018 10:43:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 15 Aug 2018 10:43:37 GMT
USER [gradle]
# Wed, 15 Aug 2018 10:43:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 15 Aug 2018 10:43:40 GMT
WORKDIR /home/gradle
# Wed, 15 Aug 2018 10:43:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
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
	-	`sha256:80f0f6fa86ab009acff6034618671fc178ad624accf9ddb794228ca41a2c2864`  
		Last Modified: Wed, 15 Aug 2018 09:55:22 GMT  
		Size: 57.8 MB (57846363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d152d5aa85628c647743bca300ef2090cc30ffe6e9e1b249cc3cbae70c81f8`  
		Last Modified: Wed, 15 Aug 2018 09:55:09 GMT  
		Size: 246.7 KB (246678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af1e81ad076d129f04263290c4be85c4ade73212a50d0cdcec2dea924e71219`  
		Last Modified: Wed, 15 Aug 2018 10:48:26 GMT  
		Size: 1.1 MB (1083798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a008741208e77f315e6757815d61a60892dba952fe20ea31366f6f5c8097822`  
		Last Modified: Wed, 15 Aug 2018 10:48:38 GMT  
		Size: 76.3 MB (76322499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb7363370f6f242b797c06f2cd53644b2f2f38cd1b7696f4d05083f5fcca3b`  
		Last Modified: Wed, 15 Aug 2018 10:48:25 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; s390x

```console
$ docker pull gradle@sha256:ca1bc4a530af81e0d7ad7799ffa365aa1c3eb3b619381df4905c4baf5eeed579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157488092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d322cb6a989b338b93f493b85c63756d2127fb2d7fa9dc5fad162014c2c018b4`
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
# Wed, 15 Aug 2018 11:57:06 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 11:57:07 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 15 Aug 2018 11:57:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 15 Aug 2018 11:57:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 15 Aug 2018 11:57:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 15 Aug 2018 12:30:55 GMT
CMD ["gradle"]
# Wed, 15 Aug 2018 12:30:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 15 Aug 2018 12:30:56 GMT
ENV GRADLE_VERSION=4.9
# Wed, 15 Aug 2018 12:31:00 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 12:31:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 15 Aug 2018 12:31:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 15 Aug 2018 12:31:05 GMT
USER [gradle]
# Wed, 15 Aug 2018 12:31:05 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 15 Aug 2018 12:31:05 GMT
WORKDIR /home/gradle
# Wed, 15 Aug 2018 12:31:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
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
	-	`sha256:1a1b31233fa3646ff6903aabf340d5019a5b961e4d6f5bf2abc11128970cf340`  
		Last Modified: Wed, 15 Aug 2018 12:00:30 GMT  
		Size: 57.0 MB (57009031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6010af70987a9579534f83eee57ca3474735c4f7113c21a6dbdf3757ef22f658`  
		Last Modified: Wed, 15 Aug 2018 12:00:21 GMT  
		Size: 246.7 KB (246679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a0bd39b4f56129cc50be48fb3b960e128c851d3d8423cf4b744d416844e671`  
		Last Modified: Wed, 15 Aug 2018 12:33:52 GMT  
		Size: 1.1 MB (1109191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dc5b4c49bb9772d782f02a0bc67248bc9cb85564590f5db028d8823675753f`  
		Last Modified: Wed, 15 Aug 2018 12:33:57 GMT  
		Size: 76.3 MB (76322339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6f670425677f0407dd9f46b673dcfc7a3c0e7b21bd3b338eb762f8d8306986`  
		Last Modified: Wed, 15 Aug 2018 12:33:51 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
