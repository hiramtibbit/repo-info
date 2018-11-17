## `gradle:slim`

```console
$ docker pull gradle@sha256:0469806525970af22718a0b2248ca634a0cd7fb538c9927366b1b5b291ec7659
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
$ docker pull gradle@sha256:ea5f16d2b6dc517ed61819fa9a66ec5173faca60afb0cc0d9aa55648b0a703ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.2 MB (170188847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2034020db74aaa4936a72e785cdf0e30a95a8f0bf95e324549bd452b92ed43`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:59:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:59:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:00:02 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 15:00:02 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:00:03 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:00:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:01:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:01:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 05:48:33 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 05:48:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 05:48:34 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 05:48:41 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:48:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 05:48:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 05:48:46 GMT
USER [gradle]
# Sat, 17 Nov 2018 05:48:47 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 05:48:47 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 05:48:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6dd39b85823bd8b7dedf55493b2571443143909aa32cecfcce74bf0280d18`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 454.8 KB (454816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0730514ffad1a18c952b64cb142bc90d2fb8dae84958e7f4cbe0f45fc77fd`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dae24989f4b7d5e9ffab8e282103fd96960a02525281093fac8c2fac3e3e35`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c22fac40b66caf65eaefa65a5e2f8876e638cfa16a591a64670887bbb6a0540`  
		Last Modified: Fri, 16 Nov 2018 16:00:25 GMT  
		Size: 67.5 MB (67495815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbac173c1029141c329d94ba5905a5488390751b7d1bd1077029fa117f9a6e59`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 246.8 KB (246786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9221ac93ba0cd5c8761ed2094f06d5fecb28f41d47fcc4fad3b87a50d9400bba`  
		Last Modified: Sat, 17 Nov 2018 06:08:27 GMT  
		Size: 1.1 MB (1098865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98c34d8f5cff7a1445fb5bdbf1e7ca2578d14eaf080e3315e398e079aad8609`  
		Last Modified: Sat, 17 Nov 2018 06:08:35 GMT  
		Size: 78.4 MB (78405771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3dfc2b67274eba7ea7e3bfc50d08b1f22103b421903dd36c85af225e60835b`  
		Last Modified: Sat, 17 Nov 2018 06:08:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:bfa884cfcc83943f29db38a18d4e03a186b26fc560df54e42f74e66cbc54954f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157245360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc6efc8c06fb0f3c430f23fd4a80494f1a035953f367a0975c08a466dbff8c1`
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
# Tue, 16 Oct 2018 09:13:37 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:13:40 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:03:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:03:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:04:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:04:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 09:37:44 GMT
CMD ["gradle"]
# Wed, 31 Oct 2018 09:37:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 31 Oct 2018 09:37:44 GMT
ENV GRADLE_VERSION=4.10.2
# Wed, 31 Oct 2018 09:37:54 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Wed, 31 Oct 2018 09:37:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Wed, 31 Oct 2018 09:38:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 31 Oct 2018 09:38:01 GMT
USER [gradle]
# Wed, 31 Oct 2018 09:38:01 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 31 Oct 2018 09:38:02 GMT
WORKDIR /home/gradle
# Wed, 31 Oct 2018 09:38:06 GMT
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
	-	`sha256:f357af097be507790b608decc08b06b5859a889dffc3608e91e8f73b7d3cc3e9`  
		Last Modified: Tue, 30 Oct 2018 10:09:59 GMT  
		Size: 55.9 MB (55920645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e36b6081666e17ea7178f41714c5a956a702eb3b9a5f3fbe28f4693e4a93b0`  
		Last Modified: Tue, 30 Oct 2018 10:09:42 GMT  
		Size: 246.7 KB (246749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd998cf2fd034fea86e07e882a5e3feb541485f0b21e9f0fafaad24bf8848ecd`  
		Last Modified: Wed, 31 Oct 2018 09:42:56 GMT  
		Size: 1.1 MB (1060826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f6c0c3739d476375158dc0a011a5c8c8446d56f1751b6afd7fc6ced169aa94`  
		Last Modified: Wed, 31 Oct 2018 09:43:06 GMT  
		Size: 78.4 MB (78405885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d80b6fbf609cec3bdb1fddc338fad7b04c023128c0d956983d13dc22ffd96e`  
		Last Modified: Wed, 31 Oct 2018 09:42:55 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:1d733d9e56dbccf9eeb0e3b871233aa44041a4bb191eb9350d3ff179df7ee3a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.4 MB (157416014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b01334b241339595acd798f14fcbb4b1e0155ad77f929382e60df059d508fc`
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
# Tue, 25 Sep 2018 12:03:58 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 25 Sep 2018 12:04:09 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 12:04:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 25 Sep 2018 12:04:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 25 Sep 2018 12:04:16 GMT
USER [gradle]
# Tue, 25 Sep 2018 12:04:17 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Sep 2018 12:04:17 GMT
WORKDIR /home/gradle
# Tue, 25 Sep 2018 12:04:22 GMT
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
	-	`sha256:6d7a8f49bb9739647a90c2b283f2dddbb67e1363d20bc02afa973e221d2cb398`  
		Last Modified: Tue, 27 Mar 2018 02:15:42 GMT  
		Size: 56.1 MB (56061983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b662a98e0b944b59df2e43fea315c35651e6a6b17941cc68a3475e550b88f5b6`  
		Last Modified: Tue, 27 Mar 2018 02:15:27 GMT  
		Size: 272.2 KB (272191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10d5995fd794718a548c528beef603ca5da39bb91a7b95e7ff0189a937d5581`  
		Last Modified: Tue, 25 Sep 2018 12:14:57 GMT  
		Size: 1.1 MB (1062769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0876f886a3347aa1565c3fe93e2bad96a20331663ae23b3617223d490a9b1d78`  
		Last Modified: Tue, 25 Sep 2018 12:15:08 GMT  
		Size: 78.4 MB (78405821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddfef989d2322c1ab314e4116c9187bb711d3f30c89a9194b582eb206e259da`  
		Last Modified: Tue, 25 Sep 2018 12:14:57 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:61924fab7a33e20bd708710d2739f34e6915d43315fcc646a2e7285f36d33b1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157817520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f02376bff98b64c14d0e4d4e4d86c3b5a2acacb66538c1e02145df784efc79c`
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
# Tue, 16 Oct 2018 09:16:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:16:17 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:05:28 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:05:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:06:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:07:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:56:51 GMT
CMD ["gradle"]
# Tue, 30 Oct 2018 14:56:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 30 Oct 2018 14:56:53 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 30 Oct 2018 14:57:05 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 14:57:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 30 Oct 2018 14:57:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 30 Oct 2018 14:57:15 GMT
USER [gradle]
# Tue, 30 Oct 2018 14:57:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 30 Oct 2018 14:57:16 GMT
WORKDIR /home/gradle
# Tue, 30 Oct 2018 14:57:19 GMT
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
	-	`sha256:d05b1690da890ff114c8e3e1f07d120448517fc1061a0ba2ae6af3fbc201f401`  
		Last Modified: Tue, 30 Oct 2018 09:21:29 GMT  
		Size: 57.3 MB (57337507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9675a1ab1b81fd4ad903a259c118ef5932e62d79b549f99f22dd7b6c49aa42f4`  
		Last Modified: Tue, 30 Oct 2018 09:20:58 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aaac79db95b265b49d20668127e6fa90a157dfc8ae532ca67664cca77223738`  
		Last Modified: Tue, 30 Oct 2018 15:07:37 GMT  
		Size: 1.1 MB (1054510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43aade4e28e8e6ac0cc90a64da9112917b3fdb21b28bc0707406e3bb0a884963`  
		Last Modified: Tue, 30 Oct 2018 15:07:49 GMT  
		Size: 78.4 MB (78405806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9feec85fb95d1e54e41fad36f576d5bab2e312614aaba831d77830ba954dd61`  
		Last Modified: Tue, 30 Oct 2018 15:07:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; 386

```console
$ docker pull gradle@sha256:6481da80b175489e7fb71698e29eb81f61dc2e86942e9175ccc7934972b6a747
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170076127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e46c73e111de3d3aae5ce072e6ce106928b76cb065162e16a6ac74f619a846f`
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
# Tue, 16 Oct 2018 11:33:08 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:33:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:08:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:08:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:09:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:09:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:18:14 GMT
CMD ["gradle"]
# Tue, 30 Oct 2018 14:18:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 30 Oct 2018 14:18:15 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 30 Oct 2018 14:18:21 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 14:18:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 30 Oct 2018 14:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 30 Oct 2018 14:18:25 GMT
USER [gradle]
# Tue, 30 Oct 2018 14:18:26 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 30 Oct 2018 14:18:26 GMT
WORKDIR /home/gradle
# Tue, 30 Oct 2018 14:18:28 GMT
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
	-	`sha256:5fafa172f728e571b850c391ec2c1e1a7ff01447f9572d61b1efeec1e3450a89`  
		Last Modified: Tue, 30 Oct 2018 11:14:20 GMT  
		Size: 66.7 MB (66712381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaee5fea14f73087d66591f44002f5a3132c29100e0c5eb7713ac18e856f70ad`  
		Last Modified: Tue, 30 Oct 2018 11:14:07 GMT  
		Size: 246.7 KB (246687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a39c026f296bf7596885f90b67cb9a569226905954c1cf9225b12d359382088`  
		Last Modified: Tue, 30 Oct 2018 14:24:14 GMT  
		Size: 1.1 MB (1120649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebe5c59f6b14768970ae118bd742b14ee5cbd5b8a97885a766b045ec278a955`  
		Last Modified: Tue, 30 Oct 2018 14:24:21 GMT  
		Size: 78.4 MB (78405780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56def321bcc0b9eb1bba8bc62a766ad1ffdba61206343bf2e9ba08ca6f818d63`  
		Last Modified: Tue, 30 Oct 2018 14:24:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:227fbf6a99d4d36659015c3bd3c39426ed362b1511d09f3858727f771949c143
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160784334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a0ea811bc8a78a82b9e449d46c1dccdbdc6150e666a074c92cea67c3e10440`
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
# Fri, 16 Nov 2018 22:11:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 22:12:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 22:13:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 05:39:13 GMT
CMD ["gradle"]
# Sat, 17 Nov 2018 05:39:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Nov 2018 05:39:15 GMT
ENV GRADLE_VERSION=4.10.2
# Sat, 17 Nov 2018 05:39:30 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Sat, 17 Nov 2018 05:39:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 17 Nov 2018 05:39:38 GMT
USER [gradle]
# Sat, 17 Nov 2018 05:39:38 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Nov 2018 05:39:39 GMT
WORKDIR /home/gradle
# Sat, 17 Nov 2018 05:39:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
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
	-	`sha256:82a112493496a41c2468ac5c73aae7637508c4bb8f0a5565af535bc1515f589a`  
		Last Modified: Fri, 16 Nov 2018 22:51:07 GMT  
		Size: 57.9 MB (57856958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51986d5f64298ce7143f055a6257d9acb9d60280d887a75e1b4e88642c7e0e89`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 246.7 KB (246715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d7f6b99ce6ff71f9f69f01d240a695ef383e369d06de6659eba3ad08760d60`  
		Last Modified: Sat, 17 Nov 2018 05:52:29 GMT  
		Size: 1.1 MB (1083668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767995be54aadf9892b40b7fa3292d9fc2a52afb23bb305b8aaabf9bdcc89493`  
		Last Modified: Sat, 17 Nov 2018 05:52:37 GMT  
		Size: 78.4 MB (78405903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e404478d60c9af42c0e78ab98a93bb1aa2b46b05519a0cc4750b24d2a55ce5`  
		Last Modified: Sat, 17 Nov 2018 05:52:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; s390x

```console
$ docker pull gradle@sha256:b9573efce46120a64daddcfb220bd69125b51742455f1fc9ea5f140050292bc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159578261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea5ecf0697f08af16f0819b92e0ede8cd3631b7958079289c7401694e882027`
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
# Tue, 16 Oct 2018 11:51:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:51:19 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:08:12 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:08:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:08:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:08:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 13:27:53 GMT
CMD ["gradle"]
# Tue, 30 Oct 2018 13:27:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 30 Oct 2018 13:27:54 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 30 Oct 2018 13:27:59 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 13:27:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 30 Oct 2018 13:28:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 30 Oct 2018 13:28:03 GMT
USER [gradle]
# Tue, 30 Oct 2018 13:28:03 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 30 Oct 2018 13:28:03 GMT
WORKDIR /home/gradle
# Tue, 30 Oct 2018 13:28:05 GMT
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
	-	`sha256:136d2c4237b26e00e9e01fce51354494d4a9792a9f0a6864ae608cb740475ac0`  
		Last Modified: Tue, 30 Oct 2018 12:12:19 GMT  
		Size: 57.0 MB (57015510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfde6c133b6d5fb546b8ec54343b09254aa8f6faa4f7d0ea203ce15757ec6a75`  
		Last Modified: Tue, 30 Oct 2018 12:12:09 GMT  
		Size: 246.7 KB (246707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc821789f3c3e4afcda0d3f99170a6d79fbf17faa368ef8ac4fc8116be496b0`  
		Last Modified: Tue, 30 Oct 2018 13:31:06 GMT  
		Size: 1.1 MB (1109214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183e4dd69fa5eaa294bb1a63c74fae9659a03054d792ef7401c6217eb960d146`  
		Last Modified: Tue, 30 Oct 2018 13:31:12 GMT  
		Size: 78.4 MB (78405806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9f3482d67bfc34b1b3689796148e9a6c04053af7aaf5cd152fec722637e838`  
		Last Modified: Tue, 30 Oct 2018 13:31:05 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
