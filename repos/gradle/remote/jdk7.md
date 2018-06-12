## `gradle:jdk7`

```console
$ docker pull gradle@sha256:e4e041d4ab6d279294958891934852f42565095308d6d5b58833739ca3dd1178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:7422e361b63847ecf6ec993253a118b90aa1ab6c85a7d7eeff6497591ee29ddb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290448549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adec6a6828fe3e852844445261817d6475ed3460ffdd3f57ad2fb5b70b88ace8`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:07:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:07:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:46:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:46:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:46:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:46:11 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:46:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 00:30:18 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 00:30:18 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 00:31:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 02:27:22 GMT
CMD ["gradle"]
# Tue, 12 Jun 2018 02:27:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 12 Jun 2018 02:27:23 GMT
ENV GRADLE_VERSION=4.8
# Tue, 12 Jun 2018 02:27:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
# Tue, 12 Jun 2018 02:27:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 12 Jun 2018 02:27:27 GMT
USER [gradle]
# Tue, 12 Jun 2018 02:27:27 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 12 Jun 2018 02:27:27 GMT
WORKDIR /home/gradle
# Tue, 12 Jun 2018 02:27:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2f329349632fac6046432536420d15d630b68e7c536dcb28714fadb45a8a14`  
		Last Modified: Tue, 05 Jun 2018 23:37:57 GMT  
		Size: 17.6 MB (17584925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5cf711b890ca3e9df1635796c969d71320570f97bdd8d1a9e857f85ec6f33c`  
		Last Modified: Tue, 05 Jun 2018 23:38:32 GMT  
		Size: 43.6 MB (43598035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da702cca78d7144485cc7f3da8fc273ea9eafd8eabe12e0fd9bf18213d1aff1`  
		Last Modified: Wed, 06 Jun 2018 19:06:55 GMT  
		Size: 828.7 KB (828708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ded859bf77e04fd5cf1799896c5ab89e9c156ce1c02b283c45f16772acc1b45`  
		Last Modified: Wed, 06 Jun 2018 19:06:54 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21185eb1c0c81e7d3f1093a447c63e71e6d4e50f367228433f24df0321cac443`  
		Last Modified: Wed, 06 Jun 2018 19:06:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0ffaba11b5d90e96f348977e610df41ac238105f0424010606c42acb5933b0`  
		Last Modified: Tue, 12 Jun 2018 00:46:06 GMT  
		Size: 98.3 MB (98300753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03996436e412640fad91a2466e00281bd99584f5aa2509601a01885e4d21eca6`  
		Last Modified: Tue, 12 Jun 2018 02:29:37 GMT  
		Size: 75.9 MB (75873044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:539a8518af206427d4f1d7cbf1cc8a9d22f1d40f9674d0465f2214dae49b87fe`  
		Last Modified: Tue, 12 Jun 2018 02:29:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
