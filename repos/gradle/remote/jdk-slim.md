## `gradle:jdk-slim`

```console
$ docker pull gradle@sha256:bca874be25bcb234fdc2af7652199fff39de533b2ba7742f51abaf83ec6abff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; ppc64le

### `gradle:jdk-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:e2c44a190b3f94002b1d5f4e59a12652fcfece7ccdc54751624cd22c015a533c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160756423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f29b75a49951ac1a65c7f483bfd0f080dde9ca3446296942eb7430814c0d6ddc`
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
# Tue, 28 Aug 2018 08:27:00 GMT
ENV GRADLE_VERSION=4.10
# Tue, 28 Aug 2018 08:28:23 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Aug 2018 08:28:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Tue, 28 Aug 2018 08:28:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 28 Aug 2018 08:28:37 GMT
USER [gradle]
# Tue, 28 Aug 2018 08:28:39 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 28 Aug 2018 08:28:40 GMT
WORKDIR /home/gradle
# Tue, 28 Aug 2018 08:28:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
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
	-	`sha256:f224a4fd3321d5139ca6b550fa2465eefc89dd232d107ad39d7b714ed221e52a`  
		Last Modified: Tue, 28 Aug 2018 08:42:27 GMT  
		Size: 1.1 MB (1083858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f231a319cd654623d8ea74a48be639591fb67d7a04f1b3e93c96b9dffca28bb`  
		Last Modified: Tue, 28 Aug 2018 08:42:40 GMT  
		Size: 78.4 MB (78388676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ee087c4ec31aee6a69abd00e45d2a00767b8894c2cb7f3afc772bae9307f94`  
		Last Modified: Tue, 28 Aug 2018 08:42:27 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
