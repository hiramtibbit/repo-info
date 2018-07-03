## `gradle:jdk10-slim`

```console
$ docker pull gradle@sha256:a3573bfbdd6b549f7373ba6f84e3ee194bb8ba808d33fd1e030881f5d4502478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jdk10-slim` - linux; amd64

```console
$ docker pull gradle@sha256:037bdec3e6bc92c55ee304e0202c498e18bb0e52168d0c2220b0c77196c0ec7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259353997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d62bb9c9bb0c592830017c66ef77392de36765e5943fd8f72fb0b1fc6e38e7`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:47 GMT
ADD file:f6f1518ff68043ed3ca8bae9ce07dcc969ae13bbdbfa6de70c869a9082f53e3c in / 
# Tue, 26 Jun 2018 21:23:47 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:19:36 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:19:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 03 Jul 2018 01:00:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 01:00:43 GMT
CMD ["jshell"]
# Tue, 03 Jul 2018 01:26:06 GMT
CMD ["gradle"]
# Tue, 03 Jul 2018 01:26:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Jul 2018 01:26:06 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 03 Jul 2018 01:26:15 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 03 Jul 2018 01:26:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 03 Jul 2018 01:26:30 GMT
USER [gradle]
# Tue, 03 Jul 2018 01:26:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Jul 2018 01:26:30 GMT
WORKDIR /home/gradle
# Tue, 03 Jul 2018 01:26:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:469c03946d59bad3e2f921c73851b892468df0e7358d603dc6cf4cf3754df71d`  
		Last Modified: Tue, 26 Jun 2018 21:34:51 GMT  
		Size: 26.1 MB (26124512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071a53fca24b6a916b853d0e5fc165853317f150c46e8cb23f78f07cbd910cd`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 460.1 KB (460064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abfd2a20a1c0b8700b067a71251d414d178315c2de46c9f6d0c0a85d105c810`  
		Last Modified: Tue, 26 Jun 2018 23:42:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8f3a2da32f1fc8ee5d2a6df817b518c352401ee994eea942cf004321390480`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15472f21d1945d8d6caf242f4936d8f22d5a533e8cd1cc45a000c9377c92e4bb`  
		Last Modified: Tue, 03 Jul 2018 01:10:11 GMT  
		Size: 156.3 MB (156311350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13d135fd75cc8e5ead85d6ff3ddb4690b7851b9b76948bf7c03d6e93c66fff3`  
		Last Modified: Tue, 03 Jul 2018 01:29:13 GMT  
		Size: 582.0 KB (581987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5295920784acbff638639541d8693cf69844ae4cd801d95cd7561b0940f089a2`  
		Last Modified: Tue, 03 Jul 2018 01:29:22 GMT  
		Size: 75.9 MB (75875579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d3bc2fe51cadd71d2a4ec80598fa105a2e2c4338bc063fa13dcba18f9c2530`  
		Last Modified: Tue, 03 Jul 2018 01:29:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:458653488da5d8734e6b067a8df4e59c4674a590de4a712f0c9417e31ef4c836
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.1 MB (312113392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a126e7d836babd2d75462f6f740b7269dc16a61404eb93475b3643d088761e`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 08:45:15 GMT
ADD file:43ec4f040b626f1ded3ce1a923597ce0c4c7f95f69f95f086a3847e8aeb74bd3 in / 
# Wed, 27 Jun 2018 08:45:17 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:20:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 10:20:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 10:22:39 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 10:22:40 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 10:22:41 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 10:22:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 10:33:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 10:33:06 GMT
CMD ["jshell"]
# Sat, 30 Jun 2018 08:52:07 GMT
CMD ["gradle"]
# Sat, 30 Jun 2018 08:52:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Jun 2018 08:52:08 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 30 Jun 2018 08:52:26 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 30 Jun 2018 08:52:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 30 Jun 2018 08:52:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Jun 2018 08:52:38 GMT
USER [gradle]
# Sat, 30 Jun 2018 08:52:38 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Jun 2018 08:52:39 GMT
WORKDIR /home/gradle
# Sat, 30 Jun 2018 08:52:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6a0581b8511ac26263e1c081abe6382d7ce4481f47612f79a5460165410d1da7`  
		Last Modified: Wed, 27 Jun 2018 08:55:56 GMT  
		Size: 23.5 MB (23467711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a41f0f7beab1d044e8af784988f7edba4c2864fc3c3a8895b4a9923cf8688a`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 445.0 KB (444977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a408113d860847fc397e2efe7e9e5b70c792848f6cdd53715333f04f14d5151c`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360f23b6c1f5ff2fd50f4c1624b12135cad6b44e5fcad2ca644809184db95729`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8732448b852cef14a166a9d0cdee3e8b2ad2148472ee3629c0e12ec54c250af`  
		Last Modified: Wed, 27 Jun 2018 10:45:44 GMT  
		Size: 211.7 MB (211654187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45826116a0d5c49700fd93e45360617049a805d1a2875abd5fb21c22d74ed01e`  
		Last Modified: Sat, 30 Jun 2018 08:58:16 GMT  
		Size: 670.1 KB (670083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de71a09fae1bc5ab61bb8e8f903249aba33d8596ca5767bd1ab1cd2e2e976947`  
		Last Modified: Sat, 30 Jun 2018 08:58:27 GMT  
		Size: 75.9 MB (75875858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e49fab310983148456ab0d5b9a1bde32c19865aed95357ffd30ae41f8520146`  
		Last Modified: Sat, 30 Jun 2018 08:58:16 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; 386

```console
$ docker pull gradle@sha256:2f681e5ae90f09909ff33a2b993425c009c2e395677690507eb92be0b16255a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.9 MB (346907085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6769e6ab49cdd518ee96ec33bf5919915ba59c45c4e4196b44889aa893bdb02f`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:59 GMT
ADD file:9e204bd06575325653d9ca924ded453fa1a0f9eb3fe6d0fb8390160b39768da9 in / 
# Sat, 28 Apr 2018 10:40:59 GMT
CMD ["bash"]
# Thu, 31 May 2018 05:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 05:46:06 GMT
ENV LANG=C.UTF-8
# Thu, 31 May 2018 05:46:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 May 2018 05:51:57 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 31 May 2018 05:51:57 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 05:51:57 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 31 May 2018 05:51:57 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Thu, 31 May 2018 05:55:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 05:55:34 GMT
CMD ["jshell"]
# Sat, 30 Jun 2018 10:47:00 GMT
CMD ["gradle"]
# Sat, 30 Jun 2018 10:47:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Jun 2018 10:47:01 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 30 Jun 2018 10:47:11 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 30 Jun 2018 10:47:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 30 Jun 2018 10:47:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Jun 2018 10:47:16 GMT
USER [gradle]
# Sat, 30 Jun 2018 10:47:17 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Jun 2018 10:47:17 GMT
WORKDIR /home/gradle
# Sat, 30 Jun 2018 10:47:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b0b251c3fa17d0cdbdd0cb21b207843e9e733533c09d41956b9606a7c6aaf613`  
		Last Modified: Sat, 28 Apr 2018 10:47:45 GMT  
		Size: 26.7 MB (26687092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5bd07609d18b01a4468533d1ef2f44d73ce4a39eb21ca52f111fe56eaf4e07`  
		Last Modified: Thu, 31 May 2018 06:18:02 GMT  
		Size: 469.1 KB (469106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2eb62cc483e44adba330b0e961bb185427b884355d6c1d64fe31215e6f821e`  
		Last Modified: Thu, 31 May 2018 06:18:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464436664fa0c29b4e563b87a2001886395f72193f149f8e0684e0404d65b0e4`  
		Last Modified: Thu, 31 May 2018 06:26:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d09b1d5b8f2a9f976c257dda68c2dace3e175ab6140d48460531b41f069954`  
		Last Modified: Thu, 31 May 2018 06:30:54 GMT  
		Size: 243.2 MB (243166999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8242591002e23f125cbd0b7fac72d55fa7fe9da4aaf6886b73ac32d124bb0c8`  
		Last Modified: Sat, 30 Jun 2018 10:53:22 GMT  
		Size: 707.5 KB (707522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee743789bc9d17aa1fb8fa5f30b11e2352e1a5d7221589e638c7614fdf1f461`  
		Last Modified: Sat, 30 Jun 2018 10:53:30 GMT  
		Size: 75.9 MB (75875857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb821871d8e808addb801a03106408b2453dc20806eaaca0c296545764eab2a`  
		Last Modified: Sat, 30 Jun 2018 10:53:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:64aa82fb817dcb57818e5a08fe25194a260e49339e7f865150aff64591711ecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244087014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e5ec1170a28e095c6d8a4b5f8b0868a1c12292338d70841c7733e5c0cdab0a`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:43 GMT
ADD file:b78eeabafaf8782971a5f0656c75c78c8c5433892c3eaf767f7929efef69c569 in / 
# Wed, 27 Jun 2018 08:19:44 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:09:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:09:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:24:35 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:24:37 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:24:38 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:24:39 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 03 Jul 2018 08:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 08:59:27 GMT
CMD ["jshell"]
# Tue, 03 Jul 2018 10:03:00 GMT
CMD ["gradle"]
# Tue, 03 Jul 2018 10:03:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Jul 2018 10:03:03 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 03 Jul 2018 10:03:14 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 10:03:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 03 Jul 2018 10:03:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 03 Jul 2018 10:03:28 GMT
USER [gradle]
# Tue, 03 Jul 2018 10:03:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Jul 2018 10:03:37 GMT
WORKDIR /home/gradle
# Tue, 03 Jul 2018 10:03:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:97c5cc34273d3c2f949fe7e1929100eee6ce7c2a2cd3643a25cdf70d6de85dc0`  
		Last Modified: Wed, 27 Jun 2018 08:29:18 GMT  
		Size: 27.4 MB (27418879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d97ed0631635aedd4374fc866e43da4d472d2db0823719ee368e40e6e1a9bb`  
		Last Modified: Wed, 27 Jun 2018 14:00:53 GMT  
		Size: 454.8 KB (454789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40effdc3cf774d1ccc0bb80e0f9f3ca757b9aacb532d5e613e4f3ae4c64642a9`  
		Last Modified: Wed, 27 Jun 2018 14:00:52 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876339928d0898664acfd7b59ab840f17142f1c5ee966aa0ed07e3a5df18e0b3`  
		Last Modified: Wed, 27 Jun 2018 14:00:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ae0625fb33097667d4bbfdcf37e4ea87d736ec23167b015e7b367651f73e31`  
		Last Modified: Tue, 03 Jul 2018 09:14:25 GMT  
		Size: 139.7 MB (139738316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff545930693baad73e9e249dd03052e27a030dbc673f0accc8df76605bcdaa`  
		Last Modified: Tue, 03 Jul 2018 10:05:59 GMT  
		Size: 598.7 KB (598709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7a4cb4021ff74a7d724a81356def753f343b3f000a40bce83e4a3942769cd4`  
		Last Modified: Tue, 03 Jul 2018 10:06:07 GMT  
		Size: 75.9 MB (75875719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615261ab2235e0fe3b62fb490bfb6b07c4ce27a46cec7517aa71b3303acaabc1`  
		Last Modified: Tue, 03 Jul 2018 10:05:59 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; s390x

```console
$ docker pull gradle@sha256:b70a0e44379239fddb4ef87a9a9e2d901444553dce8506f5ac8c6c5f69f0a0ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295839913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7785d3001cc2c5c4479778eee8be54be9b7f0ccc7f70e920a83d27ca34503868`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 11:47:58 GMT
ADD file:cf737655826d4b1e468ce84aa62b13c3fdffa34c82b378e4009593f7849ea7e7 in / 
# Wed, 27 Jun 2018 11:47:59 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:50:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:50:14 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:50:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:53:04 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:53:04 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:53:04 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:53:04 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:54:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:54:03 GMT
CMD ["jshell"]
# Sat, 30 Jun 2018 11:43:49 GMT
CMD ["gradle"]
# Sat, 30 Jun 2018 11:43:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Jun 2018 11:43:49 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 30 Jun 2018 11:43:56 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 30 Jun 2018 11:43:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 30 Jun 2018 11:44:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Jun 2018 11:44:00 GMT
USER [gradle]
# Sat, 30 Jun 2018 11:44:00 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Jun 2018 11:44:01 GMT
WORKDIR /home/gradle
# Sat, 30 Jun 2018 11:44:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:8293cf5769b809c9c94e73478bfb163e35d6fa4a5088ecadf2d19c65993b745f`  
		Last Modified: Wed, 27 Jun 2018 11:52:23 GMT  
		Size: 25.1 MB (25124482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aff9df39c1e3554e85381d02064727f34c20aed926476bb74445aac4f475d98`  
		Last Modified: Wed, 27 Jun 2018 14:02:16 GMT  
		Size: 470.8 KB (470844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a16a1697363ae9163e609b14853395e36b56766df4003c7b2b775cfb7cde1fa`  
		Last Modified: Wed, 27 Jun 2018 14:02:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b831e698cd68c7b0d8efa54ce7719ef9d161f63d0b6e686b021ecabf998c42`  
		Last Modified: Wed, 27 Jun 2018 14:02:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a999709559e29a89ef9bab5df85b47abc454a2321e323669582f46f85c4dc168`  
		Last Modified: Wed, 27 Jun 2018 14:02:42 GMT  
		Size: 193.7 MB (193683531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea2899b839b74d4ed363d79f990b89409e683a10cfe5b810e20a913ec8389f6`  
		Last Modified: Sat, 30 Jun 2018 11:47:22 GMT  
		Size: 684.7 KB (684681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51ee3b7fdc8d81a8969c327c3c734cf04c4a62334314b06a2d2687c25bc5984`  
		Last Modified: Sat, 30 Jun 2018 11:48:23 GMT  
		Size: 75.9 MB (75875801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98efa9d951c18ad91ea82b092dc5db2998fbea04f3a4edb291ec93d894c247c`  
		Last Modified: Sat, 30 Jun 2018 11:47:23 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
