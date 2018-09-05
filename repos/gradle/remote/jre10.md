## `gradle:jre10`

```console
$ docker pull gradle@sha256:530ddb8a620b68d9bab8b29bc2a25e42ce90465f4703695f7da6e6724ef92848
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

### `gradle:jre10` - linux; amd64

```console
$ docker pull gradle@sha256:e8a55f17db982705be5acb7e2e25bad27e4844431884f1eaf5ad11d0b6f97d4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325747035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526aeb05345710f0fa3ef7cd92804341934801c606839e221873a3087e12bcd5`
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
# Wed, 05 Sep 2018 01:19:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:19:58 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:19:58 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 01:19:58 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 01:20:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 15:09:56 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 15:09:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Sep 2018 15:09:56 GMT
ENV GRADLE_VERSION=4.10
# Wed, 05 Sep 2018 15:09:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Wed, 05 Sep 2018 15:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 05 Sep 2018 15:10:03 GMT
USER [gradle]
# Wed, 05 Sep 2018 15:10:03 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Sep 2018 15:10:04 GMT
WORKDIR /home/gradle
# Wed, 05 Sep 2018 15:10:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
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
	-	`sha256:8c45392033dfd99e94fa36ace9aa9af9ac8065434b61866c5d8610ecf04560cc`  
		Last Modified: Wed, 05 Sep 2018 01:38:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cb2dbabfeb56c177f99ef7ce9361b14a9d33ab70da79d015dd16b9ca06c87d`  
		Last Modified: Wed, 05 Sep 2018 01:38:46 GMT  
		Size: 180.8 MB (180782333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ffa101af90e5dd01ab0f498d760a3d14a0585940210d37375d852f4b9d4629`  
		Last Modified: Wed, 05 Sep 2018 15:20:34 GMT  
		Size: 78.4 MB (78389127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbf84072cc04f9d7b06f9e8ac9d0c2a0fe8f2c0df90bb4144c48efe3980ea84`  
		Last Modified: Wed, 05 Sep 2018 15:20:24 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10` - linux; arm variant v5

```console
$ docker pull gradle@sha256:a00374cad65d07797fbee70ffece2f64fc2b08b719fd6a5bbd64486ef2cc43f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304197426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bc18b85f9686dc325b2eba0917b20b93589b587373f4fc6aad35fd0e5677c8`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:05 GMT
ADD file:197405a6e437f7755c9e1eaaeffa366cbbed5d22b6433e8985fc72c0399c9741 in / 
# Wed, 05 Sep 2018 08:53:10 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 14:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:19:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:19:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 14:23:53 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 14:23:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 14:23:53 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 14:23:54 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 14:24:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 19:24:44 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 19:24:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Sep 2018 19:24:45 GMT
ENV GRADLE_VERSION=4.10
# Wed, 05 Sep 2018 19:24:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Wed, 05 Sep 2018 19:24:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 05 Sep 2018 19:24:51 GMT
USER [gradle]
# Wed, 05 Sep 2018 19:24:52 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Sep 2018 19:24:53 GMT
WORKDIR /home/gradle
# Wed, 05 Sep 2018 19:25:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:d249ae748c1383631885fe6ef102c9f4763c974c7e2ed31cbd7b8ec3b469b01e`  
		Last Modified: Wed, 05 Sep 2018 09:02:23 GMT  
		Size: 46.8 MB (46817101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd45a59e2fb41f181140d262402692b7bb09adb957eecafdeb3c8a5534ab243`  
		Last Modified: Wed, 05 Sep 2018 10:09:53 GMT  
		Size: 6.9 MB (6917036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fe315336f45a33182829fb9bc3dd66b77a0251800dc947f7872e4abb3393a9`  
		Last Modified: Wed, 05 Sep 2018 10:09:53 GMT  
		Size: 9.0 MB (9043599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89603f24ce5c0f85e0514a68828b4c36c8259bec559ce089f842408f228dcce`  
		Last Modified: Wed, 05 Sep 2018 14:36:32 GMT  
		Size: 841.3 KB (841304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7c3075c301304422493bfd51b56532c4b5c53d744426e93e514a09c8d1af05`  
		Last Modified: Wed, 05 Sep 2018 14:36:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae4bb845fe634a1098b4e133c0f9be65a175a072a5e42e43d0ba2c693b99799`  
		Last Modified: Wed, 05 Sep 2018 14:36:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a2a539d26368529c46a18109be5628ca8d4d4fdd821d7d8459edb6362c0434`  
		Last Modified: Wed, 05 Sep 2018 14:37:15 GMT  
		Size: 162.2 MB (162188620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d32fc19dc0330fd6de6c240e023bde37f062895d39c35ae8787fa0f74438d23`  
		Last Modified: Wed, 05 Sep 2018 19:32:09 GMT  
		Size: 78.4 MB (78389159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d362991a679f5d9a445e195f95053f387a267759763d9c18a86ffdeb2723977`  
		Last Modified: Wed, 05 Sep 2018 19:31:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10` - linux; arm variant v7

```console
$ docker pull gradle@sha256:872aeb91ecaebff8aeaa1f1cb860254a57d7011dcb3b87becc1ed938d1407ea7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.6 MB (300607551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc96ec57f687ee8e6e85e335854ccca21b2c24766179d9758343c2ef3dbf4951`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:03 GMT
ADD file:6bce3a6eaae154a74bd434bc6087c35774f3ca30b31179bd9d3a8ccc883e6356 in / 
# Wed, 05 Sep 2018 12:02:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 13:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:11:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:11:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:15:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:15:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 13:15:29 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 13:15:30 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 13:16:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 17:55:26 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 17:55:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Sep 2018 17:55:27 GMT
ENV GRADLE_VERSION=4.10
# Wed, 05 Sep 2018 17:55:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Wed, 05 Sep 2018 17:55:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 05 Sep 2018 17:55:36 GMT
USER [gradle]
# Wed, 05 Sep 2018 17:55:36 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Sep 2018 17:55:37 GMT
WORKDIR /home/gradle
# Wed, 05 Sep 2018 17:55:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:41ac34bbb663ff9b66612cbe07ba88955dbe37f15f0732d7438ed9d75ffef0c9`  
		Last Modified: Wed, 05 Sep 2018 12:11:20 GMT  
		Size: 44.7 MB (44660481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4a6a41cc4abd0bf494829b7c229c8b0332e0fa15e4070e51e196a72e0e9f8f`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 6.7 MB (6684465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff85737d1afda4a28ad503d9827b69fbb9a8cb0c387134d95a9099dea0d22d0e`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 8.8 MB (8752299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097656e3ab94abaa1a2c1ea83bc9f56482aa61b0c3cb374632c6aa969737fd93`  
		Last Modified: Wed, 05 Sep 2018 13:40:06 GMT  
		Size: 824.1 KB (824058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b401d1e0b418148f23e8539bffa24853c8c1c3e8f24cde975385729cd87216e9`  
		Last Modified: Wed, 05 Sep 2018 13:40:05 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1d2bf10dd7825f8d22e834432f4236514ab715c129037918d3c0e85e8c1cfa`  
		Last Modified: Wed, 05 Sep 2018 13:40:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297c331089f257b6e24fe780d898b60d41fcb8930da52c9f350ff3063a054424`  
		Last Modified: Wed, 05 Sep 2018 13:40:47 GMT  
		Size: 161.3 MB (161296482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfaa07f4755dda76e1864bf48058c3d4c440e2e9be531ff7493e2f945ce55260`  
		Last Modified: Wed, 05 Sep 2018 18:01:09 GMT  
		Size: 78.4 MB (78389166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32321e3f51a3789cb519cc8174c629e13bd79bf032bd4957cb9efd7acdc5f06d`  
		Last Modified: Wed, 05 Sep 2018 18:00:56 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:7358bc9e34bcb930c61fdec25f3d7a33fa5368ed69fcc33c3d5937a1969c6fa3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308177284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb02cec793e382dd7ff5f03208a5c4776086abe30fb484a96c2f6b0bb72164bc`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:43:33 GMT
ADD file:1145a1860bba8a4d148966c227a31ee5ee05c524c8af7a2c0963bb5671b11ad7 in / 
# Tue, 17 Jul 2018 08:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:40:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 19:56:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:56:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:56:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:10:30 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Jul 2018 10:31:38 GMT
ENV JAVA_VERSION=10.0.2+13
# Sat, 21 Jul 2018 10:31:39 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 21 Jul 2018 10:41:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 21 Jul 2018 16:03:44 GMT
CMD ["gradle"]
# Sat, 21 Jul 2018 16:03:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 28 Aug 2018 08:58:44 GMT
ENV GRADLE_VERSION=4.10
# Tue, 28 Aug 2018 08:58:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Tue, 28 Aug 2018 08:58:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 28 Aug 2018 08:59:07 GMT
USER [gradle]
# Tue, 28 Aug 2018 08:59:08 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 28 Aug 2018 08:59:09 GMT
WORKDIR /home/gradle
# Tue, 28 Aug 2018 08:59:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:719cf01a9d639f6fad37c3abd73d6746ec6483c438952c7daf2503b9dccde689`  
		Last Modified: Tue, 17 Jul 2018 08:53:02 GMT  
		Size: 46.0 MB (45967380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075accf774284e7b667dd405cd13b8eeb55056113680340e3245fbd09d5d03fa`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 6.6 MB (6647895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6bf6cdca1c47f36a5665bfdb0fb046730a62f0d3c944aecf285c441be0ea93`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 9.0 MB (8981452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c840a5bdd30532a63df60e5079cbbe12a8fce1db657e5b27202622471ed9c7`  
		Last Modified: Tue, 17 Jul 2018 20:40:10 GMT  
		Size: 831.8 KB (831820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84f1479c592353313a7a93277681daa575a4af657abf7514207ccfbf82e462e`  
		Last Modified: Tue, 17 Jul 2018 20:40:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbad20a6791e864adc5624700aa0ec94c2fb833eb1329bc22ef5fbd51a74ee4`  
		Last Modified: Tue, 17 Jul 2018 20:47:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940ebe85911acff293e0432f2548b0d22822b4138db034066a1c0d9c65d1042b`  
		Last Modified: Sat, 21 Jul 2018 11:15:54 GMT  
		Size: 167.4 MB (167358992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364356dcfdfffc69d1fdf2bc86254c25b571f8d2c5851da472aabb6643b051a`  
		Last Modified: Tue, 28 Aug 2018 09:34:37 GMT  
		Size: 78.4 MB (78389171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3727fabb02fe40961b93019fc698f3d75a9699964da4bcc4837c41ef55ecd8b4`  
		Last Modified: Tue, 28 Aug 2018 09:34:25 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10` - linux; 386

```console
$ docker pull gradle@sha256:f9676d08512bcc7242d1196979470accb1bae1d8d2b9a5b4a42decebda1483b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.2 MB (338179498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81103f17e54db89b7029032a92afe1a6db305a6df0f44e9af15d9275db22a3c5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 10:46:37 GMT
ADD file:9a56907f76deea3f2b22068eae8c6cc31bed7f9c7b3de38c6e99c54e77d0822e in / 
# Tue, 17 Jul 2018 10:46:41 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:30:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:31:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:10:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:10:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:10:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:14:16 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:14:16 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Jul 2018 11:54:12 GMT
ENV JAVA_VERSION=10.0.2+13
# Sat, 21 Jul 2018 11:54:13 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 21 Jul 2018 11:55:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 31 Aug 2018 19:36:27 GMT
CMD ["gradle"]
# Fri, 31 Aug 2018 19:36:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 31 Aug 2018 19:36:27 GMT
ENV GRADLE_VERSION=4.10
# Fri, 31 Aug 2018 19:36:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Fri, 31 Aug 2018 19:36:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 31 Aug 2018 19:36:34 GMT
USER [gradle]
# Fri, 31 Aug 2018 19:36:34 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 31 Aug 2018 19:36:34 GMT
WORKDIR /home/gradle
# Fri, 31 Aug 2018 19:36:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c4a6da94b3de8d8ecc301930050dce3da90b886c8443b00166765e0873f7abf6`  
		Last Modified: Tue, 17 Jul 2018 11:03:38 GMT  
		Size: 49.5 MB (49529462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804bb32a028b43835bbfcaa803b7de3d0dac5cb91ca5192d83ff39548d87dc5`  
		Last Modified: Tue, 17 Jul 2018 15:11:50 GMT  
		Size: 7.2 MB (7186448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6b791854fa42fd340bfb473b8a46084be17fd760aec34df82fd303f96a9ca5`  
		Last Modified: Tue, 17 Jul 2018 15:11:52 GMT  
		Size: 9.5 MB (9527986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c7f6b57a91274b87e9359f6087b58be7100abe66a9ba7c584dafc42f56a9a3`  
		Last Modified: Tue, 17 Jul 2018 18:31:02 GMT  
		Size: 854.3 KB (854311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3902ef34602a870d6143f6aea2221db68a6c781338755c2559f085728962d5d`  
		Last Modified: Tue, 17 Jul 2018 18:31:02 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa29c6662ec574c1dd95fc59055ede229563d3c427e8ad90226bee998347188`  
		Last Modified: Tue, 17 Jul 2018 18:41:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4554552f68326279c7267102a712b40bbb26d57f12190b9cf6b1913b09297fc4`  
		Last Modified: Sat, 21 Jul 2018 12:21:18 GMT  
		Size: 192.7 MB (192691641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbba14ef073dd51a54a3174e42409e130931400123973b9e914cb1943ff54de0`  
		Last Modified: Fri, 31 Aug 2018 19:43:07 GMT  
		Size: 78.4 MB (78389146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8e71f8c09b1b7c37e1d5b968a6f6b964bd2e4118fa874f633d0d80b3b41f0e`  
		Last Modified: Fri, 31 Aug 2018 19:42:57 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10` - linux; ppc64le

```console
$ docker pull gradle@sha256:71ea630ed695a8455939d80289004675763df5c73ad37712dba3861d5953b24e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.5 MB (323495469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5628350d6768c422bfb6d331fbcd2cde4360bf8ec9ad2870051f708f535369be`
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
# Wed, 05 Sep 2018 11:58:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:58:45 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 11:58:46 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 11:58:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 12:02:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 18:02:40 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 18:02:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Sep 2018 18:02:43 GMT
ENV GRADLE_VERSION=4.10
# Wed, 05 Sep 2018 18:02:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Wed, 05 Sep 2018 18:02:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 05 Sep 2018 18:02:53 GMT
USER [gradle]
# Wed, 05 Sep 2018 18:02:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Sep 2018 18:02:55 GMT
WORKDIR /home/gradle
# Wed, 05 Sep 2018 18:03:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
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
	-	`sha256:fe202b2aff0dab73a08db91a3ec2e8c682212f1a551d217a585373289cff52a1`  
		Last Modified: Wed, 05 Sep 2018 12:28:13 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b506b881fff1a781657e4f11b290880d929538a4512b54725b608fc66c1bd12a`  
		Last Modified: Wed, 05 Sep 2018 12:29:31 GMT  
		Size: 174.9 MB (174936247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a874a18d395fe6fddc269511252733c966e26e29edbae4666265688e260ed91`  
		Last Modified: Wed, 05 Sep 2018 18:13:15 GMT  
		Size: 78.4 MB (78389272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1078d6c20ecad91a94f76252842eafae0f52b5ab90fe20d7216016791e0c9d2`  
		Last Modified: Wed, 05 Sep 2018 18:13:01 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10` - linux; s390x

```console
$ docker pull gradle@sha256:062a4baa235905aa5aaa6b786effcdfb339d2d58859228614f8daed8470a3cbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (287970319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbcd436effdf68fe279373bba3b9c2061cd8b1d457ba6526b9408db30e0eebc`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:29 GMT
ADD file:832b68a7f8033560aa3536d9163f28d197490633c05d49240dd2bed266d9504e in / 
# Wed, 05 Sep 2018 11:42:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:42:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:42:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 18:10:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:10:01 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 18:10:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 18:13:48 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 18:13:48 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 18:13:49 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 18:13:49 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 18:15:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 19:31:50 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 19:31:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Sep 2018 19:31:50 GMT
ENV GRADLE_VERSION=4.10
# Wed, 05 Sep 2018 19:31:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Wed, 05 Sep 2018 19:31:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 05 Sep 2018 19:31:59 GMT
USER [gradle]
# Wed, 05 Sep 2018 19:31:59 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Sep 2018 19:32:00 GMT
WORKDIR /home/gradle
# Wed, 05 Sep 2018 19:32:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b9886f96c1f9394ba76a75262b09bb6ad6b8100a8d94cf87089d43cb2068efe3`  
		Last Modified: Wed, 05 Sep 2018 11:47:17 GMT  
		Size: 47.7 MB (47670424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203b1cc1f2b55f95ed71809ae9ea5d67d78156f617f3321574955a3bf2c43e96`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 7.1 MB (7059600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11d48b0ceace2a58877479a5838ea5f51cbc6bd1e0b4f5823e44e519817de19`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 9.2 MB (9222100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dd9eda9e5788e824150a2131fa23cd6c5819cb343557b6b1947c785007c341`  
		Last Modified: Wed, 05 Sep 2018 18:25:09 GMT  
		Size: 858.3 KB (858281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6ea79ac7e28de297a7a34b7f76a849a66ce4ef6b226eb1fd31212fdecf5cf3`  
		Last Modified: Wed, 05 Sep 2018 18:25:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097364ac368a45a5a2f2e2403b433a55457eda3d75fb736c84062b31b8d1ffa2`  
		Last Modified: Wed, 05 Sep 2018 18:25:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405e4c8cf09e86bc32b973647643d1ec1982170d59cb390af919c4786a523d74`  
		Last Modified: Wed, 05 Sep 2018 18:25:41 GMT  
		Size: 144.8 MB (144770254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f9c8196f6dc85b4fec1805545cdd36d7dc561868106a90b90838cd6294233f`  
		Last Modified: Wed, 05 Sep 2018 19:35:30 GMT  
		Size: 78.4 MB (78389083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6c1234463b38e8bd3beb038571c09e1a1444b9d801e9d1746eb0abc0a16f7e`  
		Last Modified: Wed, 05 Sep 2018 19:35:23 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
