## `gradle:jre11`

```console
$ docker pull gradle@sha256:dce36a817f5a7b7168bdce1034b2b6fbb40ccb6b5454dca4f777cf9efbb480ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jre11` - linux; amd64

```console
$ docker pull gradle@sha256:1d159ba427bed47e5c1eaa89688273645a4d909a6013ac1c1f8a7ca526ab7d62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279860871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6145ac964e2b6c812618ca71e04d3feb1b33719e1f25fe5a0e83989c7adae36`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:01:50 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 04:01:50 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:01:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:01:52 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:01:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:01:53 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 04:01:53 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 04:02:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 13:19:54 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 13:19:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 20 Mar 2019 22:53:33 GMT
ENV GRADLE_VERSION=5.3
# Wed, 20 Mar 2019 22:53:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 20 Mar 2019 22:53:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 20 Mar 2019 22:53:39 GMT
USER gradle
# Wed, 20 Mar 2019 22:53:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 20 Mar 2019 22:53:39 GMT
WORKDIR /home/gradle
# Wed, 20 Mar 2019 22:53:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1519e9297a977488ae8ff5c877840e630c7acff7bd56e8154f56e9fe5431f7`  
		Last Modified: Tue, 05 Mar 2019 04:25:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50db805a2e2130e23d677452a9392d29dc9cd1ae0676e5b31dba0fd23b4ccae8`  
		Last Modified: Tue, 05 Mar 2019 04:25:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ba6d94bd68e7f0bb4379800050adffad946ba2400b8ed23807487a0e5df1f4`  
		Last Modified: Tue, 05 Mar 2019 04:25:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164c583a133ddf8aa4645ba59439e769e8374fb84032bce5b0ccb1355560ba3a`  
		Last Modified: Tue, 05 Mar 2019 04:25:55 GMT  
		Size: 131.3 MB (131315965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21aaf0acf091e6a9f12f1f071620a985ecdf9ca0bc4acd6bb5f4d686a9f31de7`  
		Last Modified: Wed, 20 Mar 2019 22:57:08 GMT  
		Size: 87.2 MB (87226644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d634b9d8f9c217e8e58a1bb1909f865c3e4a13da9f3ebc54db7c09909f7de03`  
		Last Modified: Wed, 20 Mar 2019 22:56:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v5

```console
$ docker pull gradle@sha256:bdde088309f30fdeab466004889facde71ada21e770ca8f314c002c70b778401
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260759982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9334c801bc4f62e2b7f8440df9fd103d0fb710d7473458bd0213c8f1a2b32f8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 09:54:45 GMT
ADD file:0d24c375e856f1e75f5cb0a6766b22665902b1a6940a87d2c7fc0e61f658e944 in / 
# Tue, 05 Mar 2019 09:54:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:33:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:17:15 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 11:17:16 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:17:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:17:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:17:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:17:19 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 11:17:19 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 11:18:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 15:23:32 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 15:23:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 08:50:56 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 08:50:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 08:51:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 08:51:04 GMT
USER gradle
# Thu, 21 Mar 2019 08:51:05 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 08:51:05 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 08:51:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:35963a726ee5d52a496a31b3c1f6accaf90ad61bf0e1e0bd8aad2cf66ab8cdb3`  
		Last Modified: Tue, 05 Mar 2019 10:02:26 GMT  
		Size: 44.0 MB (44029811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088a52eee835f09abb5e08bfd27b8cf0960dbcd0d3f28aa0e602654df58ce922`  
		Last Modified: Tue, 05 Mar 2019 10:43:14 GMT  
		Size: 9.9 MB (9851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2616673f78baa6ea1b22951cb4a50ea0c9db5f109d098f00b5bf86b3e29a7b51`  
		Last Modified: Tue, 05 Mar 2019 10:43:12 GMT  
		Size: 4.2 MB (4158962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29e62902178d17f798c00d2c12d1ce2afa56979e692b609138a6d0fce78bfbe`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 845.9 KB (845894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5545ca615db06983c9e0b580ca2e1aaa62e026f718255577fe15cf8ca7ee3c`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e17ab52dcd695dda55e6e47ac5ecc335314eee70515c8eb1de3f9729c4a6386`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dc455cdbdd8038e744e3846ec0d4536b55925aba27af2e0b3a592cf18081ba`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b957e323f10317e368624b4c0e635f6aee288bee4cad96f5c84189ab8e3848d8`  
		Last Modified: Tue, 05 Mar 2019 11:39:53 GMT  
		Size: 114.6 MB (114645704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfe3ecc2d9183d2a7b5d4acb3c7fb263c24ac862915c22e7dd3ec06ba7c06b2`  
		Last Modified: Thu, 21 Mar 2019 08:55:03 GMT  
		Size: 87.2 MB (87226880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9b859e32bccc767d2958100da67c3232ba100379cdd9b5368ba558f089637b`  
		Last Modified: Thu, 21 Mar 2019 08:54:49 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:8f30cc336fafee6a0fd92392cb9249a96fd149f29109eae69a88b249be890eaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259675873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f0c493ae7eee3337c4bb129b1cd1d32ee39e2ecb5ee2ad2ae9715750a5b2c8c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 14:39:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:39:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 14:39:43 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:39:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:39:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:39:49 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 14:39:50 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 14:39:50 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 14:40:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 19:02:05 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 19:02:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 12:05:56 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 12:05:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 12:06:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 12:06:04 GMT
USER gradle
# Thu, 21 Mar 2019 12:06:05 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 12:06:05 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 12:06:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c939e18033f4d9e001f74f0bb3eeb37358e00e43f9d69147f83352446e83f2`  
		Last Modified: Wed, 23 Jan 2019 15:06:53 GMT  
		Size: 830.2 KB (830214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ef71f0052540674fe14976375014a3827f5282d8b1d826cb9842077ff263f9`  
		Last Modified: Wed, 23 Jan 2019 15:06:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316111000338d5611ea666e2d9bbd80154a60d31c00c72de166cd52dbebecdfb`  
		Last Modified: Wed, 23 Jan 2019 15:06:54 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8689b09b728009f15469fb1da9dd9d3ee588ba28e28deb960405adacde05360`  
		Last Modified: Wed, 23 Jan 2019 15:06:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102065863dd664ce02c555dc3c52dabf9338bfe4700152930519a45c8dded8f5`  
		Last Modified: Wed, 23 Jan 2019 15:07:26 GMT  
		Size: 116.1 MB (116131390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899188e4a750eb080f3ff53a2d1e5fed2cc8e2b292cf74a3a3b8e297a5a836e`  
		Last Modified: Thu, 21 Mar 2019 12:09:56 GMT  
		Size: 87.2 MB (87226880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baaf24cbe9958301dafe198a1671cd76f4fd66e514c25235e767b01f5e8e7f6a`  
		Last Modified: Thu, 21 Mar 2019 12:09:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:6a3bee6941747155eb49471bc8753743f63d80a345b58c9b5e4a34f4d43e8fc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266913648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb9ca5a0b5a93d11b7b6479e4e7513b9f0d8acc709e1b7232439603c1dc4d26`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 12:15:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:15:28 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 12:15:28 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:15:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:15:32 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:15:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 12:15:34 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 12:15:35 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 12:18:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 21:22:19 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 21:22:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 09:38:19 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 09:38:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 09:38:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 09:38:35 GMT
USER gradle
# Thu, 21 Mar 2019 09:38:35 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 09:38:36 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 09:38:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731a0d1b7415b24abb16c24f00099d883fa36488d898413e7c73f39fe50bfe34`  
		Last Modified: Tue, 05 Mar 2019 12:35:34 GMT  
		Size: 839.2 KB (839191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f65e86fee2ae032cb67ec61c9fd95006871bd88a025be5a3b901fe76979b4cd`  
		Last Modified: Tue, 05 Mar 2019 12:35:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6915f2bba03d68f67b4a443685987bf8e520f955a3a28ca3f18e1c8d74e4ab67`  
		Last Modified: Tue, 05 Mar 2019 12:35:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ed139fe6715a1742cfbd34cc4dd9952abf207c98440a38c972f987929d1ce8`  
		Last Modified: Tue, 05 Mar 2019 12:35:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2f93d56599aa1c03a13c95f4ed4e041b31c62e56173e682d650dc3a40c7295`  
		Last Modified: Tue, 05 Mar 2019 12:36:58 GMT  
		Size: 121.9 MB (121890673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a6a11300db76c8fe981b59380cc404ea9f1d674b01d45fa9444c62efd7c32f`  
		Last Modified: Thu, 21 Mar 2019 09:45:31 GMT  
		Size: 87.2 MB (87226629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34277e270f0bf5925be5a82f11fe2d6358cb2cc33307ede0700775f7cb3395d8`  
		Last Modified: Thu, 21 Mar 2019 09:45:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; 386

```console
$ docker pull gradle@sha256:2f6a5cc740da669260b6db4bdf72a1464f5060523c3d53a25d711521bf42fed3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 MB (285877707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ffe99a3fa287f91e543652f1f474660679b2cbd0394abee688a8e57caf5de7`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:10:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Mar 2019 03:20:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:20:02 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Mar 2019 03:20:03 GMT
ENV LANG=C.UTF-8
# Wed, 06 Mar 2019 03:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Mar 2019 03:20:04 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Mar 2019 03:20:04 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Mar 2019 03:20:05 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Mar 2019 03:20:05 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Mar 2019 03:20:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Mar 2019 05:07:48 GMT
CMD ["gradle"]
# Wed, 06 Mar 2019 05:07:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 11:40:34 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 11:40:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 11:40:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 11:40:39 GMT
USER gradle
# Thu, 21 Mar 2019 11:40:39 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 11:40:39 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 11:40:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b807c0af5dc527d2f1018efa95b7573661bf01032b2f5222491fe79808b0506`  
		Last Modified: Tue, 05 Mar 2019 21:17:53 GMT  
		Size: 10.8 MB (10800084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d3bd1a7499ccab64de6a026e2c5b5465baf4766b3e0141dbbed1763fa33f8a`  
		Last Modified: Tue, 05 Mar 2019 21:17:52 GMT  
		Size: 4.6 MB (4561396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcdc06e47582f94a8425bc2326c471c2ef7190e302f611ee3b1eaa2418442a4`  
		Last Modified: Wed, 06 Mar 2019 03:37:13 GMT  
		Size: 861.8 KB (861777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7629569fe29a664c22513105eb6a485bf5f2f6e5344f657288238a16721476a`  
		Last Modified: Wed, 06 Mar 2019 03:37:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbaaa38deba42b16074ade711d4f1c7328ca63e1b481b8b568593ed3dfb9850`  
		Last Modified: Wed, 06 Mar 2019 03:37:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebea1674b7cecdd6518495e411c084bb8e8da318302ed76e0b222370c54fb1a9`  
		Last Modified: Wed, 06 Mar 2019 03:37:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b79a33a18072544df5c295810bef4dfd4cac17251af87acce6687b0c4cd53`  
		Last Modified: Wed, 06 Mar 2019 03:37:39 GMT  
		Size: 136.4 MB (136362681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb2b5099cdf17ce8b3f6daff13082128ea21c3000f53269006b2f08bdef970b`  
		Last Modified: Thu, 21 Mar 2019 11:43:20 GMT  
		Size: 87.2 MB (87226612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552ca4aa5c1328ce391b57ae9b0a168e51d560abf49bd5f4d5bd9522a59c347c`  
		Last Modified: Thu, 21 Mar 2019 11:43:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:bfa9262a9141a3c77d51a43a5929b953d9d28ee4a72b483c928d693c25a1976c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267416254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d113a7db547a44a4d63894797a63576e0a6dd33f734fb70775fddf882870df3e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:21 GMT
ADD file:de4412e5af6632fda966c01f23fa53ac051704c5c8c63511822bae29940abba1 in / 
# Tue, 05 Mar 2019 09:25:26 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:45:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:50:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:50:24 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 14:50:27 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:50:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:50:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:50:41 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 14:50:44 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 14:50:47 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 14:54:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 20:45:25 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 20:45:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 08:45:15 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 08:45:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 08:45:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 08:45:38 GMT
USER gradle
# Thu, 21 Mar 2019 08:45:42 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 08:45:44 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 08:45:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:b88be5fa0477b5e07410a4683e7f500619df6a2b1093565ef8b6c3ab2bc8bb0b`  
		Last Modified: Tue, 05 Mar 2019 09:31:30 GMT  
		Size: 45.6 MB (45610417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a668b08e3421d576c28b789bc0e8c0f7400f465503e936df3c1b880422b75bc`  
		Last Modified: Tue, 05 Mar 2019 13:02:52 GMT  
		Size: 10.0 MB (9988971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c800b04e42ea1197a3c9f6cc00c2763789101082fa94d89c8fdab3aa65aa17`  
		Last Modified: Tue, 05 Mar 2019 13:02:47 GMT  
		Size: 4.3 MB (4296530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea710e3bbdf5c3bb87ab3040c64ad44cafcd9122932eae10001bf075a81689ac`  
		Last Modified: Tue, 05 Mar 2019 15:22:10 GMT  
		Size: 848.4 KB (848424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3974bcb12c132dfe18e1d12be1f8b854434fc445f6ea264caa3a601a45b184b9`  
		Last Modified: Tue, 05 Mar 2019 15:22:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ad84c35c1509a0c6d43b7ecd8b36e019edfcf2e848933a4d1f3f5888fde7f6`  
		Last Modified: Tue, 05 Mar 2019 15:22:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5265c43b48a0111e5fcfb7877032f012bcaf0c4266839c9499575a00ce340de5`  
		Last Modified: Tue, 05 Mar 2019 15:22:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27674caf20b627ea1630037eaff88a928586e5f623fa818d2ae32c72a62557a3`  
		Last Modified: Tue, 05 Mar 2019 15:23:03 GMT  
		Size: 119.4 MB (119444228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90125aedeba715f3406be9aca49815b902d91ec74af792d95e1fa0b5b42de09`  
		Last Modified: Thu, 21 Mar 2019 08:56:03 GMT  
		Size: 87.2 MB (87226909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e631bb4dc0881d744235ef9abcac477af7865c9266a96f8b2e7f9894506524b`  
		Last Modified: Thu, 21 Mar 2019 08:55:10 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; s390x

```console
$ docker pull gradle@sha256:1110e1ba8798528ac270f123b93930682005b079c1b83f60c709c806a404f8c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267110655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89df236462c66cd40b998a176be547db28c38464c16bef10a103cf0205c7bc21`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:57 GMT
ADD file:8271a1ca944204307a0659ebf47e18f728c4aa651091092aee9270e619c17663 in / 
# Tue, 05 Mar 2019 12:42:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:35:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:35:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 15:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:10:30 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 15:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:10:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 15:10:33 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 15:10:33 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 15:11:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 19:19:08 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 19:19:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 11:46:59 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 11:47:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 11:47:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 11:47:08 GMT
USER gradle
# Thu, 21 Mar 2019 11:47:09 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 11:47:09 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 11:47:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:39653445334dc97a660d5c33a719f16c20b0727f0918c51fc17e70343f3c2fd5`  
		Last Modified: Tue, 05 Mar 2019 12:45:28 GMT  
		Size: 45.2 MB (45199281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a786adb578f3dea96f453a6695f6d658fd487c43f0c7dd5375855f6940d82c`  
		Last Modified: Tue, 05 Mar 2019 13:40:26 GMT  
		Size: 10.3 MB (10314828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1aa16a552c6ff88adf6745752a99dd6eb610c220d6b46ab8500ca4c491c5f67`  
		Last Modified: Tue, 05 Mar 2019 13:40:25 GMT  
		Size: 4.4 MB (4372182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a15927bf212cf7747f13ee0ef1be30032c9e421b2db72136b12d1d5f363333`  
		Last Modified: Tue, 05 Mar 2019 15:16:46 GMT  
		Size: 863.6 KB (863646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277238589434d088c055c15619bde982349029335e415863cb5a3b92569d31fa`  
		Last Modified: Tue, 05 Mar 2019 15:16:46 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76144eaf7f648bb45ea7c6bc0b152e2f90acf6d8f033971d7db83f6800c7010`  
		Last Modified: Tue, 05 Mar 2019 15:16:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7656c30e1578bf4a54d6320f35ca05c1f2edf818c426ef6ee6676cc7069e0bde`  
		Last Modified: Tue, 05 Mar 2019 15:16:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70673977af362a7b2dad2279459be75e33404aae8793e9abcad2e40d5a18637`  
		Last Modified: Tue, 05 Mar 2019 15:17:04 GMT  
		Size: 119.1 MB (119133344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3290cd1acf2fda6585076887ca1f447f3a13d422a1f22c7362e4b4ae851b6c5d`  
		Last Modified: Thu, 21 Mar 2019 11:51:50 GMT  
		Size: 87.2 MB (87226633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac2e5bb1e190f2be617bc9c73ddf2f1f4c7ee921dfaf9da9058214f5799fbbc`  
		Last Modified: Thu, 21 Mar 2019 11:51:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
