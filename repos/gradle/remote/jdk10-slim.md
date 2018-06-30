## `gradle:jdk10-slim`

```console
$ docker pull gradle@sha256:aba56dc35f1645467bd350e412d7bb4a61ddb0a248fdb96cd3c778461e6db14d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jdk10-slim` - linux; amd64

```console
$ docker pull gradle@sha256:52a038d969e5d64758bdf2db6bdb34b363d15ca0989f3ffbf0e3dd715b0e18c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.1 MB (339077004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be1178ed3ac468be0558794eb24e82b7095e21e63631ba3e2d56d9cccb0b2ae`
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
# Tue, 26 Jun 2018 23:24:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:24:59 GMT
CMD ["jshell"]
# Fri, 29 Jun 2018 22:29:57 GMT
CMD ["gradle"]
# Fri, 29 Jun 2018 22:29:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Jun 2018 22:29:57 GMT
ENV GRADLE_VERSION=4.8.1
# Fri, 29 Jun 2018 22:30:07 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 22:30:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Fri, 29 Jun 2018 22:30:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Jun 2018 22:30:13 GMT
USER [gradle]
# Fri, 29 Jun 2018 22:30:13 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Jun 2018 22:30:14 GMT
WORKDIR /home/gradle
# Fri, 29 Jun 2018 22:30:16 GMT
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
	-	`sha256:a93ab035acd19e96ad0370c33b3b21dfc33371c5facba25139cf7a2597448b37`  
		Last Modified: Tue, 26 Jun 2018 23:42:56 GMT  
		Size: 235.9 MB (235926732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c71824beed39ac57f6a8f8502eca3b2f8d17d3637a37847c2c7e8380b1c4f51`  
		Last Modified: Fri, 29 Jun 2018 22:49:58 GMT  
		Size: 689.4 KB (689387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a80cf3b3da26f1c6e58b8eddb2d28d3eed00afca99636cf4759f7e8afe769a`  
		Last Modified: Fri, 29 Jun 2018 22:50:07 GMT  
		Size: 75.9 MB (75875804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7ebc4965e6f3630159ab0787e9dcfe42da57a269c243b23119d70e8b58e62`  
		Last Modified: Fri, 29 Jun 2018 22:49:57 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:d7ef11edadabf00e5cb8c556498eec2ddc6bfb17fe1eadb371eaebd1db14a960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323632733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b30538e65d6a8452ee44bbb2d9e343fc183f68f926ce3da57195359599c74766`
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
# Wed, 27 Jun 2018 13:30:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:30:52 GMT
CMD ["jshell"]
# Sat, 30 Jun 2018 08:27:02 GMT
CMD ["gradle"]
# Sat, 30 Jun 2018 08:27:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Jun 2018 08:27:03 GMT
ENV GRADLE_VERSION=4.8.1
# Sat, 30 Jun 2018 08:27:20 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Sat, 30 Jun 2018 08:27:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Sat, 30 Jun 2018 08:27:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Jun 2018 08:27:30 GMT
USER [gradle]
# Sat, 30 Jun 2018 08:27:31 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Jun 2018 08:27:32 GMT
WORKDIR /home/gradle
# Sat, 30 Jun 2018 08:27:38 GMT
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
	-	`sha256:261a5788e6595ef394254ebbee43d3ec9d77bd63d10adaaf67895db849639d76`  
		Last Modified: Wed, 27 Jun 2018 14:01:56 GMT  
		Size: 219.2 MB (219178341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea888ecdf052e1ab4a583f41713e1379d369d17c516375193dda292a9bcd1323`  
		Last Modified: Sat, 30 Jun 2018 08:32:04 GMT  
		Size: 704.2 KB (704171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1389e8d8859fed7b95d0a0404dc374cf04c64a6c695a833235e79610cc5195`  
		Last Modified: Sat, 30 Jun 2018 08:32:12 GMT  
		Size: 75.9 MB (75875946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5632e804f6d335cd1c77a8e3fcf5ea8d729e9ee0e7de79e581df549e45b8af`  
		Last Modified: Sat, 30 Jun 2018 08:32:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
