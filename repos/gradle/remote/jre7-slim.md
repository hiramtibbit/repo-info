## `gradle:jre7-slim`

```console
$ docker pull gradle@sha256:5843c4755ec6c875288e762701c0caf7ff80237d8d2ca500c05a525209fd3fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7-slim` - linux; amd64

```console
$ docker pull gradle@sha256:70d7995ca727b92fec427bd63528a1591e4711f789ff4c054a7398da2dad543e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180895019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b9d890d67e1898724dff05b1e40e43b805d55359bf66dbdc005c633175c86c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:23:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:23:46 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:23:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:23:47 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:27:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:27:25 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:27:26 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:28:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:29:32 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:29:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 23:23:25 GMT
ENV GRADLE_VERSION=4.9
# Tue, 17 Jul 2018 23:23:56 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:23:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Tue, 17 Jul 2018 23:24:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 23:24:11 GMT
USER [gradle]
# Tue, 17 Jul 2018 23:24:11 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 23:24:12 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 23:24:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83aaae4a41047243bc7114b57d6abbf93493ca7760a12f1bcb11f7796e792a3f`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 463.7 KB (463742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77071b36c9a8bf79837590aee3dcf02df92603573b10a2f99b154d05a80ed68b`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44de20d9dd075cf58bc5c1696f04dd15b9aa035f0f8a86eda6ded43da087c3d1`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8892ada1858955ed00ab8408454978d93feab29003ea2c3e437e005c724cdc`  
		Last Modified: Tue, 17 Jul 2018 07:20:04 GMT  
		Size: 61.6 MB (61627351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65751921f3c0ebcc457dfe5fb0047b1b4b3d389ab0beae61af7dfb794f1d9e2`  
		Last Modified: Tue, 17 Jul 2018 23:39:52 GMT  
		Size: 12.4 MB (12360158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ecc5ac985402d01fc769bd3f7f770e888c2fce100a297598b4dc21b1a2c538`  
		Last Modified: Tue, 17 Jul 2018 23:39:58 GMT  
		Size: 76.3 MB (76323087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cd385570beabbd7eb975e0da4b17a85a6b0f8a07c36dc55e44e67c35685968`  
		Last Modified: Tue, 17 Jul 2018 23:39:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
