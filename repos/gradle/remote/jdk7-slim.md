## `gradle:jdk7-slim`

```console
$ docker pull gradle@sha256:e5bf62badf230f133223193af47504c6d9800198e04ef9f3d1de1cf6e2483437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7-slim` - linux; amd64

```console
$ docker pull gradle@sha256:1337eac6ff60c4d0eeb985b93e0ae80f8dedf71ad1aa0d40d0744ce322a6e8e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206576953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f85ca2954af63f5a7a9cdd0fe7c9e8e35c26bbe64e4f98d1e7c8db879bb8d7`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:26:42 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:26:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:26:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:26:43 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:26:44 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 01:26:44 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 01:27:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 15:04:15 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 15:04:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Sep 2018 17:20:46 GMT
ENV GRADLE_VERSION=4.10.1
# Thu, 13 Sep 2018 17:21:06 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Sep 2018 17:21:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
# Thu, 13 Sep 2018 17:21:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 13 Sep 2018 17:21:10 GMT
USER [gradle]
# Thu, 13 Sep 2018 17:21:10 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Sep 2018 17:21:10 GMT
WORKDIR /home/gradle
# Thu, 13 Sep 2018 17:21:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e53ce3a01cf016b5d294eef20977ad4e3c13e761ac1e475f1ffad4c6141a92bd
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2298fd4ed9840c0f93526d2c58380cf647aa4579e0fa6eae9c6b2cae2a19f7eb`  
		Last Modified: Wed, 05 Sep 2018 01:43:48 GMT  
		Size: 463.7 KB (463743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c7c6172ee282cedb73af91509beee5d91b6d5b3b7d35c8f05b7b0cd499145f`  
		Last Modified: Wed, 05 Sep 2018 01:43:48 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf960a7af9a0a2e14f22b99bdf374464ae406f18ee32cacbfdb8eac4bd05405`  
		Last Modified: Wed, 05 Sep 2018 01:43:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763025732983aaeaffa4afff6b2c97fb6feea7a5366aaf704208877c9facaa28`  
		Last Modified: Wed, 05 Sep 2018 01:44:01 GMT  
		Size: 85.2 MB (85205048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff008d84fc923d7e53abfac3dbaab40eddba862edd765c9586d7cf12aaedf32`  
		Last Modified: Thu, 13 Sep 2018 17:26:31 GMT  
		Size: 12.4 MB (12384186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d8d08fd6aaf5c700fdf9220ce8d09163106be50784e23150928cb9eada2648`  
		Last Modified: Thu, 13 Sep 2018 17:26:35 GMT  
		Size: 78.4 MB (78402894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bacf4af8b96d0f265f9d73d089d8c8a8a6d52e28e2afe88ade16b5616c9158`  
		Last Modified: Thu, 13 Sep 2018 17:26:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
