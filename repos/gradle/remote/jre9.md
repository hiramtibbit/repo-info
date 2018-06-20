## `gradle:jre9`

```console
$ docker pull gradle@sha256:cba2533c60136984eac53c6bbbc061f1c2ce7d9adb5c03bea9dd724a3135f1a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `gradle:jre9` - linux; amd64

```console
$ docker pull gradle@sha256:cd9fc6d2f58c3f6c021a624c5ef3cc21a7ae88dff06cb641933d0f5ff69640be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.5 MB (326476835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785658bdd361b94b4127d7b772a776de00293dbaba5b9319e03bb731fcc2a149`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Sat, 05 May 2018 04:59:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 04:59:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:00:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:00:25 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 08:00:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 08:05:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 08:05:40 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 08:05:40 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 08:05:41 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Mon, 14 May 2018 22:39:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 03:40:27 GMT
CMD ["gradle"]
# Wed, 06 Jun 2018 03:40:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 06 Jun 2018 03:40:27 GMT
ENV GRADLE_VERSION=4.8
# Wed, 06 Jun 2018 03:40:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
# Wed, 06 Jun 2018 03:40:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 06 Jun 2018 03:40:37 GMT
USER [gradle]
# Wed, 06 Jun 2018 03:40:37 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 06 Jun 2018 03:40:37 GMT
WORKDIR /home/gradle
# Wed, 06 Jun 2018 03:40:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af7c2bd543ba42600867217cd2f676eae7c4c38a8ba8a3cf8edce489534cfe`  
		Last Modified: Sat, 05 May 2018 05:02:11 GMT  
		Size: 8.6 MB (8642335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5286ee17a380311ffd9b7f82c5c957c59358a2103c0a1cc96c0be7eb91528f`  
		Last Modified: Sat, 05 May 2018 05:02:10 GMT  
		Size: 9.5 MB (9459894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f948f766f58ed5e0b5c75b9b6338f3a6a7ee3ac64fe98c946b196b1a92515`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 856.7 KB (856710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ca5a1068e6437056cf1b53c145bb93231b122e13be7e8760336394bfb30a32`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976ec9b55775a68c5468eec7fb19a0b965f06d13f14a7a3461d08c061dbde965`  
		Last Modified: Sat, 05 May 2018 08:15:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd825028dbf00e0dfcf8fdf8f1919a6d66608c63f442c816a2949e143400ebb8`  
		Last Modified: Mon, 14 May 2018 23:09:50 GMT  
		Size: 183.3 MB (183341014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88bbffefff79c3162529f6cb483ca695e59bf0f809038c0e1234e82505cfac2`  
		Last Modified: Wed, 06 Jun 2018 03:48:02 GMT  
		Size: 75.9 MB (75873139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdef07a94bbb14ba4a1e4dab629d68bf301fa9d6419476110a01d28a234a0e4`  
		Last Modified: Wed, 06 Jun 2018 03:47:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre9` - linux; arm variant v5

```console
$ docker pull gradle@sha256:fc2bce9aa48966f8128fab91978b0146fddc0d9b67cc12e18ae3518c53e8aa82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.5 MB (305526905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fed5ee3961508e12f6ec45afc50de303a14533dd0596c9f90c4ce2450d42c8a`
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
# Sat, 05 May 2018 09:19:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:19:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:27:42 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:27:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:27:43 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 09:27:44 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 09:41:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 20 Jun 2018 08:50:38 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 08:50:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 20 Jun 2018 08:50:39 GMT
ENV GRADLE_VERSION=4.8
# Wed, 20 Jun 2018 08:50:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
# Wed, 20 Jun 2018 08:50:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 20 Jun 2018 08:50:45 GMT
USER [gradle]
# Wed, 20 Jun 2018 08:50:45 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 20 Jun 2018 08:50:45 GMT
WORKDIR /home/gradle
# Wed, 20 Jun 2018 08:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
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
	-	`sha256:16073a84548c03437560da2931d6276f5698e1b26256817ec343c389cfd1c66a`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 849.9 KB (849869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7511e3d44dd1677ace4c49728e92bc682e66c906f2d94d5a76db694717d1923c`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed79a9690e83c5f8a409eac147b7022786b8cd54de49f9726a5c9f1debf44bc`  
		Last Modified: Sat, 05 May 2018 09:52:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d78f03eaf4946a8a38a25969bba8a7c701f5a72a98fb57f8d8faebb42210249`  
		Last Modified: Tue, 15 May 2018 10:12:34 GMT  
		Size: 165.5 MB (165502932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718d613dd8689446c3b556f1c78b7d2a8e2556a42074448b6e8c1617d5fa6b7f`  
		Last Modified: Wed, 20 Jun 2018 08:54:54 GMT  
		Size: 75.9 MB (75873060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d17d093d9dedc2579e27e5c968b5de27890d432d00c1cb1b7529afa2639da4`  
		Last Modified: Wed, 20 Jun 2018 08:54:44 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:81be274018be3b7321a199a9f75a529b7d4405b3698f069ab75152b44d01c90b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.0 MB (306039415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9bc66e20f08a612f8652903b971768a4c1c208d8fb95250b43a0f1f6ace69a`
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
# Sat, 05 May 2018 11:10:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:10:02 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 11:10:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 11:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 11:47:32 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 11:47:34 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 11:47:35 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 09:38:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 20 Jun 2018 09:30:56 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 09:30:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 20 Jun 2018 09:30:58 GMT
ENV GRADLE_VERSION=4.8
# Wed, 20 Jun 2018 09:30:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
# Wed, 20 Jun 2018 09:31:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 20 Jun 2018 09:31:10 GMT
USER [gradle]
# Wed, 20 Jun 2018 09:31:11 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 20 Jun 2018 09:31:11 GMT
WORKDIR /home/gradle
# Wed, 20 Jun 2018 09:31:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
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
	-	`sha256:b0e00dfc0b129c4ab2194347ddc38f66136387e9921b5f11f3ed3612ee9c840f`  
		Last Modified: Sat, 05 May 2018 12:39:12 GMT  
		Size: 843.0 KB (843039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0ff915ee587518b4d37f32230fd2b29388359c6dd67adc9e61cf15fbce46b6`  
		Last Modified: Sat, 05 May 2018 12:39:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413cce440c18f9029a9dd0ab7f8e645f0829f9fe2a71838791e83a92dc42b1e9`  
		Last Modified: Sat, 05 May 2018 12:54:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5547d24d71ee45eab5b89a65ecf8def74ef9135f4df309a81e11fe6a499099`  
		Last Modified: Tue, 15 May 2018 10:51:51 GMT  
		Size: 166.7 MB (166654820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6ec6aad72def43fdeb166bc2cf9a900c4bb92b5bae302b7296e2f5fd0d3906`  
		Last Modified: Wed, 20 Jun 2018 09:41:33 GMT  
		Size: 75.9 MB (75873115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1221fd4bf216119493423e4818e833a7982bb8593d950e8f5ab36998b4f8057`  
		Last Modified: Wed, 20 Jun 2018 09:41:22 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre9` - linux; ppc64le

```console
$ docker pull gradle@sha256:16b753244c1e7958d7c544b8bd4bea439c4fc514876740e5542cda01695bbe1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.7 MB (317724208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e44d7516b79a85e0de42da51d6a3911bb6e202f0adea8ea99eaaea391cae5e`
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
# Sat, 05 May 2018 13:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:40:58 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:41:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:20:08 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:20:09 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:20:09 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 14:20:10 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 08:44:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 20 Jun 2018 08:22:12 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 08:22:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 20 Jun 2018 08:22:15 GMT
ENV GRADLE_VERSION=4.8
# Wed, 20 Jun 2018 08:22:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
# Wed, 20 Jun 2018 08:22:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 20 Jun 2018 08:22:29 GMT
USER [gradle]
# Wed, 20 Jun 2018 08:22:30 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 20 Jun 2018 08:22:34 GMT
WORKDIR /home/gradle
# Wed, 20 Jun 2018 08:22:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=f3e29692a8faa94eb0b02ebf36fa263a642b3ae8694ef806c45c345b8683f1ba
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
	-	`sha256:ac66d4df0eb05e246b8290fe8e98d0dc23c04705d9e2e79abed62b95a7329a0a`  
		Last Modified: Sat, 05 May 2018 14:50:15 GMT  
		Size: 852.5 KB (852475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09abe145510be9656286d6cbd8cfed6e7efc4f1079ce629e458b56c291939a9`  
		Last Modified: Sat, 05 May 2018 14:50:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12816e93135f0006de407d811c1362a79f47297d52f569ed486486ab32687c18`  
		Last Modified: Sat, 05 May 2018 15:04:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f143a4bb5ed908001c0a9108c9507d804f508c290d25ac19b3795976205509`  
		Last Modified: Tue, 15 May 2018 09:34:28 GMT  
		Size: 173.3 MB (173279366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbf3bd92fbe1d56e2bed79e9b70e5c24ed9039ff4fec939fef663437e217a66`  
		Last Modified: Wed, 20 Jun 2018 08:31:59 GMT  
		Size: 75.9 MB (75873066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e9b3dff4a6a6ed0b06e196f9c94c9ed4f7a6e6c594dbb74a1e7f953786c1b5`  
		Last Modified: Wed, 20 Jun 2018 08:31:51 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
