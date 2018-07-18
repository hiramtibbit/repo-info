## `gradle:jre7`

```console
$ docker pull gradle@sha256:25e003d5167242dcbee1cec137d812cdde62a0aafe28c368c193811edc52dd8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

```console
$ docker pull gradle@sha256:5106435140ad3ac04abae889be5b6bfcd3eecd4e8cd2fade832776c8ab8241aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.7 MB (230706593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ea7bfe3a580a19f97d5ac2fd4bfd86e3278df66c6a41308aad24bf9974749c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:25:50 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:25:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:26:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:26:49 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:26:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 23:20:16 GMT
ENV GRADLE_VERSION=4.9
# Tue, 17 Jul 2018 23:20:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Tue, 17 Jul 2018 23:20:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 23:20:21 GMT
USER [gradle]
# Tue, 17 Jul 2018 23:20:22 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 23:20:22 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 23:20:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5ffaa94f61555d66da1679c14e9ced99965370c3c4eca6892a5700a0526960`  
		Last Modified: Tue, 17 Jul 2018 07:17:52 GMT  
		Size: 795.1 KB (795126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e9f30394f51490c8d65386733f9150e84961b1dca879ec5a679f28a01d13b1`  
		Last Modified: Tue, 17 Jul 2018 07:17:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae3a41d58736ab9bc81c2e0ba576abd7b92e629c048ad27916c426c24781935`  
		Last Modified: Tue, 17 Jul 2018 07:17:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eea330fdc65502048e11d227eac2e0aaf8a2e4758c1f2ac5692d6f554882579`  
		Last Modified: Tue, 17 Jul 2018 07:18:12 GMT  
		Size: 81.8 MB (81797664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a13758800dbaf430fa5453d28a976e7ebfc058277ffb4ccc23eae623f55210`  
		Last Modified: Tue, 17 Jul 2018 23:35:53 GMT  
		Size: 76.3 MB (76323086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639eda0218cb890852bde7a4b6effe0808d58d717cc76cb2a1aae6ee74250917`  
		Last Modified: Tue, 17 Jul 2018 23:35:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
