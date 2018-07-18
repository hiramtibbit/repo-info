## `gradle:jdk7`

```console
$ docker pull gradle@sha256:7c894853a54d4dce2568f716bf46dd8e7bd39bccac223e0b9a66a42fd3f20b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `gradle:jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:958792c87946812a06f0520196d16ee3c8669a8a51f6f96dc3c5aaafa0523f42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290045715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e743c5c8905cbdaf195e8ab941b8960dfd0fd4c22d43a46e2779266b722bb71`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:06:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:21:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:21:31 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:21:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:21:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:21:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:21:33 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:21:34 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:22:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:26:02 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:26:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 23:19:38 GMT
ENV GRADLE_VERSION=4.9
# Tue, 17 Jul 2018 23:19:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Tue, 17 Jul 2018 23:19:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 23:19:44 GMT
USER [gradle]
# Tue, 17 Jul 2018 23:19:45 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 23:19:45 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 23:19:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebaeb0745895220f609d4aa703e4563c39de239a2d00b85bece23a3ca3ac735`  
		Last Modified: Tue, 17 Jul 2018 03:48:27 GMT  
		Size: 43.3 MB (43297880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba483765e5a5940bdbe52f7a5b5e591842365f723606f5121ba1f900b42efa13`  
		Last Modified: Tue, 17 Jul 2018 07:10:16 GMT  
		Size: 828.2 KB (828239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fdf2277bd55505d828f7765ec2f4e8f24183129636afeaa5b3389d7008ae99`  
		Last Modified: Tue, 17 Jul 2018 07:10:16 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a778f99270e0adcb63e2696dcc5cda72de4c88878d0765c9d5232fc1aeece07e`  
		Last Modified: Tue, 17 Jul 2018 07:10:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0884f4286e6c07cd530102e34f90e200e8a496296e8b11453cc1af93432b4dfb`  
		Last Modified: Tue, 17 Jul 2018 07:10:38 GMT  
		Size: 97.8 MB (97805729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd60058c5af6e37945e8ca466a409233dd527ca6223a436519578b6fd970f51`  
		Last Modified: Tue, 17 Jul 2018 23:34:45 GMT  
		Size: 76.3 MB (76323150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e563f1fa0cb54b1efc913bd35b2b8290c79f6845ee6f133a1b8a887af8ad86`  
		Last Modified: Tue, 17 Jul 2018 23:34:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:86a7c3ed9ab16554aa0f64b35f63cf1a3af75a13e5bc58643776d16be2950dec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273371876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd45f75a5f7ec9f5f9323043eb56f1dcd336eb6503c23526681b105f2fe7da40`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:30:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:30:52 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:30:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:30:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:31:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 09:14:33 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:14:33 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:21:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 20 Jun 2018 09:26:18 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 09:26:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Jul 2018 07:21:31 GMT
ENV GRADLE_VERSION=4.9
# Wed, 18 Jul 2018 07:21:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 18 Jul 2018 07:21:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 18 Jul 2018 07:21:57 GMT
USER [gradle]
# Wed, 18 Jul 2018 07:22:00 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Jul 2018 07:22:02 GMT
WORKDIR /home/gradle
# Wed, 18 Jul 2018 07:22:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a9e408db2031cacf4541c01e9c992c2cdfd06fd26ad42c508faa3b0a71aae4`  
		Last Modified: Sat, 05 May 2018 09:44:04 GMT  
		Size: 41.0 MB (41017251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0aef3aa00d6f5d9a0a4fd9a9df66b7ae66fb7dbf3e05a0f94cc4e77fbd4e4d8`  
		Last Modified: Sat, 05 May 2018 13:10:11 GMT  
		Size: 823.5 KB (823452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d393ba719b098e0559f24a57503eeafdf70771d57a7f4ba2516543a72f7d989`  
		Last Modified: Sat, 05 May 2018 13:10:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0576deba4b8555fe094940d78f65f3bd55827e47963729a6252cdc79a4a7aa9`  
		Last Modified: Sat, 05 May 2018 13:10:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0509ee2655e1c66859e0b429d53c79f7578238c98832a3df5c074cc7c78bba6d`  
		Last Modified: Tue, 12 Jun 2018 09:46:22 GMT  
		Size: 86.5 MB (86546734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dee8b8253b8064e5c61977a6aea987e0584beec3f5e0aae48ef768d8a9c70f`  
		Last Modified: Wed, 18 Jul 2018 07:40:49 GMT  
		Size: 76.3 MB (76323159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60357d033be3202c741daa201a091f1ce7dc1c1c9d088f3c3cf9dd9b672a31f`  
		Last Modified: Wed, 18 Jul 2018 07:40:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7` - linux; 386

```console
$ docker pull gradle@sha256:65568b97155e62f61e013c6843936940891bd6fe2ae437b97eac9a68a4f26274
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.0 MB (302955089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5970842e9d3049faf2353bac18612dc8ccf9fcd8ead6aea3367f9b3add7ff049`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:25:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:27:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:19:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:19:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:19:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:19:48 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:19:49 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 18:19:49 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 18:19:49 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 18:21:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 19:17:32 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 19:17:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Jul 2018 00:43:38 GMT
ENV GRADLE_VERSION=4.9
# Wed, 18 Jul 2018 00:43:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 18 Jul 2018 00:43:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 18 Jul 2018 00:43:47 GMT
USER [gradle]
# Wed, 18 Jul 2018 00:43:48 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Jul 2018 00:43:48 GMT
WORKDIR /home/gradle
# Wed, 18 Jul 2018 00:43:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61274d86633cfcbd74890e3b94b540ad3cdbcb6a769aa68579f642fd13a32eb1`  
		Last Modified: Tue, 17 Jul 2018 15:08:53 GMT  
		Size: 19.8 MB (19832967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501abb8e70591a1130105f440ab6d42bf38283ba8d4078896dde609700fdc926`  
		Last Modified: Tue, 17 Jul 2018 15:09:43 GMT  
		Size: 43.9 MB (43946227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd7d3a7fde4bedc376cfd040cacc16522fef3c6bb2de05c699aaff08c8a45b1`  
		Last Modified: Tue, 17 Jul 2018 18:52:36 GMT  
		Size: 831.2 KB (831227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42e3f5b5b15c6fb390c5281e4e9db8e38dc2690adf412d29b4a476b158c3b04`  
		Last Modified: Tue, 17 Jul 2018 18:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b992a14ff16e701e8114edf8930479346b8c7d3cb56e29df04cf5eebc0c023`  
		Last Modified: Tue, 17 Jul 2018 18:52:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba9185d748505f5b1e48eab95bc8b334dbe8faa49224203ed07827c4f98ad15`  
		Last Modified: Tue, 17 Jul 2018 18:53:06 GMT  
		Size: 107.5 MB (107537737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dba6de6e2f6a1f3a683cc9322c4598e4b5cf40f0d534955483a49f8c6d2fcbc`  
		Last Modified: Wed, 18 Jul 2018 00:59:34 GMT  
		Size: 76.3 MB (76323146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39cf4af6735986aef523d687b9651f9aeb7789b9b5cd3c1026d75c71ccdf848`  
		Last Modified: Wed, 18 Jul 2018 00:59:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7` - linux; ppc64le

```console
$ docker pull gradle@sha256:c12a3db836e47c07cdbb8da65c7dae34c0e6bdb8f37c04196137b3f0efe47ab0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278505582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4983ed158cb7dbe200434d8e688046b9cfc81e2ac59eaee988e1fd89f76569`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:58:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:02:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:45:35 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:45:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:45:38 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:45:39 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 08:44:14 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 08:44:17 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 08:48:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 20 Jun 2018 08:17:08 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 08:17:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Jul 2018 00:50:02 GMT
ENV GRADLE_VERSION=4.9
# Wed, 18 Jul 2018 00:50:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 18 Jul 2018 00:50:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 18 Jul 2018 00:50:14 GMT
USER [gradle]
# Wed, 18 Jul 2018 00:50:15 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Jul 2018 00:50:17 GMT
WORKDIR /home/gradle
# Wed, 18 Jul 2018 00:50:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4330bc6a5e0bcfbe95c4a5b5982f6866f41b6cdc2d95042061dac233ebb605c`  
		Last Modified: Sat, 05 May 2018 10:53:05 GMT  
		Size: 17.6 MB (17586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b80419adae67f8e9f1a9fee9a620fdcbdff5713ef2d259c091aaca6ae14914`  
		Last Modified: Sat, 05 May 2018 10:53:52 GMT  
		Size: 42.8 MB (42759764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f70ff6ff6c5b1a5ea4fc0a6061e960596b9ac2cdb288ccb8ac1b8ef9d77bc3`  
		Last Modified: Sat, 05 May 2018 15:18:51 GMT  
		Size: 824.0 KB (824035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278742896236d7b4da4ee75ff4516dd95d023f210ea3a5b2ec7eb5dddcd85b81`  
		Last Modified: Sat, 05 May 2018 15:18:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194c9f92e61a0cd8e159b89318830d32498cd5f37cd3f06bbe09fa20261b6e66`  
		Last Modified: Sat, 05 May 2018 15:18:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f465bc4a857df3ae52cce951671aeea82d3106c9ff14b53bebbca4958dc9d2db`  
		Last Modified: Tue, 12 Jun 2018 09:12:54 GMT  
		Size: 87.6 MB (87618354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafbdcb20e413433b06ae41aed68a0617a6ca46ee871270325a8166f672ca4d6`  
		Last Modified: Wed, 18 Jul 2018 01:06:16 GMT  
		Size: 76.3 MB (76323007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65de982c4aa98f172177a964997cde73bee47c642e802be71422452caaf0aca`  
		Last Modified: Wed, 18 Jul 2018 01:06:03 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
