## `gradle:jre-slim`

```console
$ docker pull gradle@sha256:8a9b8d0cc72864b6347bf84617340d5972b43564513d5af6b575e9114d92c657
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

### `gradle:jre-slim` - linux; amd64

```console
$ docker pull gradle@sha256:dd1b7636d39cf176c5afb4f152e315984e35e21a21f7170bb0189e3712f4c490
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167026265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775205b83f50c908cf4741889450639bdbe2f28aa255c6135075ac9db5a900be`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 11:56:20 GMT
CMD ["gradle"]
# Wed, 08 May 2019 11:56:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 May 2019 11:56:20 GMT
ENV GRADLE_VERSION=5.4.1
# Wed, 08 May 2019 11:56:29 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:56:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Wed, 08 May 2019 11:56:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 May 2019 11:56:37 GMT
USER gradle
# Wed, 08 May 2019 11:56:37 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 May 2019 11:56:38 GMT
WORKDIR /home/gradle
# Wed, 08 May 2019 11:56:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1916ee69922756f7f732f0ea4b87581c2ee4a3d4807799297ce8677b60362bae`  
		Last Modified: Wed, 08 May 2019 12:00:29 GMT  
		Size: 1.1 MB (1097953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da648d6bd72eef33867686528923767f65834c984083d4962a02928b2e82cc8`  
		Last Modified: Wed, 08 May 2019 12:00:38 GMT  
		Size: 87.1 MB (87097832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ac8958a803f76a9a5fb84574ec8e79251faaa1c77a2d54aef4cc9cdcdbc58b`  
		Last Modified: Wed, 08 May 2019 12:00:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:be455be5bd92ce80631c9ac6f4b9b92db4e5a995f92e24196b771fbd9269e7e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156392965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7643b7e60461519c0dec40ed5bde80c6dd6c32e4ca95071712b35ec1a438080`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:26:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:34:40 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:34:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:34:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:36:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 11:36:43 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 11:36:43 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 11:37:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:13:38 GMT
CMD ["gradle"]
# Wed, 08 May 2019 16:13:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 May 2019 16:13:40 GMT
ENV GRADLE_VERSION=5.4.1
# Wed, 08 May 2019 16:13:51 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:13:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Wed, 08 May 2019 16:14:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 May 2019 16:14:02 GMT
USER gradle
# Wed, 08 May 2019 16:14:03 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 May 2019 16:14:03 GMT
WORKDIR /home/gradle
# Wed, 08 May 2019 16:14:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a153ac62bf0a68e25aa314f9d9d8d55c61e86ae10aac14bedc6c64c37e21a68`  
		Last Modified: Wed, 08 May 2019 11:49:23 GMT  
		Size: 447.8 KB (447828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc0f4036898a564db0558503f792619f9d8155487349629e3bb9d5542f70dbf`  
		Last Modified: Wed, 08 May 2019 11:52:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5441c65dab7cdacdc5d99c24a4c8cb98455629e217bd13c1c1b268fae7ecdf`  
		Last Modified: Wed, 08 May 2019 11:52:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc86280b018539923b3f14c6e70a727ef2bfa0a57501af714f144a2858a955b2`  
		Last Modified: Wed, 08 May 2019 11:53:43 GMT  
		Size: 46.6 MB (46631060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1771d7bc32cb5a5b4ee38e00058baf6f4b25ff8fcb418390fb5b5e771a029a5f`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 1.1 MB (1059961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e78abf06ca7cc41e83893f18c32b715450bdb11576e3ea6c49d695d09d1ba0`  
		Last Modified: Wed, 08 May 2019 16:18:30 GMT  
		Size: 87.1 MB (87097704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe58451e273eb662a3bc1fd6cc2ee249e8840c52f8200b14c0f33f1b3eff391`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:8ea0c3fbfbb55fccd760ce592c570398921a0c34ed7202c8feaaf34aff735177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153878092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0efb782d5bc044218420e0b70e9a5f003cbcf59be6fbbcd2b07657a2edac88`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:14:09 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:14:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:14:13 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:16:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:16:28 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 14:16:29 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 14:16:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 18:13:42 GMT
CMD ["gradle"]
# Wed, 08 May 2019 18:13:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 May 2019 18:13:43 GMT
ENV GRADLE_VERSION=5.4.1
# Wed, 08 May 2019 18:13:53 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:13:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Wed, 08 May 2019 18:14:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 May 2019 18:14:02 GMT
USER gradle
# Wed, 08 May 2019 18:14:03 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 May 2019 18:14:03 GMT
WORKDIR /home/gradle
# Wed, 08 May 2019 18:14:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e4b3bd395a6982a3d52e8e2c57651fb045081876d3ca9e21f248e1d6bc74cb`  
		Last Modified: Wed, 08 May 2019 14:30:10 GMT  
		Size: 430.7 KB (430721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a541a7bc5211dd1a923061f4978b3cf7a6b4b3144dbdb679863fe09240886a`  
		Last Modified: Wed, 08 May 2019 14:33:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581944edf718a07e1853240b2d7caec780beaf162aec89a02314401ec2b62c6`  
		Last Modified: Wed, 08 May 2019 14:33:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4960c9f9a6a57ba2eb41a01e21d874521f6160a1e7ba32320b14498bd95df93`  
		Last Modified: Wed, 08 May 2019 14:34:33 GMT  
		Size: 46.0 MB (46040019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411a12e566b984b21a0a5588db04832ae3ac991852cb1b1585ecb1edf4cd317`  
		Last Modified: Wed, 08 May 2019 18:17:39 GMT  
		Size: 1.0 MB (1032935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11144bbc3907b073e9dda4abf2c37b7eca7a61cf33458a12da6467ceb1234f5`  
		Last Modified: Wed, 08 May 2019 18:17:53 GMT  
		Size: 87.1 MB (87097651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1585f3d63361a27cf65adec107b4de64b7dfab1df35e688cc61020c85eb9f901`  
		Last Modified: Wed, 08 May 2019 18:17:38 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ca9f015d41aa843540756217ce84aa5d0b9b1f2239c7da3f808940a3ba6aeb84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157269866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7114c299df84ad1a99a40b0888763a7efe3b8aff6a54faa82ea9539c5ac7d646`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 19:25:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:36:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:36:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:36:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:37:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 04:06:46 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 04:06:47 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 04:08:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 04:18:22 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 04:18:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 27 Apr 2019 08:56:07 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 27 Apr 2019 08:56:20 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 08:56:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 27 Apr 2019 08:56:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 27 Apr 2019 08:56:35 GMT
USER gradle
# Sat, 27 Apr 2019 08:56:36 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 27 Apr 2019 08:56:37 GMT
WORKDIR /home/gradle
# Sat, 27 Apr 2019 08:56:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b2a3db5fe5bcef92897d12d82e7bf4b1c81832ef030a3036b2cf488ad45373`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 440.9 KB (440897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2999ac8d95dfa97fcb9e08a6e0ebc377b5f2f7e28df1ec2186d8aa260a79cbb9`  
		Last Modified: Wed, 27 Mar 2019 19:45:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ac67d53f5794f0dd5934751906f180b059d1b5c1f3a8c7e849166451397cc7`  
		Last Modified: Wed, 27 Mar 2019 19:45:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41caee5c5141838a760546f5b4864d421c1c8d118d97ecadec29a0a165ae32a`  
		Last Modified: Thu, 28 Mar 2019 04:14:06 GMT  
		Size: 48.3 MB (48336536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30624444b136d86b78303435134197688345ea3e70b82c7734eda180b59e7628`  
		Last Modified: Sat, 27 Apr 2019 09:03:13 GMT  
		Size: 1.1 MB (1053888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a68468692a790ed67b796fd32830de76935e52990ea08358aa9027d112e4206`  
		Last Modified: Sat, 27 Apr 2019 09:03:27 GMT  
		Size: 87.1 MB (87097850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00ced811eef9f4f4e8557c30ce8bce1b50461acd4c5fd5e965a36daadaad745`  
		Last Modified: Sat, 27 Apr 2019 09:03:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre-slim` - linux; 386

```console
$ docker pull gradle@sha256:779de40d23dca2d40ad9123bc3a48e4206052584a39da29a08a998452d100ff6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167238678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1148c72edeaef2a41240ce13b37751b5ced45b5e9ac267df30893b3b3ab85be3`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 22:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:15:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 22:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 22:15:40 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 22:17:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 22:17:06 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 22:17:06 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 22:17:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 03:39:37 GMT
CMD ["gradle"]
# Thu, 09 May 2019 03:39:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 09 May 2019 03:39:37 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 09 May 2019 03:39:43 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:39:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 09 May 2019 03:39:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 09 May 2019 03:39:48 GMT
USER gradle
# Thu, 09 May 2019 03:39:48 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 09 May 2019 03:39:48 GMT
WORKDIR /home/gradle
# Thu, 09 May 2019 03:39:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f26845f7f838dc45e7d18864a087b86287784d6bc7418000ba8bfa4f748eb9`  
		Last Modified: Wed, 08 May 2019 22:46:51 GMT  
		Size: 463.8 KB (463760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231054a32a8b321d855fdfff23728813ef7a66d7e2d0f370430fdcc250256dc`  
		Last Modified: Wed, 08 May 2019 22:51:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bf0acf2e5bd0ef7ca8f027459450c316e8957e83211c9058e3e3de4e909e00`  
		Last Modified: Wed, 08 May 2019 22:51:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d5c2b4a7218ba7870c3b7b91517e6d99068c586f807bc472d3822cf77a10d8`  
		Last Modified: Wed, 08 May 2019 22:53:13 GMT  
		Size: 55.4 MB (55435990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d79087484d7525e9f1256baeaf8dae1ca76694d170fb0963a84475b50f96ff`  
		Last Modified: Thu, 09 May 2019 03:42:09 GMT  
		Size: 1.1 MB (1119772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00edfe46eb656baaf722de64abbdb19e7c1464d894c36ef628dd0be0ffe7690`  
		Last Modified: Thu, 09 May 2019 03:42:15 GMT  
		Size: 87.1 MB (87097796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d7937ce3f46470ab5dce51ba8da42adcb8796a2b8e27e88dfc445bbb2ff001`  
		Last Modified: Thu, 09 May 2019 03:42:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:279edb3050a63cbcf09fdf5cfa59b6b29ab5bc8c459ac7b407784033c4ee03d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159914295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e10c909665ff477349684bd7c572bdb3bc353ed0e8a9e77a8c5368e288a8228`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:54:43 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:54:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 12:54:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 13:05:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 13:05:33 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 13:05:37 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 13:08:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 23:07:40 GMT
CMD ["gradle"]
# Wed, 08 May 2019 23:07:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 May 2019 23:07:47 GMT
ENV GRADLE_VERSION=5.4.1
# Wed, 08 May 2019 23:08:03 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:08:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Wed, 08 May 2019 23:08:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 May 2019 23:08:21 GMT
USER gradle
# Wed, 08 May 2019 23:08:25 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 May 2019 23:08:29 GMT
WORKDIR /home/gradle
# Wed, 08 May 2019 23:08:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27796501cbfb0b554b085595b018957af7f888b3aa25d40b1d53092de0b8a3ad`  
		Last Modified: Wed, 08 May 2019 13:12:44 GMT  
		Size: 449.8 KB (449837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d14d5059f8fc0ee3f654f53befb4b7dacb31012a862c9808ac0a0075129bf2`  
		Last Modified: Wed, 08 May 2019 13:19:19 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0aaa059531b329b7930150e8580e1e5472a24d3850846dd029ff547e5b53d`  
		Last Modified: Wed, 08 May 2019 13:19:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274096b5a73e374baa5d2e4b6c6f3fb41a1d1755194b43c9726de364a14a5a44`  
		Last Modified: Wed, 08 May 2019 13:22:30 GMT  
		Size: 48.5 MB (48538135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03377d44111554db5b20682bdaf5523fc7692b336036f0061a51f53cf1513f62`  
		Last Modified: Wed, 08 May 2019 23:18:23 GMT  
		Size: 1.1 MB (1083148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9e3608006b36afdde1772762259c7c887f677cb61c16937b4007ec9ea94ae9`  
		Last Modified: Wed, 08 May 2019 23:18:33 GMT  
		Size: 87.1 MB (87097712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9d496a1b6953a6b351a53b3e0133fb23fb26f4436dc65604b9f3bc545cf5ed`  
		Last Modified: Wed, 08 May 2019 23:18:22 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre-slim` - linux; s390x

```console
$ docker pull gradle@sha256:d8dea3d96bb536c040d8e6b46c281eeea0ca9d04d5764632d3473a979c229d62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158754586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d634d7ab0e4212f0238b0a4e8bbe679526642ec6c363aca2b11895dd0121e8a`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:50:45 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:50:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:50:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:55:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:55:13 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 14:55:20 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 14:56:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 03:44:22 GMT
CMD ["gradle"]
# Thu, 09 May 2019 03:44:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 09 May 2019 03:44:24 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 09 May 2019 03:44:35 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:44:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 09 May 2019 03:44:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 09 May 2019 03:44:49 GMT
USER gradle
# Thu, 09 May 2019 03:44:49 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 09 May 2019 03:44:50 GMT
WORKDIR /home/gradle
# Thu, 09 May 2019 03:44:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da4f342733acaa433c0f8a0ecb46e0f96b997768a1b55dc50a53550479a096b`  
		Last Modified: Wed, 08 May 2019 15:00:07 GMT  
		Size: 466.0 KB (465966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f6e1954c78023f7db3cb57f3b555bbb2d870aeb33ce037eef5e2ce9e7ef43d`  
		Last Modified: Wed, 08 May 2019 15:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2b3f17893d6acb15d3a1fc895089f302231464a80e07a7103e74efd49be51d`  
		Last Modified: Wed, 08 May 2019 15:03:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a1d3e27e999ab07141975789aef57806f6ba4fdb1cc34b525e0bc643c69c04`  
		Last Modified: Wed, 08 May 2019 15:06:05 GMT  
		Size: 47.7 MB (47742808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6639217c41d5ffaae516f7e922269aad3a404c61f928c0721079bb9d87c5eecc`  
		Last Modified: Thu, 09 May 2019 03:53:24 GMT  
		Size: 1.1 MB (1108591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51a3da64b425592a2dfc151bc49a97e3ccf46b36afd66f45749c4c38d0f66ab`  
		Last Modified: Thu, 09 May 2019 03:53:47 GMT  
		Size: 87.1 MB (87097835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95234f2ed29b335a1e9e98f4261bc0380ec2c4e7d7cec3c0912059162c4adb12`  
		Last Modified: Thu, 09 May 2019 03:53:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
