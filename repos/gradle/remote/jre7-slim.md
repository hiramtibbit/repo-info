## `gradle:jre7-slim`

```console
$ docker pull gradle@sha256:2d4bf9d4fc955f2efd1b0d5c8244437c7067183ecd8e89bc6a7bada760718e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `gradle:jre7-slim` - linux; amd64

```console
$ docker pull gradle@sha256:246f6a6fa4ab15ba88277585c1cfe1081a1e8fa3b05361d783c02caaabb3ab03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180521587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:236588fdda067aa74ed6ab4169f6634c6122c096722971e256e2a1878462041e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:33:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:33:58 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:33:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:33:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:37:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:37:09 GMT
ENV JAVA_VERSION=7u181
# Tue, 26 Jun 2018 23:37:09 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 26 Jun 2018 23:38:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 29 Jun 2018 22:26:09 GMT
CMD ["gradle"]
# Fri, 29 Jun 2018 22:26:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Jun 2018 22:26:09 GMT
ENV GRADLE_VERSION=4.8.1
# Fri, 29 Jun 2018 22:26:42 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 22:26:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Fri, 29 Jun 2018 22:26:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Jun 2018 22:26:48 GMT
USER [gradle]
# Fri, 29 Jun 2018 22:26:48 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Jun 2018 22:26:48 GMT
WORKDIR /home/gradle
# Fri, 29 Jun 2018 22:26:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b466fd40b39060e96cf1326c3764f3186bb062bb692cf9f130d477fdccf9aaf1`  
		Last Modified: Tue, 26 Jun 2018 23:57:03 GMT  
		Size: 463.7 KB (463741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d0ac1dcec173c9698e3586eb1889ea24d359fbd1f735863f5742072496ece6`  
		Last Modified: Tue, 26 Jun 2018 23:57:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711da6835f07d1b38e4677dafe89be66bb2a1de6dc07f652c470b58a22152ed`  
		Last Modified: Tue, 26 Jun 2018 23:57:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ad9a40fa41c09e5a8700cdd5a91bd8f2b80a8036f57db7cc357c09b15a37a2`  
		Last Modified: Tue, 26 Jun 2018 23:59:08 GMT  
		Size: 61.7 MB (61701012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13a7ca1b2423113bc560e54f1405cb30956b25156c79c0901365c30ca797f64`  
		Last Modified: Fri, 29 Jun 2018 22:36:29 GMT  
		Size: 12.4 MB (12360651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1df66363c6bc627bbbd3be3a79d9ce3edbb4295f3d4668d6b15ef6bb6f9c94`  
		Last Modified: Fri, 29 Jun 2018 22:36:39 GMT  
		Size: 75.9 MB (75875830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cebea1026f1dc9409e2ca8b1dc0fd6e43dfa35358541e827b0c25400e0acf0`  
		Last Modified: Fri, 29 Jun 2018 22:36:25 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre7-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:2f180b1887927987f22b6f1917de883a871ede8cafcdeedeb84e8cf863a4fe9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168426028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc77895aa6ef6630ff62b8ba115d21be09c0c5aeea46470a1f7133b4a19a68b`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 08:50:04 GMT
ADD file:f9c252e838b8db10a094c47436a079487e2fe317ebc0013a271810fe968cf999 in / 
# Wed, 27 Jun 2018 08:50:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:40:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:40:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:40:32 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:44:03 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:44:04 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 12:44:04 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 12:45:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Jul 2018 08:51:50 GMT
CMD ["gradle"]
# Sat, 14 Jul 2018 08:51:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 14 Jul 2018 08:51:51 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 14 Jul 2018 08:52:17 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Jul 2018 08:52:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 14 Jul 2018 08:52:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 14 Jul 2018 08:52:24 GMT
USER [gradle]
# Sat, 14 Jul 2018 08:52:24 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 14 Jul 2018 08:52:25 GMT
WORKDIR /home/gradle
# Sat, 14 Jul 2018 08:52:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:174cee00e71be1a79f61029d2ef1a01e0060cb74e2d18dc5aca18cbea3159528`  
		Last Modified: Wed, 27 Jun 2018 08:58:54 GMT  
		Size: 28.4 MB (28430287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a502f46feaf43e90f170639559ea3f575f855d4dbd5f942544851c62d5b04f7b`  
		Last Modified: Wed, 27 Jun 2018 12:59:20 GMT  
		Size: 456.4 KB (456446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9452e24aa94632019691517d67876e62050292ad552dd5960429943406beda`  
		Last Modified: Wed, 27 Jun 2018 12:59:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e84410dfaeb9b116e226930dbeee42f39ad8c9611864e13f5a0d592ad0f788`  
		Last Modified: Wed, 27 Jun 2018 12:59:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70114ba635c2d587b0cce6997d13092a296ee0e12cc783273483de8cf5b02bf`  
		Last Modified: Wed, 27 Jun 2018 13:01:10 GMT  
		Size: 51.5 MB (51496916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbec4ab970d6e879ea396411e9f4ebf5306de1b71fa3478970478eb55d5a57e`  
		Last Modified: Sat, 14 Jul 2018 08:55:48 GMT  
		Size: 12.2 MB (12165738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a27344c583b303504c65655df88c04d172828dc74dba1eea93bca6eb337140`  
		Last Modified: Sat, 14 Jul 2018 08:55:54 GMT  
		Size: 75.9 MB (75876028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8abbb5c904daf7ce35bc4b92edce375c3c5952d415006964e2062d26e31a61`  
		Last Modified: Sat, 14 Jul 2018 08:55:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre7-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:39bbf1ad3c14e35f9d73bd70199da811eceef3ae076d6e6f8eedf5b39bd66907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164982260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d412e7030f5c2d4e1e41f4285e4f8d9bac3be9320df667d4345bd0573a95247`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:36:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:36:20 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:36:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:36:27 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:39:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 15:39:33 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 15:39:33 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 15:40:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Jul 2018 12:09:09 GMT
CMD ["gradle"]
# Sat, 14 Jul 2018 12:09:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 14 Jul 2018 12:09:10 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 14 Jul 2018 12:09:37 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Jul 2018 12:09:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 14 Jul 2018 12:09:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 14 Jul 2018 12:09:45 GMT
USER [gradle]
# Sat, 14 Jul 2018 12:09:45 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 14 Jul 2018 12:09:45 GMT
WORKDIR /home/gradle
# Sat, 14 Jul 2018 12:09:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b343c93eb35a5e886b173446a6458741c5c87f902294f250126b23259952bdc`  
		Last Modified: Wed, 27 Jun 2018 15:44:08 GMT  
		Size: 432.3 KB (432310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a974d8d35792e7b59b655ba3b252d90fd0fb0d0eb7224804cfccbac6d3bd7c3`  
		Last Modified: Wed, 27 Jun 2018 15:44:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546f6bc13ab53f407541154b4a917687e37c720306ea9dabd0c676ab4bd81296`  
		Last Modified: Wed, 27 Jun 2018 15:44:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e23da653fcd20d8294c19ba5590f9a8245e790e3e408c38c0003e5a10ea2d9`  
		Last Modified: Wed, 27 Jun 2018 15:45:57 GMT  
		Size: 50.4 MB (50364703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f8c09c0b825576b24dbcb72f91f08fb702a94d2ef37c359c127febdd499504`  
		Last Modified: Sat, 14 Jul 2018 12:16:41 GMT  
		Size: 12.0 MB (12021836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b729de23d1eafec88768474158f12a95689ca4e3a6e5e13c74d3a3d51b5f3398`  
		Last Modified: Sat, 14 Jul 2018 12:16:46 GMT  
		Size: 75.9 MB (75875991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fee710ff13665d8c0a26d578ef76078b4259e1eb2582f90f740858f0d6f6738`  
		Last Modified: Sat, 14 Jul 2018 12:16:37 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre7-slim` - linux; 386

```console
$ docker pull gradle@sha256:29827f1c1ac8061f1fbf9913527bd37aa5c96b9a9abd588e47105aeddb35ec7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192395627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccea807c251a1a9f09d125f3ad6fb8cf7bd523a62f5cde87dc1e501b0f8da782`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:20:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:20:03 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:20:05 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:24:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 15:24:35 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 15:24:36 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 15:25:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 30 Jun 2018 10:44:11 GMT
CMD ["gradle"]
# Sat, 30 Jun 2018 10:44:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Jun 2018 10:44:11 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 30 Jun 2018 10:45:03 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 30 Jun 2018 10:45:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 30 Jun 2018 10:45:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Jun 2018 10:45:11 GMT
USER [gradle]
# Sat, 30 Jun 2018 10:45:11 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Jun 2018 10:45:11 GMT
WORKDIR /home/gradle
# Sat, 30 Jun 2018 10:45:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ecc1d61c7e4f9d92c42aa04c2c34df4a177075b5e03757cd2e9763398cdfeb`  
		Last Modified: Wed, 27 Jun 2018 15:34:05 GMT  
		Size: 466.3 KB (466301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c7e2782264f446bd837b4d66b7a139ab8eaa08fc2cd1b899df57f6d2209fcd`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104cf7f40f84e06d4be0be1bb678f84432eedb0d07eaab0f1e54bccfd21e2e40`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2821d86a80de17c528d3a7ff0248c524ab79da82e3af7c78d7f0d60305625f53`  
		Last Modified: Wed, 27 Jun 2018 15:37:22 GMT  
		Size: 73.3 MB (73288198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764fc25b24afb6e6ed1f789c21343f59a1586a231e0009f3085deb19d28bfdd`  
		Last Modified: Sat, 30 Jun 2018 10:49:34 GMT  
		Size: 12.5 MB (12495123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6461afce9bafbd2f0c064a961b90f513eb11ed79d975bb75c0fe588893fb8757`  
		Last Modified: Sat, 30 Jun 2018 10:49:41 GMT  
		Size: 75.9 MB (75875810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b1659f29464a1aecf1fa055511c85f743c42ef6b877f947787b0c957a4aaa9`  
		Last Modified: Sat, 30 Jun 2018 10:49:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
