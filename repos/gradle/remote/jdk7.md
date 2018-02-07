## `gradle:jdk7`

```console
$ docker pull gradle@sha256:5f6a9f9946a81707afc884b7de0eaa01fe61068243ce38f924cc380c59d81937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:6013f5f199adf4c13d79e9f081d41182b56cfbc9673625f53881d85bdeb45c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.3 MB (317282097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b03e8a97494a6430ed5427091cd96462e19de25965b8a5c3faedc01e06d3e9a7`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:49:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:03:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:03:13 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:03:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:03:16 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:03:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:03:16 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 15:03:17 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 15:04:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 17:46:09 GMT
CMD ["gradle"]
# Tue, 12 Dec 2017 17:46:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 07 Feb 2018 22:03:40 GMT
ENV GRADLE_VERSION=4.5.1
# Wed, 07 Feb 2018 22:03:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e2ea0d8b96605b7c528768f646e0975bd9822f06df1f04a64fd279b1a17805e
# Wed, 07 Feb 2018 22:03:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e2ea0d8b96605b7c528768f646e0975bd9822f06df1f04a64fd279b1a17805e
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 07 Feb 2018 22:03:56 GMT
USER [gradle]
# Wed, 07 Feb 2018 22:03:56 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 07 Feb 2018 22:03:57 GMT
WORKDIR /home/gradle
# Wed, 07 Feb 2018 22:04:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e2ea0d8b96605b7c528768f646e0975bd9822f06df1f04a64fd279b1a17805e
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b313b08bab3b8bbcf0de4171a2a80a01e67fab094f272819b76a58705d21ab28`  
		Last Modified: Tue, 12 Dec 2017 08:01:02 GMT  
		Size: 43.3 MB (43253338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cc7f451a527dc5892b61c6ffa31c44df40c1492a08339358c011899af0e528`  
		Last Modified: Tue, 12 Dec 2017 15:46:53 GMT  
		Size: 828.7 KB (828699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb0332dfffd895bf40582440d05bab7d23ea0dde65e014096cfddad95dbd068`  
		Last Modified: Tue, 12 Dec 2017 15:46:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ee39fddbf814698aafab5993f3657becf3ca19e172d1485bc4e2a3177c27fb`  
		Last Modified: Tue, 12 Dec 2017 15:46:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d5249a272c1767328f7bc8bafb39b64ed7f65adb348a3d9da17d1064f9728`  
		Last Modified: Tue, 12 Dec 2017 15:47:20 GMT  
		Size: 128.9 MB (128924827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6d3d2847b02e6e47cdf915029ef184ca6b1d3f7c322a7a9696be0a82466fb3`  
		Last Modified: Wed, 07 Feb 2018 22:11:41 GMT  
		Size: 72.4 MB (72408817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c2810ea3d4ba6fc68d130f932a59bdd1d1b65cb1df2ba4d821076d484eae91`  
		Last Modified: Wed, 07 Feb 2018 22:11:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
