## `gradle:jre11`

```console
$ docker pull gradle@sha256:e7bdc8dfc36fa98c2331441a03a8609f142b0ff05f019b010c6d0cd1474428ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jre11` - linux; amd64

```console
$ docker pull gradle@sha256:0638babdd3c07f08a5f694d2d2147043445e1f6dba762ccfe034bd45bde037ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.1 MB (313135244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b3b48182cedea3aa17411b75fe5ba32213670c7079878d0e2731baf2f0ebbb`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:51 GMT
ADD file:6b6ece05e75fbdccfdd76433844e066f0ec636fb62e74326f1747ccde948c381 in / 
# Tue, 04 Sep 2018 21:20:52 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:31:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:16:45 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:16:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:16:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:16:46 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 28 Sep 2018 18:25:17 GMT
ENV JAVA_VERSION=11
# Fri, 28 Sep 2018 18:25:17 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Fri, 28 Sep 2018 18:26:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 01 Oct 2018 20:23:33 GMT
CMD ["gradle"]
# Mon, 01 Oct 2018 20:23:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 01 Oct 2018 20:23:34 GMT
ENV GRADLE_VERSION=4.10.2
# Mon, 01 Oct 2018 20:23:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Mon, 01 Oct 2018 20:23:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 01 Oct 2018 20:23:38 GMT
USER [gradle]
# Mon, 01 Oct 2018 20:23:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 01 Oct 2018 20:23:38 GMT
WORKDIR /home/gradle
# Mon, 01 Oct 2018 20:23:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:5164339600396c4bdb97f111e5236c5fc64911bbd2bfe6d2343ce45fe79ea7d8`  
		Last Modified: Tue, 04 Sep 2018 21:24:41 GMT  
		Size: 49.1 MB (49071704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083ed1d8baf85dbda1151434e9afe28ad5efa36397cda6ff66cc5e7a888d2a4f`  
		Last Modified: Tue, 04 Sep 2018 22:51:37 GMT  
		Size: 7.4 MB (7350084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973ddf6ced7131822a05e3dd20803610fd06a8c695d3d814713f6ece58d616fd`  
		Last Modified: Tue, 04 Sep 2018 22:51:38 GMT  
		Size: 9.3 MB (9303992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24688a9f67e8a6e21d2aff3d1944d6b2c25df7f34e8a832ac69543243fcf3fd`  
		Last Modified: Wed, 05 Sep 2018 01:33:32 GMT  
		Size: 849.3 KB (849288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b207299ef18671a38b8fa1309272a5329503a6d6b096c03c4e75741c6042ce`  
		Last Modified: Wed, 05 Sep 2018 01:33:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e43cfb6a766c67bee065cea2132995d86599b09eac8fa8d8f97bc721d4c15f`  
		Last Modified: Wed, 05 Sep 2018 01:33:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce288eeafb52ca3df3eb663128ab5290cef1d34fdee1d30f5b862335b971bc6c`  
		Last Modified: Fri, 28 Sep 2018 18:34:12 GMT  
		Size: 168.2 MB (168153770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4add5aafda7fff39974ffd1b1eea659a08a51eb9a66e92b789d08f1e8a6d7708`  
		Last Modified: Mon, 01 Oct 2018 20:26:06 GMT  
		Size: 78.4 MB (78405899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1054b08c871f9cb6f82bdbccd33dec0f7130e2f74fe7b0f5c20399e3680a4145`  
		Last Modified: Mon, 01 Oct 2018 20:25:58 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:903f1b466dde7277b59ba4f7c816e01739d90a741cdcbc3ece60142fcedb729b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.4 MB (311409850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a941379237ad78e27207dc53583e31fc7e7dcde780cd233a4b5f8c942b74c3`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:17:51 GMT
ADD file:74cafd19c9f92f0bcf0ebf8af7c5fab91202cd413254da05d5a2b9191ecbee2d in / 
# Wed, 05 Sep 2018 08:17:53 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:56:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:56:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:47:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:47:33 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:47:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:47:50 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:48:05 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:26:58 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 08:26:59 GMT
ENV JAVA_DEBIAN_VERSION=11~28-2
# Sat, 29 Sep 2018 08:30:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 02 Oct 2018 08:26:14 GMT
CMD ["gradle"]
# Tue, 02 Oct 2018 08:26:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 02 Oct 2018 08:26:17 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 02 Oct 2018 08:26:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 02 Oct 2018 08:26:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 02 Oct 2018 08:26:25 GMT
USER [gradle]
# Tue, 02 Oct 2018 08:26:26 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 02 Oct 2018 08:26:27 GMT
WORKDIR /home/gradle
# Tue, 02 Oct 2018 08:26:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88839b4f566005ace21b4fb23e56b4a9638df137ee204c622d554444045423e4`  
		Last Modified: Wed, 05 Sep 2018 08:23:23 GMT  
		Size: 51.8 MB (51843930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5080e7dd5658ca43e5ab2c481fd673297ba9af3c9873b12896d7b0afb50375be`  
		Last Modified: Wed, 05 Sep 2018 09:15:01 GMT  
		Size: 7.6 MB (7623087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d33c3810da3865f1a4b8e646406ec32e5b89f1595d3a9b780139a5aa99ca1e`  
		Last Modified: Wed, 05 Sep 2018 09:15:00 GMT  
		Size: 9.9 MB (9854750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc64e62b7a5199521b4a32b0ff3fc6db9d889ecf2ba0af01d8a557a5ff390`  
		Last Modified: Wed, 05 Sep 2018 12:28:14 GMT  
		Size: 847.6 KB (847577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9919577262db6d45f094d763c34fe43dadd83c151d5cb25e870c2d4d76d779`  
		Last Modified: Wed, 05 Sep 2018 12:28:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a18ac51b0b223f8f6a803785a3374a0d9fd0cd81a1f58505a4f0201ec0246e1`  
		Last Modified: Sat, 08 Sep 2018 09:44:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98152bbc91b290e391ab8e7ef2f5b764541629f7b6713e30cc7a3f37cabc5a3`  
		Last Modified: Sat, 29 Sep 2018 09:07:26 GMT  
		Size: 162.8 MB (162833985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1fd8140ddfe5507aae38ab75c8eba3d2f90639d1b62b21541e15484789ae88`  
		Last Modified: Tue, 02 Oct 2018 08:30:57 GMT  
		Size: 78.4 MB (78405915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6c108c8e69b33cb975151d7b9130139a2fb28ec42503d9a9f884a8b0cd980d`  
		Last Modified: Tue, 02 Oct 2018 08:30:48 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
