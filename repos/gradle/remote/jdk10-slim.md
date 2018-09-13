## `gradle:jdk10-slim`

```console
$ docker pull gradle@sha256:b12b04939f8d2397e17a26744ad6a039ad436b83ed48c14627b9c3f4e7c75d6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk10-slim` - linux; amd64

```console
$ docker pull gradle@sha256:1e2f0fef17bb5366d863fc2174d54e5b95d221f4d0edd2a99e47c57196952a44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379533170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a93f4f1b310ed8e02a8ff6df9977c70112310759af6013535e1aab28350d805`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:58 GMT
ADD file:a391d9232725a03d7b21f24be4d387c1d11f905c3ba448c0a3793745ca8cc6f3 in / 
# Tue, 04 Sep 2018 21:20:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:15:51 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:15:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:19:52 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 15:09:24 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 15:09:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Sep 2018 17:23:57 GMT
ENV GRADLE_VERSION=4.10.1
# Thu, 13 Sep 2018 17:24:03 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Sep 2018 17:24:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Thu, 13 Sep 2018 17:24:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 13 Sep 2018 17:24:06 GMT
USER [gradle]
# Thu, 13 Sep 2018 17:24:07 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Sep 2018 17:24:07 GMT
WORKDIR /home/gradle
# Thu, 13 Sep 2018 17:24:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:a7e1658cb0533dfcb5baa38a0ce3230fd3aea217be1a52d0b46f5521b305d608`  
		Last Modified: Tue, 04 Sep 2018 21:24:51 GMT  
		Size: 26.3 MB (26269506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d7fab3f2f9f524ee8ab66d9bf80ff7ce89278ff495a4c665481d069832089`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 460.8 KB (460788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7705f8b8f1de989ae8e63828bc91553d1aa32563ed57bd05b21828c0ef89920`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2baa561332e300334fa017ef5b45151657527137d6c5d1996d8e8b7fa714bbba`  
		Last Modified: Wed, 05 Sep 2018 01:36:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4c901852afa436a0d3eb0e94858582b1dda5691a1a5f2828376aa5c7a7e20`  
		Last Modified: Wed, 05 Sep 2018 01:37:09 GMT  
		Size: 273.8 MB (273787323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82f73b2d6d7cadd48e86c5ee74fc621bd1a7bb7a0a48b6bb4e46fbb0435ab91`  
		Last Modified: Thu, 13 Sep 2018 17:33:41 GMT  
		Size: 612.4 KB (612420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9c0d74f238152e0a579e3627ea2a56547c1d8f0a542bc4e3559e413c17cbd7`  
		Last Modified: Thu, 13 Sep 2018 17:33:47 GMT  
		Size: 78.4 MB (78402625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89ca1dd6cb0555bd13a5cc26d58bb07da6b6fa87f8098dd730c628d8af6e502`  
		Last Modified: Thu, 13 Sep 2018 17:33:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
