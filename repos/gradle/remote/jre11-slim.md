## `gradle:jre11-slim`

```console
$ docker pull gradle@sha256:aac5e419e3baa61bb539f26565f88336a3c778733906ab14a1f84c896471439d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jre11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:f31c99d9b282a5abd706a70d2d9f53cf672b7e45db76c34f938ec8cb10bf91c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181501421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36db4c6d7e08ea35f8578be5a102942fb8e206e413f6766214e5f4c6b161480`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:58 GMT
ADD file:a391d9232725a03d7b21f24be4d387c1d11f905c3ba448c0a3793745ca8cc6f3 in / 
# Tue, 04 Sep 2018 21:20:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:15:51 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:15:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:15:52 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:15:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 28 Sep 2018 18:24:19 GMT
ENV JAVA_VERSION=11
# Fri, 28 Sep 2018 18:24:20 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Fri, 28 Sep 2018 18:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 01 Oct 2018 20:23:54 GMT
CMD ["gradle"]
# Mon, 01 Oct 2018 20:23:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 01 Oct 2018 20:23:54 GMT
ENV GRADLE_VERSION=4.10.2
# Mon, 01 Oct 2018 20:23:58 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Mon, 01 Oct 2018 20:23:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Mon, 01 Oct 2018 20:24:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 01 Oct 2018 20:24:02 GMT
USER [gradle]
# Mon, 01 Oct 2018 20:24:02 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 01 Oct 2018 20:24:03 GMT
WORKDIR /home/gradle
# Mon, 01 Oct 2018 20:24:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:a7e1658cb0533dfcb5baa38a0ce3230fd3aea217be1a52d0b46f5521b305d608`  
		Last Modified: Tue, 04 Sep 2018 21:24:51 GMT  
		Size: 26.3 MB (26269506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d7fab3f2f9f524ee8ab66d9bf80ff7ce89278ff495a4c665481d069832089`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 460.8 KB (460788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7705f8b8f1de989ae8e63828bc91553d1aa32563ed57bd05b21828c0ef89920`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fb9b43905ab75618d23770204a6bc486e33867d3761b8a29e052036f87396`  
		Last Modified: Wed, 05 Sep 2018 01:32:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd992c6c0ffbe2da21430ad292c620a004a9cede6aca40f8fa1fa6e5a31aecbf`  
		Last Modified: Fri, 28 Sep 2018 18:34:46 GMT  
		Size: 75.8 MB (75751037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020036b1cbb07672e94bbc62294c8d30d761c5a52f18f06430251d42c2cc7097`  
		Last Modified: Mon, 01 Oct 2018 20:26:41 GMT  
		Size: 613.6 KB (613575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e392137d6564d3ea19f844023cb50481149740c98c351cc57ffddb64d60fde`  
		Last Modified: Mon, 01 Oct 2018 20:26:49 GMT  
		Size: 78.4 MB (78406009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d062d5fc08f2c3ae347652a590944f2e20c58374859177847d481ba46b45c6b`  
		Last Modified: Mon, 01 Oct 2018 20:26:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:71bf5880755269920710a6c8e0ea5168bd03fa59ee8fc13eef1e547ed01961ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174858207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:833222a65efa95fad644d095f545216fabf178e0f50abecd6d1c27b1b79b8250`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:18:11 GMT
ADD file:2c83f3c9e6ae13dc30fafc9ae3805ad69b08b4da3106915ed14ab1f30f967f23 in / 
# Wed, 05 Sep 2018 08:18:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:45:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:46:06 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:46:08 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:25:18 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 08:25:20 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 08:32:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 02 Oct 2018 08:26:46 GMT
CMD ["gradle"]
# Tue, 02 Oct 2018 08:26:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 02 Oct 2018 08:26:50 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 02 Oct 2018 08:27:01 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Oct 2018 08:27:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 02 Oct 2018 08:27:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 02 Oct 2018 08:27:21 GMT
USER [gradle]
# Tue, 02 Oct 2018 08:27:22 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 02 Oct 2018 08:27:34 GMT
WORKDIR /home/gradle
# Tue, 02 Oct 2018 08:27:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ad06b39b761d5d0d233a1f9ed85dd96e65a277e736303cc95163a7aff63a44ec`  
		Last Modified: Wed, 05 Sep 2018 08:23:53 GMT  
		Size: 28.7 MB (28718549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bca90424a7272ac7b846fddea3728bdaaae7093a26bda8e0596bdd046aa8d2`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 458.4 KB (458392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e875ef1b7436e18e8f4d510cd11b49d70c3cc15aadbdff5eceb47089e22b733`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9aef6824ef0b70fdf7e69a05a1b70568d0d0e44ba730a08a33a5b24ae916fa`  
		Last Modified: Sat, 08 Sep 2018 09:40:32 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceef02e0acb45605d8be87476871be606c39f352369c1be41d3f7ec266343b69`  
		Last Modified: Sat, 29 Sep 2018 09:08:19 GMT  
		Size: 66.6 MB (66622838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2501d7d2fcfcead891e711d7013987bd738541ab1f7810fc4eb34fdadc3ff1e8`  
		Last Modified: Tue, 02 Oct 2018 08:32:09 GMT  
		Size: 651.7 KB (651676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd67593c852c6c54dae387148423e6a5793fdb232412b03cfd8ce36c16fce2f2`  
		Last Modified: Tue, 02 Oct 2018 08:32:46 GMT  
		Size: 78.4 MB (78406144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f74e149a50eb7235af1a797e4f94aa0c43e2f8e1ca7d46e994a6f092f6af087`  
		Last Modified: Tue, 02 Oct 2018 08:32:09 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
