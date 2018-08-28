## `gradle:jdk7-slim`

```console
$ docker pull gradle@sha256:0240d259950e7855765244126c1ffbd70806bb82b75c2efbe5e99e1867b338c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v5

### `gradle:jdk7-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:37ee08381c55a681d230b54fd3f3bca96a5a19ff71afc66fb6ada0737a6821df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191649108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b5d0a28639294d79ff4cb7bdf247c4a3b3fa7caa590a02d610687d67e57560`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:50:57 GMT
ADD file:e303ac4cacd7ac2a0a69960e76235ca4a7305f8db9cfae9f97c5dafe0cb57c9c in / 
# Tue, 17 Jul 2018 08:50:59 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:21:22 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:21:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:21:23 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:21:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 09:21:24 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 09:21:24 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 09:23:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 13:09:24 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 13:09:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 28 Aug 2018 08:49:28 GMT
ENV GRADLE_VERSION=4.10
# Tue, 28 Aug 2018 08:50:02 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Aug 2018 08:50:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Tue, 28 Aug 2018 08:50:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 28 Aug 2018 08:50:14 GMT
USER [gradle]
# Tue, 28 Aug 2018 08:50:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 28 Aug 2018 08:50:15 GMT
WORKDIR /home/gradle
# Tue, 28 Aug 2018 08:50:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:669d043a9b2bd51eea9e767c0315e0ad02bd9f56f1ef5f6172fa53d78285ac5a`  
		Last Modified: Tue, 17 Jul 2018 09:03:26 GMT  
		Size: 28.4 MB (28430654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c284edd78c5a0cec0dabc2d10500872e2acfb829d77dd47be7bc8901de22b7`  
		Last Modified: Tue, 17 Jul 2018 09:34:38 GMT  
		Size: 456.5 KB (456467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb7a4e02c9453c20bf5f6c4b61f86382c39d0cc51055486accedc5bd8e136d2`  
		Last Modified: Tue, 17 Jul 2018 09:34:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b322e91969e8bed0ecb1c9ed5354b0e1c1c150f2fa66e6bc978dc26b66b1bdab`  
		Last Modified: Tue, 17 Jul 2018 09:34:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ac8347e393f334906f3ce508632ebe7400ba9c66d888e8f78bf056d37cee59`  
		Last Modified: Tue, 17 Jul 2018 09:34:53 GMT  
		Size: 72.2 MB (72181201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdab9dd7938feec0417799915e97a860cbb56e073b65294f379f9b5b70dc309`  
		Last Modified: Tue, 28 Aug 2018 08:56:44 GMT  
		Size: 12.2 MB (12191163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e12d0381dc6c329665305d704e4a7ce3a2492984c04f8664f456d03ab9d95b3`  
		Last Modified: Tue, 28 Aug 2018 08:56:52 GMT  
		Size: 78.4 MB (78389012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e47280119f4c34afbfc9d492b6a30e121b9b68e7b57d89ff2cc5a52eca0ffb`  
		Last Modified: Tue, 28 Aug 2018 08:56:40 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
