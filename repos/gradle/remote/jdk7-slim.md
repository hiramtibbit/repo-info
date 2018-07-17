## `gradle:jdk7-slim`

```console
$ docker pull gradle@sha256:6c1fd2d62c985b40235dd9056d14073286342ddabb0d94922b094015da9b48ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `gradle:jdk7-slim` - linux; amd64

```console
$ docker pull gradle@sha256:59e0c64fa07caebbcc3c8eb80f494c8fd21ed02f59e78d4fb58d621cfe5fdd4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204049065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1286d8f781469cb575d943c46811f1b2291c4ea0763623781ff0defd2a20d17c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:23:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:23:46 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:23:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:23:47 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:23:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:23:48 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:23:48 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:24:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:27:47 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:27:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 16:27:48 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 16:28:22 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:28:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 16:28:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 16:28:51 GMT
USER [gradle]
# Tue, 17 Jul 2018 16:28:51 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 16:28:51 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 16:28:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83aaae4a41047243bc7114b57d6abbf93493ca7760a12f1bcb11f7796e792a3f`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 463.7 KB (463742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77071b36c9a8bf79837590aee3dcf02df92603573b10a2f99b154d05a80ed68b`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44de20d9dd075cf58bc5c1696f04dd15b9aa035f0f8a86eda6ded43da087c3d1`  
		Last Modified: Tue, 17 Jul 2018 07:14:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d0778610e273b04cce9ce5904c7681be1e8b0a5eeae03f65419fbdf0f13dc2`  
		Last Modified: Tue, 17 Jul 2018 07:14:27 GMT  
		Size: 85.2 MB (85204729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53656efdc53afab1e1c7dfdc6fcc4666ccad7a0fcba7a9327c81c7e15a371910`  
		Last Modified: Tue, 17 Jul 2018 16:39:45 GMT  
		Size: 12.4 MB (12384115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c96830967bc8cd903503ff52a86ebbfb62eb4345f7d11979360c0e15f190f63`  
		Last Modified: Tue, 17 Jul 2018 16:39:50 GMT  
		Size: 75.9 MB (75875798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bc07bc6e1d455faf2da0b26a719f761e4e9640a16caf7a6ef9634ac99e881c`  
		Last Modified: Tue, 17 Jul 2018 16:39:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:07cc965723dcb649b49b4514ed1efa93a76cd0e6385de15cc8f386593afd359c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189136089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96325847cb1480173002a84bd7cfd05235e54011742bf304ef14017de3f5b1a`
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
# Tue, 17 Jul 2018 13:09:25 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 13:09:52 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:09:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 13:09:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 13:09:59 GMT
USER [gradle]
# Tue, 17 Jul 2018 13:10:00 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 13:10:00 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 13:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
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
	-	`sha256:6e5d4c421f3c6ae2a6d8f72626d18ef175d953884d1dfce93af25066a90f315b`  
		Last Modified: Tue, 17 Jul 2018 13:16:39 GMT  
		Size: 12.2 MB (12191136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126a6a285ab7e316d2a2552e98dcbac9f1fabebcbd09fba84450b54f8182f863`  
		Last Modified: Tue, 17 Jul 2018 13:16:44 GMT  
		Size: 75.9 MB (75876017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f8437a570e037a6703079f767d4377986daea9e8d4097ce78abe02a76f4cc`  
		Last Modified: Tue, 17 Jul 2018 13:16:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:a4da904a61cd0821cccc4b0993b4473206f94891f20a4b1ce5879c81b321091b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185152143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08674513473eb2543cb43dfe472034bf973ba942849ba413fa043e1389864040`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:49:25 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:49:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:49:27 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:49:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:49:28 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 12:49:28 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 12:51:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:46:06 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:46:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 16:46:07 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 16:46:35 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:46:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 16:46:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 16:46:51 GMT
USER [gradle]
# Tue, 17 Jul 2018 16:46:52 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 16:46:52 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 16:46:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b078f4f7755c20eeb56b303c14bc884b2d44e3e654c17e3bff0cb23722f88b4c`  
		Last Modified: Tue, 17 Jul 2018 13:03:55 GMT  
		Size: 432.3 KB (432315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c65fa31d20562a41d9fc300fedb1915412f1ab5dc29fa5317c356e879c6cb`  
		Last Modified: Tue, 17 Jul 2018 13:03:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f892c36d0a5a971da85854b94cb5ed3fb69996bb9c4ae0ca69995aefe2cd452d`  
		Last Modified: Tue, 17 Jul 2018 13:03:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85eefaa2df75c971371a206b4892c1d506dd2f68a133fb0620a89e12d2b3441`  
		Last Modified: Tue, 17 Jul 2018 13:04:06 GMT  
		Size: 70.5 MB (70509718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74c43d89d45058a2a058b42b2b92f5114f01bbfa4c56eb0f592099df24453bc`  
		Last Modified: Tue, 17 Jul 2018 16:52:50 GMT  
		Size: 12.0 MB (12046521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768a3f31b248ac0790c31c4e71c30f453398b26d7e27b6e6227d96054ce0c305`  
		Last Modified: Tue, 17 Jul 2018 16:52:56 GMT  
		Size: 75.9 MB (75876016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce77913ac3debb82aa74138c3094d632f52b53bf21c44e5e8d7533602e0e93d`  
		Last Modified: Tue, 17 Jul 2018 16:52:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-slim` - linux; 386

```console
$ docker pull gradle@sha256:0955e870be967740ea4e0e433e373909aa736889753d761d6633281c68795a78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216258421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32820b627672f5d142b00cf1f44e9be22dc0ea377852fde79b781f3be0163ce1`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:30:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:31:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 11:31:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 11:31:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 11:31:03 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 11:31:03 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 11:33:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 19:18:31 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 19:18:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 19:18:31 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 17 Jul 2018 19:19:24 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:19:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 17 Jul 2018 19:19:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 19:19:45 GMT
USER [gradle]
# Tue, 17 Jul 2018 19:19:45 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 19:19:46 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 19:19:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27765bec26e1d6c46befeb564ef6ee5f2122d7a68fa415dbd856cb9a7c6df4a`  
		Last Modified: Tue, 17 Jul 2018 12:04:09 GMT  
		Size: 466.3 KB (466284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4434c09ccf5267ea7a53104b29f03ec003ab6f5fc1efac068dcc8be6abe11`  
		Last Modified: Tue, 17 Jul 2018 12:04:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d716a5df985be1ad2420509b15a3773caf63ec7c569984010094855099c2943`  
		Last Modified: Tue, 17 Jul 2018 12:04:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d29f0745eec323feb7467c02b8f64166ea19cd7cf1817e338a111ff9fd69282`  
		Last Modified: Tue, 17 Jul 2018 12:04:34 GMT  
		Size: 97.1 MB (97125926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f98e4343ca453f651a857fb8254ba3de153f0aa8c37aef72a8c235f212239bc`  
		Last Modified: Tue, 17 Jul 2018 19:31:11 GMT  
		Size: 12.5 MB (12519973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f7e202a5b41acf80497cd840e9fd4e16317e53700b3b3f722f3d282a5a24e3`  
		Last Modified: Tue, 17 Jul 2018 19:31:16 GMT  
		Size: 75.9 MB (75875712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222e411aa4600552e88d27131afdcd11d62a74d4eba625ba2a1731ba50789618`  
		Last Modified: Tue, 17 Jul 2018 19:31:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
