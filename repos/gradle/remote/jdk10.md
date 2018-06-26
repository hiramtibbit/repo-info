## `gradle:jdk10`

```console
$ docker pull gradle@sha256:a8f20a373b0c346200a65163aa80e63b179fb13113b28f573710193e105d51d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jdk10` - linux; amd64

```console
$ docker pull gradle@sha256:75e41eaff25fc4409e3ab258338dc17dcf2ffdee7a868a1541dedf912cb81bc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.1 MB (459099848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c5f67dff65683e3a32e28691817ee6a02aa48df60b899c838fdc5ab6e02f63`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:11:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:37:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:37:07 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:37:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:41:05 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:41:05 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 18:41:06 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 06 Jun 2018 18:41:06 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 06 Jun 2018 18:41:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:41:58 GMT
CMD ["jshell"]
# Tue, 12 Jun 2018 02:28:42 GMT
CMD ["gradle"]
# Tue, 12 Jun 2018 02:28:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 25 Jun 2018 23:22:57 GMT
ENV GRADLE_VERSION=4.8.1
# Mon, 25 Jun 2018 23:22:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Mon, 25 Jun 2018 23:23:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 25 Jun 2018 23:23:02 GMT
USER [gradle]
# Mon, 25 Jun 2018 23:23:03 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 25 Jun 2018 23:23:03 GMT
WORKDIR /home/gradle
# Mon, 25 Jun 2018 23:23:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea75eac4dae2f20cbd6fa1d55bc23e09e128934c845cd07f16ce17d88bf39af5`  
		Last Modified: Tue, 05 Jun 2018 23:39:45 GMT  
		Size: 7.0 MB (7030508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c35a0f820b4b715ac0c1825dacb71e27c6e5bbbc9320b94c42a479cb1f55eb`  
		Last Modified: Tue, 05 Jun 2018 23:39:49 GMT  
		Size: 10.3 MB (10334570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e481985cd9dca6c878949c3145def08ffe2ba39481efa8dc57e2c0b89a0c59`  
		Last Modified: Tue, 05 Jun 2018 23:40:23 GMT  
		Size: 54.2 MB (54212985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c942941f5ce00ee2e081e13dd67ff5fed2948620fbc15b681b5300b463ebca7`  
		Last Modified: Wed, 06 Jun 2018 18:49:42 GMT  
		Size: 894.6 KB (894567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28271fcddffcd2ea90dab95cb35ad34560319bc7020318ea43c4d2eb967b7c3`  
		Last Modified: Wed, 06 Jun 2018 18:49:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae09137d16eb2f446014174e18af023b5133b533c925a607d026e62e1f8d6ce`  
		Last Modified: Wed, 06 Jun 2018 18:57:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3469457e729fe8b69d85043096815338213a0e5fde462f71b69bdb77b519fb59`  
		Last Modified: Wed, 06 Jun 2018 18:58:28 GMT  
		Size: 262.4 MB (262447656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9b784174c6bb766ea494f808b1632e8ea82cef2505f23a7f9dfd9c8a107858`  
		Last Modified: Mon, 25 Jun 2018 23:32:46 GMT  
		Size: 75.9 MB (75875822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690a4d48c7c740c916a0a7817ea61dce6f64bcb93010c8a8fd148e78da0920c3`  
		Last Modified: Mon, 25 Jun 2018 23:32:39 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; arm variant v5

```console
$ docker pull gradle@sha256:fab60c140232624865b5f90f0b90cc9bf51fafbcb2235456b8dcbba5421b0266
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.1 MB (423050747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0e626cea9f36ecea347ecdc38972fa8c3edbdec14683426da975345d071490`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:39 GMT
ADD file:289dd78ee91d70cba0d1bc2f296c3c14565c2fc5a7545ded07d727de72e2c7af in / 
# Sat, 28 Apr 2018 08:51:39 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:57:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:58:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:21:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:21:49 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:21:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:26:03 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:26:03 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:26:04 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 08:56:00 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 09:39:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:39:12 GMT
CMD ["jshell"]
# Wed, 20 Jun 2018 08:51:01 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 08:51:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 08:49:52 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 08:49:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 08:49:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 08:49:58 GMT
USER [gradle]
# Tue, 26 Jun 2018 08:49:58 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 08:49:59 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 08:50:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:e55988127988d265ae9a533cadc5ee50c9a724a2602f8677daa3d5ca1354a4c8`  
		Last Modified: Sat, 28 Apr 2018 08:59:59 GMT  
		Size: 46.3 MB (46298645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafc48823c28e5748b4391dec0c3ace05a68f5a65301bb16529fbf5cfdcf4ba2`  
		Last Modified: Sat, 05 May 2018 09:11:24 GMT  
		Size: 7.8 MB (7807554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5f6db056b1ea7d4547374cc334a044271698f505521bb613b98b4e9d62fff`  
		Last Modified: Sat, 05 May 2018 09:11:25 GMT  
		Size: 9.2 MB (9194241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4a548afcc00660ef6218b8d28d348b5de3b94fefc87bef82631c42056e8ee6`  
		Last Modified: Sat, 05 May 2018 09:11:57 GMT  
		Size: 50.2 MB (50176924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6ec5ea4e73a466f57a6b546a9cad55615bd6493881162d69fcfbb397d6b75a`  
		Last Modified: Sat, 05 May 2018 09:43:09 GMT  
		Size: 888.9 KB (888926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c28e493916dad869bef88266b645a09302349c9f0452455f2ef5ed2a9d423a4`  
		Last Modified: Sat, 05 May 2018 09:43:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37338fb29dd7da20721d69f3938756bbebee06803e38164d58c3b7a25736ed2`  
		Last Modified: Sat, 05 May 2018 09:49:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f25ed4b476f8f7ed7678913d34e1196a93c5ca318b9ebf7076f6684b993765a`  
		Last Modified: Tue, 15 May 2018 10:06:33 GMT  
		Size: 232.8 MB (232807981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954e3ee2591d99950058bc7d5adc9487a2eb16a9cdc0fab578d4335fdf90f258`  
		Last Modified: Tue, 26 Jun 2018 08:53:23 GMT  
		Size: 75.9 MB (75875874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dca859dcb0ec4ab6be752f13cd8e68838addac098790d1a6466fb8c82dbcc6`  
		Last Modified: Tue, 26 Jun 2018 08:53:13 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:52d32846e55d1ae9059767234c18d76725b77a871816b439cafa60e1680ade7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.3 MB (428280046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e2c9a8a6999fe1cdb0943dc06f26249366d599dbbe8e2ae5b7e44f462ec363`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 30 Apr 2018 23:27:31 GMT
ADD file:ebaa7f02c60ac8138d085ce979847d36a1a8ce243bcef9b7e81e3e667d060dcb in / 
# Mon, 30 Apr 2018 23:27:34 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:28:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:20:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:20:11 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 11:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 11:39:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 11:39:59 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 11:40:00 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 10:24:33 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 09:25:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:25:09 GMT
CMD ["jshell"]
# Wed, 20 Jun 2018 09:31:25 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 09:31:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 08:55:15 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 08:55:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 08:55:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 08:55:26 GMT
USER [gradle]
# Tue, 26 Jun 2018 08:55:27 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 08:55:29 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 08:55:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ed5c004c8effeb24e6eee983af18662b0d28341fbbd46983746399c6df3358c8`  
		Last Modified: Mon, 30 Apr 2018 23:47:36 GMT  
		Size: 45.6 MB (45610129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023415c45ba32335bb869e25328b3b2c70e3ad264f1129bb133addb1fbfef4a`  
		Last Modified: Sat, 05 May 2018 10:25:46 GMT  
		Size: 7.9 MB (7867437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793192206e4ab032f5152356b71ea402af9d6cfd3812ad4e29857c76a039af6`  
		Last Modified: Sat, 05 May 2018 10:25:45 GMT  
		Size: 9.2 MB (9190303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e033c04a8296917467f1a5f58f33424a0c62e7f1ad7bc521d1a04a30491463`  
		Last Modified: Sat, 05 May 2018 10:26:49 GMT  
		Size: 50.8 MB (50809602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8751d53eb40e199ecd3910be45e09c6c039df9cf93ff8d670dbeea5b482f73af`  
		Last Modified: Sat, 05 May 2018 12:42:04 GMT  
		Size: 881.3 KB (881341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1938d575c214b836cf8b48efd7a34cc415cc6910744792cbf930f8a0db1a557d`  
		Last Modified: Sat, 05 May 2018 12:42:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f233056ca4e8e4182f4e424772fe1bbb116f4a12222adeaaceec03a398d5f3b1`  
		Last Modified: Sat, 05 May 2018 12:51:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4fa745d17ac9138fc1e54a324706492b6c90e4e9dfcfed08c3f31c95eac537`  
		Last Modified: Tue, 15 May 2018 10:45:44 GMT  
		Size: 238.0 MB (238044801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2e80d049fe85c3b9fff222bfda1b007b4b5f67557895ee7f88d630283cb537`  
		Last Modified: Tue, 26 Jun 2018 09:05:19 GMT  
		Size: 75.9 MB (75875856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b1cf50448b5d3126b8bd9ff57086b5d3edbf7ae633600a0f8efec6a50ecbae`  
		Last Modified: Tue, 26 Jun 2018 09:05:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; 386

```console
$ docker pull gradle@sha256:058c0e8a013e462cede5e74597784b488ad066395008394ec0c48359f5f5aed9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.8 MB (468832352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f6dd9809a13f1770452f7ab8dd0ec5446791b8a3f901d5e628d60e3a499ef5`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:49 GMT
ADD file:cb21908d8f286f1381ea180209120314676afa1ce4d5d480e0310fe70a4c96d4 in / 
# Sat, 28 Apr 2018 10:40:49 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:38:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:17:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:17:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:17:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:22:12 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:22:12 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 13:22:12 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 06 Jun 2018 13:22:12 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 06 Jun 2018 13:24:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:24:17 GMT
CMD ["jshell"]
# Wed, 20 Jun 2018 11:12:00 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 11:12:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 10:46:34 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 10:46:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 10:46:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 10:46:42 GMT
USER [gradle]
# Tue, 26 Jun 2018 10:46:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 10:46:42 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 10:46:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:33fb16074d5de3f73c0e2941c01c03e5dc69cfb8f568b7fbc3e29926b575fef0`  
		Last Modified: Sat, 28 Apr 2018 10:47:25 GMT  
		Size: 49.1 MB (49090181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a686f4eb752c82ac41a17df9c6701b1f073f7a2d9e420555cd2a5cb0dcbbea8a`  
		Last Modified: Wed, 06 Jun 2018 12:14:55 GMT  
		Size: 7.2 MB (7182217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9c2ebf9e0747fb0a03a84261c3698af2618b3c2fb833bdee559337f846c39f`  
		Last Modified: Wed, 06 Jun 2018 12:14:53 GMT  
		Size: 10.7 MB (10657958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fde487e4c90bba22453b5178624bff1a2fa7bd6f0b83fb4d605b1f4198e932`  
		Last Modified: Wed, 06 Jun 2018 12:15:40 GMT  
		Size: 56.0 MB (55957246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc753c52779b4d5229b7f48908ad306e4cff4aff3c6b3cbb29cbd7de06a0c29`  
		Last Modified: Wed, 06 Jun 2018 13:39:40 GMT  
		Size: 902.9 KB (902867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779bb512bf82746866821a79e233f33fea211925f996d9fc3d7a48ef50841fd`  
		Last Modified: Wed, 06 Jun 2018 13:39:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bdab517a7dd05a6a815053bb8daa7d096e0fb4a15a5eab75c632ce4ccd17a6`  
		Last Modified: Wed, 06 Jun 2018 13:47:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda47556b65b7f444fe9f61737a8bd4346ab480681065ac35048b7545a6a89ef`  
		Last Modified: Wed, 06 Jun 2018 13:50:03 GMT  
		Size: 269.2 MB (269165533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e952ab693d7a218688dc1230de5c67e540c6944d4b057d90b56e31f283d63e2c`  
		Last Modified: Tue, 26 Jun 2018 11:07:17 GMT  
		Size: 75.9 MB (75875844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3ff183febecd80d395261a1b02e7403554788a7f12eddfa8863163cb1495eb`  
		Last Modified: Tue, 26 Jun 2018 11:07:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; ppc64le

```console
$ docker pull gradle@sha256:fa8b0748aa64e156a77f77855851f02056784575c245a2c7a8e1fbd4b51012c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.6 MB (445568535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03b6fec5cfda11b6465cf3da9cd2101ccb05d02258bab725fadc7c23f2a7199`
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
# Sat, 05 May 2018 14:16:26 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:16:27 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:16:27 GMT
ENV JAVA_VERSION=10.0.1+10
# Sat, 12 May 2018 09:57:57 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 08:36:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 08:36:07 GMT
CMD ["jshell"]
# Wed, 20 Jun 2018 08:22:57 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 08:22:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 08:26:25 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 08:26:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 08:26:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 08:26:39 GMT
USER [gradle]
# Tue, 26 Jun 2018 08:26:41 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 08:26:42 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 08:26:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
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
	-	`sha256:e2e1da8caedef517259a3bfdf3ff479246903cf0545881bdd3b51864acc1046c`  
		Last Modified: Sat, 05 May 2018 15:01:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aaa6cf73c488b469afb8ca16bdefb7af8d9e24a01e90818759de55dbbcb9688`  
		Last Modified: Tue, 15 May 2018 09:29:19 GMT  
		Size: 245.3 MB (245301307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5afbbc229da260c49735f6b82534656213f1ec1046400f308428230d93df6`  
		Last Modified: Tue, 26 Jun 2018 08:35:35 GMT  
		Size: 75.9 MB (75875874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440aabdee70f6c0a655a1a0f5c5b4ea7c4f4a431a662ef5b264766e70fed05f`  
		Last Modified: Tue, 26 Jun 2018 08:35:24 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; s390x

```console
$ docker pull gradle@sha256:1a70c85053e27280bdc59000a7118127e3c2453ef371bcdedb2efdef31e646aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.1 MB (414064683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91b7b84fb99a3c435cecd9ae4b7531f8d8d6e281a8b3aa0a14e15ca4ad6e9b4`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 11:43:52 GMT
ADD file:2ebc77cf35fadaf6ffd85f0d203bf60b217e15aa3c15737aac14f71008535107 in / 
# Sat, 28 Apr 2018 11:43:52 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:34:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:05:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:05:56 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:05:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:08:24 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:08:24 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:08:24 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 13:05:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 12:00:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 12:00:17 GMT
CMD ["jshell"]
# Wed, 20 Jun 2018 11:44:48 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 11:44:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 11:43:24 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 11:43:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 11:43:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 11:43:29 GMT
USER [gradle]
# Tue, 26 Jun 2018 11:43:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 11:43:29 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 11:43:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:893cc85742608c84d1d6314416656d650a83dae134d0d1e22a839b39a03cbf3e`  
		Last Modified: Sat, 28 Apr 2018 11:49:42 GMT  
		Size: 47.4 MB (47350246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6465ae4acbbbfe22cde44168d0262178f375ac945898fbe73420bec2cc2ccbe0`  
		Last Modified: Sat, 05 May 2018 12:46:57 GMT  
		Size: 8.1 MB (8124442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47a8c562fcb2d700f3403a2f6b5d1c62f5961afce859416ff6a03520adf95a5`  
		Last Modified: Sat, 05 May 2018 12:46:57 GMT  
		Size: 9.4 MB (9414344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481f2ac0d700bc88441da57f26f2253a495063e8fcf46706e8462f4b16292b84`  
		Last Modified: Sat, 05 May 2018 12:47:23 GMT  
		Size: 52.3 MB (52257848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755b496e7ed5d1a4f90f69efc1653169b1cf721f0fd65832ce1c7c1838017e19`  
		Last Modified: Sat, 05 May 2018 13:21:22 GMT  
		Size: 906.4 KB (906357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340cd0adda5f0114369ab22dee2566c26d88ac2264cba92eb697d1858f314b95`  
		Last Modified: Sat, 05 May 2018 13:21:22 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae3dee5b02480fe3a064cdf817b8111c5e6cd2bd97ed60fd277206e31ea2b4e`  
		Last Modified: Sat, 05 May 2018 13:21:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f1b98c041ce23391ce2c4badb32705c919e7f174f8450928b1207642e9f9c0`  
		Last Modified: Tue, 15 May 2018 12:28:11 GMT  
		Size: 220.1 MB (220135018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdbc8ca7baeeeb0f33b956135489ff2f137e95fc0a6a5bc7d94268f3cacbf65`  
		Last Modified: Tue, 26 Jun 2018 11:47:40 GMT  
		Size: 75.9 MB (75875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ef451c9263b992e60bb5bd7d67ca1fa32be2a29de31b8ba31b44eb4a268648`  
		Last Modified: Tue, 26 Jun 2018 11:47:34 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
