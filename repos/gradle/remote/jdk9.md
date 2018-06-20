## `gradle:jdk9`

```console
$ docker pull gradle@sha256:53aeaf70c467f609e674b73be9a5612f3157432a18d41159a24e14fee9a3f6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:7bc21a40d974544f3904292fde0e67dcd4b735b96e9c60ed79953638c8201147
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.2 MB (458178509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16eb267571c296dc3aa747d28167beb7926aeb4e8dd18c2eb8835d1f0f6a046b`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Sat, 05 May 2018 04:59:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 04:59:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 04:59:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:02:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:02:05 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 08:02:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 08:06:41 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 08:06:41 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 08:06:41 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 08:06:42 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Mon, 14 May 2018 22:40:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 14 May 2018 22:40:57 GMT
CMD ["jshell"]
# Wed, 06 Jun 2018 03:40:10 GMT
CMD ["gradle"]
# Wed, 06 Jun 2018 03:40:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 06 Jun 2018 03:40:11 GMT
ENV GRADLE_VERSION=4.8
# Wed, 06 Jun 2018 03:40:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
# Wed, 06 Jun 2018 03:40:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 06 Jun 2018 03:40:21 GMT
USER [gradle]
# Wed, 06 Jun 2018 03:40:21 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 06 Jun 2018 03:40:21 GMT
WORKDIR /home/gradle
# Wed, 06 Jun 2018 03:40:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af7c2bd543ba42600867217cd2f676eae7c4c38a8ba8a3cf8edce489534cfe`  
		Last Modified: Sat, 05 May 2018 05:02:11 GMT  
		Size: 8.6 MB (8642335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5286ee17a380311ffd9b7f82c5c957c59358a2103c0a1cc96c0be7eb91528f`  
		Last Modified: Sat, 05 May 2018 05:02:10 GMT  
		Size: 9.5 MB (9459894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd74685af848607530bf0bc1fe535821eb561e9a1d236afd06334c83ef5ba4d`  
		Last Modified: Sat, 05 May 2018 05:02:34 GMT  
		Size: 52.7 MB (52677473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f971e46f30b94b08d5a7313db7baa5633f2332093f2bda04cd223ba062300a6`  
		Last Modified: Sat, 05 May 2018 08:09:46 GMT  
		Size: 895.7 KB (895658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef6c2ba70cafaa6461da912c989a1ea157a75f99c02e2cc5ca1da580b63c016`  
		Last Modified: Sat, 05 May 2018 08:09:46 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d6caaade028cc319cf2bca215d2c998c4578b48e3d0b434182929e66ab6ff9`  
		Last Modified: Sat, 05 May 2018 08:16:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82654790da96cbdcd442fc0c5548e6419926657c2647105be57f81309482d27f`  
		Last Modified: Mon, 14 May 2018 23:13:56 GMT  
		Size: 262.3 MB (262326345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a650a70ee5697eb1641b5068ffecd75e433c148cdd5142f69fce3e1b8d8db69`  
		Last Modified: Wed, 06 Jun 2018 03:47:26 GMT  
		Size: 75.9 MB (75873063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c13ef2d17e3a1b1f3f8a13521dbcc7f545d9f5d87c5452705914fff75544f5`  
		Last Modified: Wed, 06 Jun 2018 03:47:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk9` - linux; ppc64le

```console
$ docker pull gradle@sha256:ad660a18e668a20c4bf54028a368c0ccd2c6f9a9809da2da658c7a88c623b3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.6 MB (446587361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b47a1d05f0693f618d9b49edb49ffde8db0da783fac2d821d6ac8ed296cfd7`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:13 GMT
ADD file:320268259acdc4e2a105be735ea4ee0cb1398bb05ce729d46f4a54fa3c3c84e3 in / 
# Sat, 28 Apr 2018 08:19:15 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:21:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:48:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:48:57 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:49:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:23:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:23:41 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:23:42 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 14:23:43 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 08:50:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 08:50:22 GMT
CMD ["jshell"]
# Wed, 20 Jun 2018 08:21:42 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 08:21:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 20 Jun 2018 08:21:45 GMT
ENV GRADLE_VERSION=4.8
# Wed, 20 Jun 2018 08:21:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
# Wed, 20 Jun 2018 08:21:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 20 Jun 2018 08:21:57 GMT
USER [gradle]
# Wed, 20 Jun 2018 08:21:58 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 20 Jun 2018 08:21:59 GMT
WORKDIR /home/gradle
# Wed, 20 Jun 2018 08:22:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:354f055c313d4d07201e01fd4de9af4aca89e3df17572870e56c5b8945e48443`  
		Last Modified: Sat, 28 Apr 2018 08:27:42 GMT  
		Size: 49.8 MB (49754912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77e4d2b61d28a226758713bae6bf933182cc9aa5eea6834696ef5865b36a2d2`  
		Last Modified: Sat, 05 May 2018 10:56:29 GMT  
		Size: 8.3 MB (8252158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38bf91c1472a5fafe06a2f5ba7ea5bf20d82e4c77308ccb3bb26c3068d95c5`  
		Last Modified: Sat, 05 May 2018 10:56:40 GMT  
		Size: 9.7 MB (9711623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a774996e1e41e16b05c537334faa52f62da8dc20585016b4be6783eecbfa27`  
		Last Modified: Sat, 05 May 2018 10:57:37 GMT  
		Size: 55.8 MB (55781554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73d6946d81354ab550331ff9f689d3cf70de0f32d141b34ea750d442597d8e1`  
		Last Modified: Sat, 05 May 2018 14:53:16 GMT  
		Size: 890.5 KB (890501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fec613ebf835d7057b5111fe9afdbbb25415edc834a99e8b38022dd88922555`  
		Last Modified: Sat, 05 May 2018 14:53:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ab1943e9a0ba77f36bb614452ff5adeb20afc8d1205c29843c1108aa428969`  
		Last Modified: Sat, 05 May 2018 15:06:41 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e336e74e3f56d8609c8666316334e387e209116837c309f24d65d7229e6c9f`  
		Last Modified: Tue, 15 May 2018 09:37:24 GMT  
		Size: 246.3 MB (246323049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5821ad7ae135e9074964b19d6fbf09c7c6ec53db7629c0df6f84d57e5bc0ed79`  
		Last Modified: Wed, 20 Jun 2018 08:31:23 GMT  
		Size: 75.9 MB (75872957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea33193e72d6ec34d10c9714e12c81cc24711e3e38e7f0d07fddbae07767c587`  
		Last Modified: Wed, 20 Jun 2018 08:31:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
