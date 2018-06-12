## `gradle:jre7`

```console
$ docker pull gradle@sha256:ffba90a18635995f831df582aedb2d8e2ff7a00872c9fc6e9d94f9b9f15dca98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

```console
$ docker pull gradle@sha256:1c314bc63989c63cce7785e7ef3987735e925ca2301178b5ff266c012200e07d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230799494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7568acbebf2413ef90663ecede6f3e1936e67db777e9a3039feb70fd7805b5d2`
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
# Wed, 06 Jun 2018 18:48:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:48:03 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:48:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:48:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:48:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 00:32:40 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 00:32:40 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 00:33:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 02:27:39 GMT
CMD ["gradle"]
# Tue, 12 Jun 2018 02:27:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 12 Jun 2018 02:27:40 GMT
ENV GRADLE_VERSION=4.8
# Tue, 12 Jun 2018 02:27:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
# Tue, 12 Jun 2018 02:27:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 12 Jun 2018 02:27:43 GMT
USER [gradle]
# Tue, 12 Jun 2018 02:27:44 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 12 Jun 2018 02:27:44 GMT
WORKDIR /home/gradle
# Tue, 12 Jun 2018 02:27:48 GMT
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
	-	`sha256:5ddbd23379289c18b84482ad4cd36dd37132ec2524e3ab15cb8e55e520d35694`  
		Last Modified: Wed, 06 Jun 2018 19:08:29 GMT  
		Size: 795.4 KB (795368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9362ba1f9a4f2d5e05b7070ee3e48fbec0bd1266ca08bd8e0ad185c808ecbe`  
		Last Modified: Wed, 06 Jun 2018 19:08:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaf25a6c03a762fb7b02c56530d212d94b7a9fb7576cbd52bd849b0f6bce1da`  
		Last Modified: Wed, 06 Jun 2018 19:08:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff401ba50bfd66cdca5b6fceeff8a0f49d1d022202d6ffac51164f4eea6ca431`  
		Last Modified: Tue, 12 Jun 2018 00:49:16 GMT  
		Size: 82.3 MB (82283141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242a5af6f11dcf79dd82f5234f0b1109f1ad207169171b453d8c6e66483540a7`  
		Last Modified: Tue, 12 Jun 2018 02:30:19 GMT  
		Size: 75.9 MB (75872977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c92f644a82d43ad098c0b0945d2d57b15aaee2f88125dc19937113db4a63e91`  
		Last Modified: Tue, 12 Jun 2018 02:30:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
