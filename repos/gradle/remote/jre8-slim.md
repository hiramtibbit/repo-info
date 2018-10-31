## `gradle:jre8-slim`

```console
$ docker pull gradle@sha256:09e8cdb76a65b99f2911a99098b8c6d5a1bb6707c2611ea4aefc6c5163784df7
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
$ docker pull gradle@sha256:37efaaabf32eb25b36464a172f3a5b44f3876dbd3ca8964a4d841d9d508ba126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158523286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acbd244c454898d4c6ffa2f0eb0e3e19054a6cd15769d665b813988630d9319`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:27:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:27:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:29:07 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:29:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:31:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:31:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:32:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:32:30 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 02:30:56 GMT
CMD ["gradle"]
# Tue, 30 Oct 2018 02:30:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 30 Oct 2018 02:30:57 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 30 Oct 2018 02:31:05 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 02:31:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 30 Oct 2018 02:31:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 30 Oct 2018 02:31:10 GMT
USER [gradle]
# Tue, 30 Oct 2018 02:31:10 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 30 Oct 2018 02:31:11 GMT
WORKDIR /home/gradle
# Tue, 30 Oct 2018 02:31:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c48fea920808538de92047d2615ee465bb0461b3a9c7030e22784400268ffc`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 454.8 KB (454840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beeeb05aa4653b87a6fa2268a20c197222c3223c01f5e20552ffaab449b6994`  
		Last Modified: Tue, 16 Oct 2018 05:56:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf2782bd40eebe1d10c7efbde028e6c9321cd49331f11be5354633b0424a88`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ef14a74564a3d1026849da2f3ae1b92b0e6f54f515efc41306937f9814e727`  
		Last Modified: Mon, 29 Oct 2018 23:41:43 GMT  
		Size: 55.8 MB (55831569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9f8535f9b4d35edcbd1ce7de1e6a27c4d2ed3aa11f4bd8949f45162f754002`  
		Last Modified: Mon, 29 Oct 2018 23:41:30 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3a52b00c4b688b3c954cb8ff27d5cf98960bab07ae868c253d2846886edcec`  
		Last Modified: Tue, 30 Oct 2018 02:40:39 GMT  
		Size: 1.1 MB (1097795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3095e455673a5471993b95b7ad8bb64120dac3d24095a10ba66fefe6d0be325c`  
		Last Modified: Tue, 30 Oct 2018 02:40:47 GMT  
		Size: 78.4 MB (78405797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d03f191646d569efdb531a67b3973c7fea3047d2f050e760ba9454261e6c773`  
		Last Modified: Tue, 30 Oct 2018 02:40:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:f4a6e31a007c8a246194fecce8034c5aec31e4530f856a8aaa9c69791eb83f5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147891396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3d26ab25ef2dcab0ce53050b2f907d00070ce58010466688d2f4ed3a1d2c835`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:13:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:13:35 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:13:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:13:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:14:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 09:14:47 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:06:22 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:06:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:06:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:07:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 09:38:16 GMT
CMD ["gradle"]
# Wed, 31 Oct 2018 09:38:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 31 Oct 2018 09:38:17 GMT
ENV GRADLE_VERSION=4.10.2
# Wed, 31 Oct 2018 09:38:26 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 31 Oct 2018 09:38:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Wed, 31 Oct 2018 09:38:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 31 Oct 2018 09:38:33 GMT
USER [gradle]
# Wed, 31 Oct 2018 09:38:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 31 Oct 2018 09:38:34 GMT
WORKDIR /home/gradle
# Wed, 31 Oct 2018 09:38:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a37ecb314e4fc3bb5f9abc23bfb660388e8e8552bd586a01b41b77fc64798e`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 447.7 KB (447675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d72cd2bb07250acf0f22d065e542f62dfce9e7a7d5886559a1c82091c1f8f2d`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4071c2b551e55bc41e6824664d8598a78ccf4140096edab7d707825c128cf5c`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c97d36896c6777e5b12b0c8b1267332cbb642b666ec464c8ff735d0437f10d3`  
		Last Modified: Wed, 31 Oct 2018 09:19:36 GMT  
		Size: 46.6 MB (46567754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5370861db32765fb8eea5c033db7b7c2af58c458a149b74f95b7d469bb805060`  
		Last Modified: Wed, 31 Oct 2018 09:19:25 GMT  
		Size: 246.7 KB (246741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31df2c6866ee2bce06846f76b971184fb6983a60ea856f38a1e1a44f6f8ed734`  
		Last Modified: Wed, 31 Oct 2018 09:44:48 GMT  
		Size: 1.1 MB (1059758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42ebd2727a86ea8b83d0aa8c2944aff54675f513ae414dcf884cc417884a69`  
		Last Modified: Wed, 31 Oct 2018 09:44:58 GMT  
		Size: 78.4 MB (78405885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f25fed119a9d0e66a9e68b258b95da81d2c6fdd53f41a05b04bd4e7ad42013`  
		Last Modified: Wed, 31 Oct 2018 09:44:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:5a598fb97ba0328425ac065cc52cb910e833cf2016b37121de3d806da7f2b5ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.1 MB (148122186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6262294c7f7549ee571e7c0e682e3e64f046c62929e86178708a23641c259d`
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
# Tue, 25 Sep 2018 12:04:43 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 25 Sep 2018 12:04:52 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 12:04:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 25 Sep 2018 12:04:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 25 Sep 2018 12:04:59 GMT
USER [gradle]
# Tue, 25 Sep 2018 12:04:59 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Sep 2018 12:05:08 GMT
WORKDIR /home/gradle
# Tue, 25 Sep 2018 12:05:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
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
	-	`sha256:8992b38ae81ea328a4170ace21d3c8e93478541350c061640ccaddf27c2e4efb`  
		Last Modified: Tue, 25 Sep 2018 12:16:40 GMT  
		Size: 1.1 MB (1061715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3957cdfad5aa340022c73934f211b0e5bd8207bf380ac6613056465f75c0a`  
		Last Modified: Tue, 25 Sep 2018 12:16:50 GMT  
		Size: 78.4 MB (78405807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fa437b7bda8567e367f034704ce1bb68fa824497dfd62f3ebcd8093731dfc6`  
		Last Modified: Tue, 25 Sep 2018 12:16:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:fce5e6f59994eaf95f41de056584bd04c16431a39ce678c93fd94feb09b4e931
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.5 MB (148483475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7afdd29ea4ae47e152ff5c773052bb98c479ab4f19fd618a856dabc601ae375e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:16:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:16:12 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:16:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:16:16 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:18:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 09:18:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:13:57 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:13:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:15:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:15:18 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:58:13 GMT
CMD ["gradle"]
# Tue, 30 Oct 2018 14:58:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 30 Oct 2018 14:58:14 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 30 Oct 2018 14:58:26 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 14:58:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 30 Oct 2018 14:58:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 30 Oct 2018 14:58:36 GMT
USER [gradle]
# Tue, 30 Oct 2018 14:58:37 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 30 Oct 2018 14:58:38 GMT
WORKDIR /home/gradle
# Tue, 30 Oct 2018 14:58:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7324d8335882a29fe8c0b3303f713c5dd3588ed146a85f7f92a197d97496f414`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 440.9 KB (440859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18813557b28b8d4195cf501751c81b61df21e01bc189f1491b03c907cf4c0d5`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a9482aee914f7b29117d12b2deab0e7df6413b6fb4cdb5eee6a61017f7811`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc8cf0790f54a15a0aafa5ede63b3296c45ab47b38d4b8c6bcca1f1374d3997`  
		Last Modified: Tue, 30 Oct 2018 09:27:07 GMT  
		Size: 48.0 MB (48004419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2644e5dc0cca6f7db0cefc587e6a9f8350acfec83b2cef3a2ef262eeab25950`  
		Last Modified: Tue, 30 Oct 2018 09:26:41 GMT  
		Size: 246.6 KB (246640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6687cc1dfd79011a0e341a9f35bd52935ddc1d23f13438651df489259c82dd51`  
		Last Modified: Tue, 30 Oct 2018 15:10:11 GMT  
		Size: 1.1 MB (1053563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2c04fff8d396793ea7f79b8f448a10a19d877d071844743d873b8f4eeb664`  
		Last Modified: Tue, 30 Oct 2018 15:10:23 GMT  
		Size: 78.4 MB (78405828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa28b11fc03cf9d7efd47e37690b413f5a01c227a822d7da74e336f418f206`  
		Last Modified: Tue, 30 Oct 2018 15:10:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; 386

```console
$ docker pull gradle@sha256:fdbd4dfd474e6f1617d8ee25b8965e7e2f0d5526f9432f30c6116a46e2edd653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158733822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809f69feff86ab9d6bd381faca70e5f205fb6cf563dee825402cab3d3d93d2cf`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:33:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:33:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:33:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:33:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:34:16 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 11:34:16 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:10:38 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:10:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:11:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:11:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:18:54 GMT
CMD ["gradle"]
# Tue, 30 Oct 2018 14:18:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 30 Oct 2018 14:18:54 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 30 Oct 2018 14:18:59 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 14:18:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 30 Oct 2018 14:19:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 30 Oct 2018 14:19:04 GMT
USER [gradle]
# Tue, 30 Oct 2018 14:19:04 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 30 Oct 2018 14:19:05 GMT
WORKDIR /home/gradle
# Tue, 30 Oct 2018 14:19:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b9eebfdcdc50c2fc015902acabb5b081483ac42de35903ca5e8dc691b9d10e`  
		Last Modified: Tue, 16 Oct 2018 11:52:02 GMT  
		Size: 463.5 KB (463507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27881e30f22216eb10b6e36a1dc630790c4d1699785cf5ad4d23e7895ab0e21`  
		Last Modified: Tue, 16 Oct 2018 11:52:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077465a4cf36ea808537e9372e194ceafe0cb3dbaa47220476866c29545c89c8`  
		Last Modified: Tue, 16 Oct 2018 11:52:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a857c87d9ac060299e56c6bdaf7c79c171376bd1a96fd74677fc7028dcd4396`  
		Last Modified: Tue, 30 Oct 2018 11:16:55 GMT  
		Size: 55.4 MB (55371098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1e27763bab6ed09b494699581cf46f8bfb6a340b1dda24d5efee5000efd858`  
		Last Modified: Tue, 30 Oct 2018 11:16:44 GMT  
		Size: 246.7 KB (246684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e538cf914cc62e41a7e0ce2111fb63547225df9c6f3e33770065c2c1b6e6e9`  
		Last Modified: Tue, 30 Oct 2018 14:25:55 GMT  
		Size: 1.1 MB (1119641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110fb95d204fcada40fde392c21553242110e0fc05ac71e7e00195f403d4a696`  
		Last Modified: Tue, 30 Oct 2018 14:26:01 GMT  
		Size: 78.4 MB (78405769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f22a34bec29264838b4e2d6c82c3f33781113dab1b9e351d90901b1675ac26`  
		Last Modified: Tue, 30 Oct 2018 14:25:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:ee0f3c65e9d4b6da4be9389a31f9e6628d82581ebe65097accebb4ae7a0e4f3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151396595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cc6eddd6fb827222048991e7244e60e0a7c61c7a6bcf6c258a7b9f4aa89986`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:38:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:44 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:38:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 08:38:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 08:45:23 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 08:45:24 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:52:37 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:52:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:54:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:54:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 09:56:50 GMT
CMD ["gradle"]
# Wed, 31 Oct 2018 09:56:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 31 Oct 2018 09:56:52 GMT
ENV GRADLE_VERSION=4.10.2
# Wed, 31 Oct 2018 09:57:02 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 31 Oct 2018 09:57:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Wed, 31 Oct 2018 09:57:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 31 Oct 2018 09:57:15 GMT
USER [gradle]
# Wed, 31 Oct 2018 09:57:18 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 31 Oct 2018 09:57:19 GMT
WORKDIR /home/gradle
# Wed, 31 Oct 2018 09:57:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b5543e9d8921bca55226b6b02359bff99fcbba14a5e4fafef43e85cd22be8`  
		Last Modified: Tue, 16 Oct 2018 09:02:08 GMT  
		Size: 449.8 KB (449756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a61c52170d68c0edcd064ac4a7786028f65b5494155795a597c3b8b7acda56`  
		Last Modified: Tue, 16 Oct 2018 09:02:08 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9398f12a0760b2cbf7c8ee799fcea4024bf516290710da0b88d3bab698b4cca8`  
		Last Modified: Tue, 16 Oct 2018 09:02:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45e7036dc6dc232543843952a44e87f46c557f1ee2b7e721fcd9b57eed09196`  
		Last Modified: Wed, 31 Oct 2018 08:20:59 GMT  
		Size: 48.5 MB (48470166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed85de64edbc34d88cc529e2941c6439eb06eccfbaa45dc2d5edd43b921913`  
		Last Modified: Wed, 31 Oct 2018 08:20:47 GMT  
		Size: 246.7 KB (246747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afd02b72402ce735ec569873d86bfe146bb8e2f95d95272d84ecede20b463f6`  
		Last Modified: Wed, 31 Oct 2018 10:04:34 GMT  
		Size: 1.1 MB (1082848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7db48c6a9eac780913c6e1674ff5bd814a0fa5d8f5e004b13acafaed57e63d`  
		Last Modified: Wed, 31 Oct 2018 10:04:42 GMT  
		Size: 78.4 MB (78405876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1f0a99ac8e043955795e8408e362dfcf52ae636e56967f20cb71dea39e6dcf`  
		Last Modified: Wed, 31 Oct 2018 10:04:34 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; s390x

```console
$ docker pull gradle@sha256:9728aeb3c8dd79a0fefebcac88ea4e8d4232ae4c3ead8b0ffb3c34d0a1c0c8ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150237336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bda4122ff5258504237e2b4303830fb2761862ccda635a8e650225fe7c8133`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:51:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:51:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:51:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 11:51:55 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:50 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:10:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:10:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 13:28:22 GMT
CMD ["gradle"]
# Tue, 30 Oct 2018 13:28:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 30 Oct 2018 13:28:22 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 30 Oct 2018 13:28:27 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 13:28:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 30 Oct 2018 13:28:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 30 Oct 2018 13:28:31 GMT
USER [gradle]
# Tue, 30 Oct 2018 13:28:31 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 30 Oct 2018 13:28:31 GMT
WORKDIR /home/gradle
# Tue, 30 Oct 2018 13:28:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e94b0d505f538ae54afb9dc971dc4f184f951b9b7c0a6386e55119be35cec7`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 465.8 KB (465777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accba0e259d42eea864d5eaade6d14caeb1b80f07936da1d4498a932c01a901d`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc725da6f78df007778d52100ad914a775759c2c780f3313ac9413f8b048432`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3ce57c8a563f2ba3aff8679fdd874f383314c73f14d3210fc6b2f50e03bc5d`  
		Last Modified: Tue, 30 Oct 2018 12:13:31 GMT  
		Size: 47.7 MB (47675463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d990522113f87a1c2cc7358807d60df6b1a36eb5d618fff66948a186df3e4f`  
		Last Modified: Tue, 30 Oct 2018 12:13:23 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc83e5e0d085ef101afa0605dd6cea936e7a21777f8ce4e0dbafb5a7c6bc4586`  
		Last Modified: Tue, 30 Oct 2018 13:31:47 GMT  
		Size: 1.1 MB (1108348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87fede52e59375427ae7f0ae305d8f0b6f6b8e008af54a31741195af37a65a6`  
		Last Modified: Tue, 30 Oct 2018 13:31:53 GMT  
		Size: 78.4 MB (78405805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa94afb6ce2a7c5727782bb65ac98b51e6d7a3cb8cbf56877e98d74329d1d25`  
		Last Modified: Tue, 30 Oct 2018 13:31:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
