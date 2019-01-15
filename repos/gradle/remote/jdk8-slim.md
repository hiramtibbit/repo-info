## `gradle:jdk8-slim`

```console
$ docker pull gradle@sha256:f0080b61547eddc4bb8d3f435ec93fc0579e57e13ce08993b5077c49c8d83c83
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

### `gradle:jdk8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:e86d8942129990f7f257d3aebc44162ce01bb349cd42ee673787618ea1563e14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.3 MB (177318023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef517ffd58edcaa729a89e5ce71755e1c7e98c4ca0140ffdbd7e8b21baeca07`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:57:43 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:57:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:57:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:58:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:46:53 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 10:46:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 14 Jan 2019 23:20:06 GMT
ENV GRADLE_VERSION=5.1.1
# Mon, 14 Jan 2019 23:20:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Mon, 14 Jan 2019 23:20:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Mon, 14 Jan 2019 23:20:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 14 Jan 2019 23:20:15 GMT
USER gradle
# Mon, 14 Jan 2019 23:20:15 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 14 Jan 2019 23:20:15 GMT
WORKDIR /home/gradle
# Mon, 14 Jan 2019 23:20:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762c9dfbe1b522fbb875c7c59c8952d87108fc60057e726c938bd76ffd15e861`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 454.8 KB (454826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a6ba080cc24eee5792a8d25298d187969f160f67ad741a32ce622ad5492565`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48b92f71dd52fdd31c31b1974db61bca4458948f9073c20bc863250d38ea61`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de8c375824447639364530df0d2d1ac55cc6e2c8d427317ac5ffd735dcde15e`  
		Last Modified: Sat, 29 Dec 2018 03:25:20 GMT  
		Size: 67.5 MB (67507768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722116d6a6dd4ffe9e0d7f94c7665c2f1b4624ba8072a247478cddfb1e1b8771`  
		Last Modified: Mon, 14 Jan 2019 23:22:41 GMT  
		Size: 1.1 MB (1098844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a088237fcfffe648229f010f478ccc528494be979db92b400ac002233f2bc23`  
		Last Modified: Mon, 14 Jan 2019 23:22:48 GMT  
		Size: 85.8 MB (85763153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987b1b24c4ef6852076f360f3f82b6c6d5d61f3f8375e2b7379544511d132c42`  
		Last Modified: Mon, 14 Jan 2019 23:22:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:effa70001bb72a02720c23b1062a7c6c20a5f357190986c73976d4bbbf26a96f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164370826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d1e9174849f6b2569721869d9cf79507bb1def45a6b35f67351312c2540f39`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:26:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:18 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 10:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 10:31:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 10:31:21 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 10:31:21 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 10:31:21 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 10:32:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 13:52:44 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 13:52:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Jan 2019 09:49:33 GMT
ENV GRADLE_VERSION=5.1.1
# Tue, 15 Jan 2019 09:49:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Tue, 15 Jan 2019 09:49:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Tue, 15 Jan 2019 09:49:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 Jan 2019 09:49:56 GMT
USER gradle
# Tue, 15 Jan 2019 09:49:57 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Jan 2019 09:49:57 GMT
WORKDIR /home/gradle
# Tue, 15 Jan 2019 09:50:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9768e4aef55fd8f8acae49249f3df25d2a0db51e026bdaeb0bcd7ac260f10511`  
		Last Modified: Sat, 29 Dec 2018 10:41:45 GMT  
		Size: 447.7 KB (447680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4681de7a72357434424c796458919d23d1ee0407cc67b76a8feee8fe6125b9d7`  
		Last Modified: Sat, 29 Dec 2018 10:43:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52a5621a4712e229290e69db70c9fc32c4704729d8147f5547cf3d1e5039bb1`  
		Last Modified: Sat, 29 Dec 2018 10:43:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3ace36799eedff955f5d7cef5e366d29c4e4f65ac637b3a3177641b211e08e`  
		Last Modified: Sat, 29 Dec 2018 10:44:03 GMT  
		Size: 55.9 MB (55930594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf988cf66283025d0343afd31302a041694140dca8b2b4d620a767bb392cc1f`  
		Last Modified: Tue, 15 Jan 2019 09:54:05 GMT  
		Size: 1.1 MB (1060839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b61e49275c6be0560a8350ef94bdd7cfc127a052e3db6181a40b65d52c1e108`  
		Last Modified: Tue, 15 Jan 2019 09:54:21 GMT  
		Size: 85.8 MB (85763326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7c201efae0345f53b0c50b60178ca06068891a40938600084042135175cc75`  
		Last Modified: Tue, 15 Jan 2019 09:54:05 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:287a9c95be86686844458c119ca2824daf52be6def68c8043d6a13883e0b436d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164773544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1a2885418030a9588ea2faa95553ec0ba32439610434385cdc400cabc81f1e`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 01:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 01:50:11 GMT
ENV LANG=C.UTF-8
# Tue, 27 Mar 2018 01:50:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Mar 2018 01:50:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 01:53:09 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 01:53:10 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 01:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 01:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 01:53:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 01:53:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Jul 2018 12:10:09 GMT
CMD ["gradle"]
# Sat, 14 Jul 2018 12:10:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Jan 2019 12:59:08 GMT
ENV GRADLE_VERSION=5.1.1
# Tue, 15 Jan 2019 12:59:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Tue, 15 Jan 2019 12:59:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Tue, 15 Jan 2019 12:59:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 Jan 2019 12:59:28 GMT
USER gradle
# Tue, 15 Jan 2019 12:59:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Jan 2019 12:59:30 GMT
WORKDIR /home/gradle
# Tue, 15 Jan 2019 12:59:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b006c16d8c81f9d03b541fa686cb57f40818f1d13ca2a326b7685a357d63e5`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 447.7 KB (447679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4c60102a2d43ceb83f32f54bc9fc75f477a8b3b7b43521e705bca7293161f6`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b290902da6536cde53ecb48ed3327fcebd41dd015833f9822475ef20d500ef85`  
		Last Modified: Tue, 27 Mar 2018 02:13:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7a8f49bb9739647a90c2b283f2dddbb67e1363d20bc02afa973e221d2cb398`  
		Last Modified: Tue, 27 Mar 2018 02:15:42 GMT  
		Size: 56.1 MB (56061983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b662a98e0b944b59df2e43fea315c35651e6a6b17941cc68a3475e550b88f5b6`  
		Last Modified: Tue, 27 Mar 2018 02:15:27 GMT  
		Size: 272.2 KB (272191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8243f8494b96df307781b3977e7a482739eccaab6e98ce7661b139d1740663cd`  
		Last Modified: Tue, 15 Jan 2019 13:03:21 GMT  
		Size: 1.1 MB (1062748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a301d03709bd70cc776088a3e42f16f00a2bb480a8b4a448f748e20fec784d`  
		Last Modified: Tue, 15 Jan 2019 13:03:34 GMT  
		Size: 85.8 MB (85763377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbd18ffe9b93f02e1d8b6f4b5eea8f18f71c9489c3b916ca23cbb54da8dbdc0`  
		Last Modified: Tue, 15 Jan 2019 13:03:20 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:5b3346e7d290d44a11c88256f95969d444c3ee531495f2f251bbab38715862eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164944212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1e57f4615c6e53c87c5e43fbde84eccaf6165afe8fbb2cc35b1daf1a663928`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:55:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:12:03 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:12:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:12:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:12:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 17:12:20 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:12:21 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:13:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 03:13:23 GMT
CMD ["gradle"]
# Sun, 30 Dec 2018 03:13:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Jan 2019 09:45:17 GMT
ENV GRADLE_VERSION=5.1.1
# Tue, 15 Jan 2019 09:45:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Tue, 15 Jan 2019 09:45:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Tue, 15 Jan 2019 09:45:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 Jan 2019 09:45:48 GMT
USER gradle
# Tue, 15 Jan 2019 09:45:49 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Jan 2019 09:45:50 GMT
WORKDIR /home/gradle
# Tue, 15 Jan 2019 09:45:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c647cb9b4bebabb026f3cdd41649c49da504fb488d1e096e0b7974cd205946`  
		Last Modified: Sat, 29 Dec 2018 17:24:27 GMT  
		Size: 440.8 KB (440846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28d99c4b0edfde23e64df2fbeba73096e4a7d82965d2a68f3df2f26e9741330`  
		Last Modified: Sat, 29 Dec 2018 17:28:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8311c322e6664f6266c1e3d823f89330bd7962a854b4539ba14f9fd05d447bab`  
		Last Modified: Sat, 29 Dec 2018 17:28:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894adc61c1bb677be776a4db63089da7d69307e9ab25cd09be6504257f0e7f0`  
		Last Modified: Sat, 29 Dec 2018 17:29:11 GMT  
		Size: 57.3 MB (57347402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75a1c2cd3d432d8850cb95c39a1fbad07eba924344b07790018956ce1105183`  
		Last Modified: Tue, 15 Jan 2019 09:53:40 GMT  
		Size: 1.1 MB (1054638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de5d7a88066f30d8c8d4d07cd41c71262413c6369f640db7f4eead22be663c2`  
		Last Modified: Tue, 15 Jan 2019 09:53:54 GMT  
		Size: 85.8 MB (85763231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead47cd5250fea4c982349c496909a1d1a1cc88c1a2679c16d63842801d90c25`  
		Last Modified: Tue, 15 Jan 2019 09:53:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; 386

```console
$ docker pull gradle@sha256:9c6132df474cc55ac93fec5386be912c2cfd0d2835ac416346f912f25a6f1f16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177211031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0739ba13d58966c8a1a88904ae9b9c8895f7d4bba23c5cb765e3bd1c845f60e5`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 20:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:54:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:54:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:54:28 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:54:28 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 20:54:28 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 20:54:28 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 20:54:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 05:21:18 GMT
CMD ["gradle"]
# Sun, 30 Dec 2018 05:21:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Jan 2019 11:46:44 GMT
ENV GRADLE_VERSION=5.1.1
# Tue, 15 Jan 2019 11:46:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Tue, 15 Jan 2019 11:46:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Tue, 15 Jan 2019 11:46:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 Jan 2019 11:46:56 GMT
USER gradle
# Tue, 15 Jan 2019 11:46:57 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Jan 2019 11:46:57 GMT
WORKDIR /home/gradle
# Tue, 15 Jan 2019 11:46:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2cc5e95842c4f0ae541c23106532af24b3125ad0e8aaba1313437c63035f3d`  
		Last Modified: Sat, 29 Dec 2018 21:20:23 GMT  
		Size: 463.5 KB (463523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68215057c6f6914922b129bb1043b388c2b55b68e94ef50f1e383c3f201a142`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c115f25959aee0a37987ee6d1df0918a33936ad0c4537c1a23a0c0aba3a81f`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf9ce802585b4bb66b7d9c1de08c4330acdc1e6bdd66766312e9fced9df4e6a`  
		Last Modified: Sat, 29 Dec 2018 21:23:20 GMT  
		Size: 66.7 MB (66729957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441d4e827a1abbea837cbdbfd92d6802b1aef094141ca271e124a10960a66039`  
		Last Modified: Tue, 15 Jan 2019 11:49:43 GMT  
		Size: 1.1 MB (1120739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa51e36933e30e4571f144975da64ef2cc9b1e283225bac18932e39b57d5c95`  
		Last Modified: Tue, 15 Jan 2019 11:49:51 GMT  
		Size: 85.8 MB (85763140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a48abb88cc3e59cec9e69e8c90654513b9876b854449765215f4f65ff58ff`  
		Last Modified: Tue, 15 Jan 2019 11:49:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:5ab3c50fec11143dc0b80174c295dc27f68f8778117c84cd017a09c38e5e1550
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167909068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fe239998e2de40b5cc930b2647b433b4e0698637b8a4a05aac12d1bfa198fca`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:40:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:40:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:40:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:40:38 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 12:40:41 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 12:40:47 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 12:42:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 18:11:21 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 18:11:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Jan 2019 09:27:27 GMT
ENV GRADLE_VERSION=5.1.1
# Tue, 15 Jan 2019 09:27:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Tue, 15 Jan 2019 09:27:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Tue, 15 Jan 2019 09:28:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 Jan 2019 09:28:06 GMT
USER gradle
# Tue, 15 Jan 2019 09:28:07 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Jan 2019 09:28:10 GMT
WORKDIR /home/gradle
# Tue, 15 Jan 2019 09:28:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0743698166d52740a3c2edd0e18b2c3f9d3e0fb6f70baef9db97b0a46804e02c`  
		Last Modified: Sat, 29 Dec 2018 12:55:09 GMT  
		Size: 449.8 KB (449826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eac60130af9df0f98034dd198b04700f6f033310942f44b4b6722feca95e0d1`  
		Last Modified: Sat, 29 Dec 2018 12:59:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd62ba6aaec25179010e5178bfd82798a1ea53db65e8f82f0ba78d77ebd2dc`  
		Last Modified: Sat, 29 Dec 2018 12:59:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f53ea530f19887b62233db12496ac27f8dd25d5ca07199452c4747c7000e75e`  
		Last Modified: Sat, 29 Dec 2018 13:00:06 GMT  
		Size: 57.9 MB (57864647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e036ac66b19e9088673d5db66d5492e59593fa636c81217a168b89147fe20cb`  
		Last Modified: Tue, 15 Jan 2019 09:35:31 GMT  
		Size: 1.1 MB (1083782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7944fcb78688107d9753ad4c26404b4ea95b135b7011542fb90c8479f2a777`  
		Last Modified: Tue, 15 Jan 2019 09:35:41 GMT  
		Size: 85.8 MB (85763369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61636d3db5254bdaea7f25f60e5b9b38f1a6b557b748facc8ca30db799140c7`  
		Last Modified: Tue, 15 Jan 2019 09:35:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; s390x

```console
$ docker pull gradle@sha256:fda0563c21ddc25a613f41358f20e3d3526cc024a633c52feedfa4afe41f03b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166708422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037e2a41fcad51c62b38eded6b8470aeb1c3570df294e270b0e7eae4a83fab63`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:52 GMT
ADD file:35c030887198a067338539b6bd96e04ff649537c38542febcb7e0ccd2a3d90c8 in / 
# Sat, 29 Dec 2018 12:43:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:25:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:28:19 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:28:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:28:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:28:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 14:28:21 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 14:28:21 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 14:28:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 17:49:58 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 17:49:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Jan 2019 12:42:31 GMT
ENV GRADLE_VERSION=5.1.1
# Tue, 15 Jan 2019 12:42:37 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Tue, 15 Jan 2019 12:42:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Tue, 15 Jan 2019 12:42:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 Jan 2019 12:42:41 GMT
USER gradle
# Tue, 15 Jan 2019 12:42:41 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Jan 2019 12:42:41 GMT
WORKDIR /home/gradle
# Tue, 15 Jan 2019 12:42:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:0e647eff4fda368965291c62c8bc90ae9cbcc84a50a5caed821af7f05ec653d4`  
		Last Modified: Sat, 29 Dec 2018 12:46:52 GMT  
		Size: 22.3 MB (22341416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b971102ba1e5fa0b494d2d0de3a851a4bdd60838081d58f636adafcaa749c6`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 465.7 KB (465718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e415f096a86af23bec528e44eb7b5e28c08c5c46c601171f923a9a28ac21782f`  
		Last Modified: Sat, 29 Dec 2018 14:33:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af18075aad7862139d7ffa41089bec62f11dbe40d6c87ea75091628c56e9ab61`  
		Last Modified: Sat, 29 Dec 2018 14:33:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb342e94b7ee76ea6b3748bc562f2297c5f1ceca126cc98b16c870f4355ccd28`  
		Last Modified: Sat, 29 Dec 2018 14:33:56 GMT  
		Size: 57.0 MB (57028261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd7520c7ca11a0573301f099e8a6e94d89a10a352a8ef6c4a423de12b2996c9`  
		Last Modified: Tue, 15 Jan 2019 12:47:12 GMT  
		Size: 1.1 MB (1109261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f1ff204e2cbf1f8d483073ddf2ffb6abbe97b54ce059837418123121506e4`  
		Last Modified: Tue, 15 Jan 2019 12:47:18 GMT  
		Size: 85.8 MB (85763184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f15ad48e687e102cd9b8a4a41de87ed2946c19bc49f547e680577540effc59`  
		Last Modified: Tue, 15 Jan 2019 12:47:12 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
