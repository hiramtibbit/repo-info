## `gradle:jdk8-slim`

```console
$ docker pull gradle@sha256:c8df698d10823e1c828013ba525ebcf97d44104b93f6225bc89ad0c4d11c39ca
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
$ docker pull gradle@sha256:f990b9b3d9203c3da34ccb4736052e539cc0a637b6c6ef43d7dcb7476d73d0f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.3 MB (177325540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220b1b2bc1e4b3546306e036c22ba5243cda1c3d0a2796369e93fc5b51a5a792`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:13 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:15 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:29:15 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:29:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 15:32:21 GMT
CMD ["gradle"]
# Wed, 06 Feb 2019 15:32:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 06 Feb 2019 15:32:21 GMT
ENV GRADLE_VERSION=5.1.1
# Wed, 06 Feb 2019 15:32:30 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:32:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Wed, 06 Feb 2019 15:32:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 06 Feb 2019 15:32:38 GMT
USER gradle
# Wed, 06 Feb 2019 15:32:38 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 06 Feb 2019 15:32:38 GMT
WORKDIR /home/gradle
# Wed, 06 Feb 2019 15:32:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187061ad2a2978b8c52f307ede3a915e9134a3bb8f6ea795e67ad31524381cdd`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 454.9 KB (454874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f37e25a28fcc612aa4d7f14effcc97964c720244c1df67570f6834c8e80fdb7`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d5433339d39c37cc2fe7f8cfa195ac8d9f0072c3be0e49b33dca261a56733`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd634dd09a991a757ce55751f748f0f393c647f96d5b0fbac35575676886a847`  
		Last Modified: Wed, 06 Feb 2019 08:54:10 GMT  
		Size: 67.5 MB (67507844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf5cf21d04beca4d7dadddbace389b6ce2007e8e8bd0b61522b63d52093dfdc`  
		Last Modified: Wed, 06 Feb 2019 15:36:15 GMT  
		Size: 1.1 MB (1098864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94949602be4374348fe6c043603df0806fe3b17ac1b34580ee47326a3c4815d8`  
		Last Modified: Wed, 06 Feb 2019 15:36:25 GMT  
		Size: 85.8 MB (85763152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9058f959fb2977d386550172ec090e6c628bb49536f91c4246aecbcc1f192c9a`  
		Last Modified: Wed, 06 Feb 2019 15:36:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:f2eb003172bec9354a008be89ef77b7c707738abd07ed97b4441516b311caeae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164385066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0fc033338514d5c83798bf82aceb75b2cfab5be9012636d6d42d2bf20f4d1c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:42:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:50:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:50:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:50:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:50:31 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:50:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 16:13:28 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 16:13:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 23 Jan 2019 16:13:29 GMT
ENV GRADLE_VERSION=5.1.1
# Wed, 23 Jan 2019 16:13:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:13:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Wed, 23 Jan 2019 16:13:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 23 Jan 2019 16:13:47 GMT
USER gradle
# Wed, 23 Jan 2019 16:13:48 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 23 Jan 2019 16:13:48 GMT
WORKDIR /home/gradle
# Wed, 23 Jan 2019 16:13:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0448a0274fb127b6c698658b3915c7c94f835e73f7b8698a2a288bbed1965c95`  
		Last Modified: Wed, 23 Jan 2019 13:06:49 GMT  
		Size: 447.8 KB (447751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d058a57605cf4c1efca448612cbcceaa1a050308dfee775036679ab356a5e6`  
		Last Modified: Wed, 23 Jan 2019 13:10:14 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2036eb6031fefda81a1005b3f0af4b65d65f252cf6835cf8268856fb6b7d49da`  
		Last Modified: Wed, 23 Jan 2019 13:10:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eceebefdce9a60b30d2d8e8261ff8db28067e80676b10895bd2b4e5594fb86b5`  
		Last Modified: Wed, 23 Jan 2019 13:10:30 GMT  
		Size: 55.9 MB (55930718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1717ece4247dc158fbbc148d312aaf089c8bd41e34b6c75ba5d06f5ecaaa09`  
		Last Modified: Wed, 23 Jan 2019 16:17:56 GMT  
		Size: 1.1 MB (1060857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602852a8408b4364f91175882cda4b8d6290b2c204a7f0777b6887b6f4a2f44a`  
		Last Modified: Wed, 23 Jan 2019 16:18:09 GMT  
		Size: 85.8 MB (85763305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c8d4beb4329da1eaeb59a145bd4edb873d0027836c64d6e8ae57391777a9ce`  
		Last Modified: Wed, 23 Jan 2019 16:17:56 GMT  
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
$ docker pull gradle@sha256:1141ed00b698820840e30cfc4c85b6a36da97d4792bba4617b30599886b92965
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164957993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a59ccbe9e414df33db7e6656abdd514244f6d72a566798eace00837ef51737b`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 02:52:52 GMT
ENV LANG=C.UTF-8
# Fri, 25 Jan 2019 02:53:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Jan 2019 02:53:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Jan 2019 02:53:32 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Jan 2019 02:53:40 GMT
ENV JAVA_VERSION=8u181
# Fri, 25 Jan 2019 02:53:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 25 Jan 2019 02:59:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 25 Jan 2019 10:48:04 GMT
CMD ["gradle"]
# Fri, 25 Jan 2019 10:48:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 25 Jan 2019 10:48:06 GMT
ENV GRADLE_VERSION=5.1.1
# Fri, 25 Jan 2019 10:48:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 10:48:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Fri, 25 Jan 2019 10:48:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 25 Jan 2019 10:48:45 GMT
USER gradle
# Fri, 25 Jan 2019 10:48:46 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 25 Jan 2019 10:48:47 GMT
WORKDIR /home/gradle
# Fri, 25 Jan 2019 10:48:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76edf01497c9a4e831ad07bb27cbe0a56f58f853d7abf82120ad17cfd5d08be`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 440.9 KB (440909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0adf5053934b0aa34d6687db0aee4b5208f6a3d542719c88738de21a835b00`  
		Last Modified: Fri, 25 Jan 2019 03:11:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c907cb5f9ae9cc0f66f6904b0389d215f461d9193899965c115ed69562de`  
		Last Modified: Fri, 25 Jan 2019 03:11:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb8905d720c1fa72ab3f4808d9a069291735c11c3120d26394bc135ed130a7e`  
		Last Modified: Fri, 25 Jan 2019 03:12:16 GMT  
		Size: 57.3 MB (57348092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dd141005be3df97bb2f8348f75024f895b04051e9c57219e91443b7325c248`  
		Last Modified: Fri, 25 Jan 2019 10:52:39 GMT  
		Size: 1.1 MB (1055016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9019407e407a3a3a8ed0caa10ed16e8b860f2df5bed19635f5168b557b0ae4`  
		Last Modified: Fri, 25 Jan 2019 10:52:54 GMT  
		Size: 85.8 MB (85763215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27b31cc6b5ea537608cac2c00dea40b8f451fc507c5f8741ec7395bc0972468`  
		Last Modified: Fri, 25 Jan 2019 10:52:39 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; 386

```console
$ docker pull gradle@sha256:d9a4ccb43ac04eaea225b3ca5b60f78f8a031b0e2fab415a7396fceca9bf1495
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177225074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4330afb9ddb6731e367597198849b5b2048cc326bad05a13046858019728dcac`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:58:57 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:58:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 17:58:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 17:58:59 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 17:58:59 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 17:58:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 17:59:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 24 Jan 2019 02:39:51 GMT
CMD ["gradle"]
# Thu, 24 Jan 2019 02:39:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Jan 2019 02:39:52 GMT
ENV GRADLE_VERSION=5.1.1
# Thu, 24 Jan 2019 02:39:57 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 02:39:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Thu, 24 Jan 2019 02:40:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 24 Jan 2019 02:40:02 GMT
USER gradle
# Thu, 24 Jan 2019 02:40:03 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Jan 2019 02:40:03 GMT
WORKDIR /home/gradle
# Thu, 24 Jan 2019 02:40:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce65d679f0c09f017a7a14ac8e4106ac49211945c1a5c56f91fde304a197df42`  
		Last Modified: Wed, 23 Jan 2019 18:24:59 GMT  
		Size: 463.6 KB (463558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efac57406fca5734f97f95b2921ae5baa13b7cfe728f909b095476e96ee25de0`  
		Last Modified: Wed, 23 Jan 2019 18:27:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ccdcc4264095175b1ac8a862bb66c9db39515b7d662494061d3d952f49d4b5`  
		Last Modified: Wed, 23 Jan 2019 18:27:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88e580683b85a03e69b893d8d2c26ab1bf7532915dfd1722fafa3ec40c057fe`  
		Last Modified: Wed, 23 Jan 2019 18:27:49 GMT  
		Size: 66.7 MB (66730044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d331cda182df254313e5e6157638b96cb86693e02bc3ddb2e6fd81c87b3dfc3`  
		Last Modified: Thu, 24 Jan 2019 02:42:14 GMT  
		Size: 1.1 MB (1120704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ab01a5fcbb7c8399016491188f087f7bfd9227a71193418b25e3d6369a23db`  
		Last Modified: Thu, 24 Jan 2019 02:42:21 GMT  
		Size: 85.8 MB (85763137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d39e4574ffdcd0f8dc405d91356687bfab80903a5cc9ba64e3435a750ec013e`  
		Last Modified: Thu, 24 Jan 2019 02:42:13 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:e0213e30a105806ba1b059487a5d5881915cf41435c7e36dc2e8aa48b73dd2dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167917978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e28f4cf25f1376540b57040202549f39cf5a1b3484542c047655fc28dede9d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:19:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:30:46 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:30:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:30:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:31:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:31:04 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:31:07 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:32:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 18:05:43 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 18:05:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 23 Jan 2019 18:05:48 GMT
ENV GRADLE_VERSION=5.1.1
# Wed, 23 Jan 2019 18:06:05 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:06:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Wed, 23 Jan 2019 18:06:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 23 Jan 2019 18:06:26 GMT
USER gradle
# Wed, 23 Jan 2019 18:06:28 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 23 Jan 2019 18:06:32 GMT
WORKDIR /home/gradle
# Wed, 23 Jan 2019 18:06:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d96ccdc14a26f0f9430b22503ce06d0028bbdd769cd9a823ce26eab8def3fdc`  
		Last Modified: Wed, 23 Jan 2019 12:42:53 GMT  
		Size: 449.8 KB (449813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df3d1923aa8181445e19a27eeb1ab84707c654f12bc414618bc4e678ead9dc`  
		Last Modified: Wed, 23 Jan 2019 12:47:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647fd0d189d704a438c7b37a642ff36a6bc08a83469ff028e39adb8a749dabf1`  
		Last Modified: Wed, 23 Jan 2019 12:47:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c182120fed378be5af399a5c0c4839ee549970b67b8d5b9bc19fa37d3a43430a`  
		Last Modified: Wed, 23 Jan 2019 12:47:52 GMT  
		Size: 57.9 MB (57865071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f239b35523eba1e26290d2cc6325217646c719c92a7bd5e611a8280f3279b8e`  
		Last Modified: Wed, 23 Jan 2019 18:13:54 GMT  
		Size: 1.1 MB (1083822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45634fd8817ef88afadc9b8211225e2dcacfbd66dbac2cd6491896463fb2001`  
		Last Modified: Wed, 23 Jan 2019 18:14:06 GMT  
		Size: 85.8 MB (85763330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7507479bf5f45b0267c7bd9341ef79748ad6aeab5f19ee13ca607ab3e035cba`  
		Last Modified: Wed, 23 Jan 2019 18:13:54 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; s390x

```console
$ docker pull gradle@sha256:6f6f0fad53c21d7e3201506defdb8122d3ec758a1b2bcb48e475e93caf16b828
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166720600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb83dbee06b1c7f6ead66aa6b61074f239589d5d8a600d114a8b177123eaf8e`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:17:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:19:52 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:19:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:19:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:19:54 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 13:19:54 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 13:19:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 13:20:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 18:06:39 GMT
CMD ["gradle"]
# Wed, 06 Feb 2019 18:06:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 06 Feb 2019 18:06:39 GMT
ENV GRADLE_VERSION=5.1.1
# Wed, 06 Feb 2019 18:06:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:06:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Wed, 06 Feb 2019 18:06:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 06 Feb 2019 18:06:48 GMT
USER gradle
# Wed, 06 Feb 2019 18:06:48 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 06 Feb 2019 18:06:49 GMT
WORKDIR /home/gradle
# Wed, 06 Feb 2019 18:06:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c438cc50f33a89006d37f9ee58571a62bf167eff7389eff6777b14be5377e640`  
		Last Modified: Wed, 06 Feb 2019 13:22:43 GMT  
		Size: 465.8 KB (465790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d29dfcdade1d644eb5b4cf276402047d11d0b87fa7ba193dd958e26fe60d3e`  
		Last Modified: Wed, 06 Feb 2019 13:24:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfa5c9223ed8aaf543da528ea97f3ec76a14e416035b95f2425c1622647d48`  
		Last Modified: Wed, 06 Feb 2019 13:24:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21ffd5d488af49bd66f887a331ae9ee222342fc24415048424639b01722e63f`  
		Last Modified: Wed, 06 Feb 2019 13:24:53 GMT  
		Size: 57.0 MB (57028448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80f755fcd06b102e4a31246d91fc2e4b7c58176a558cc9086d094b0aa1122b5`  
		Last Modified: Wed, 06 Feb 2019 18:09:12 GMT  
		Size: 1.1 MB (1109289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4fbec29e586b1935161694981b4af11cbeb3be296eaceefc6ce2da424565b2`  
		Last Modified: Wed, 06 Feb 2019 18:09:31 GMT  
		Size: 85.8 MB (85763156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408f643ee834adf7c337b8f06043350905d999b9999a687285d7b1145bb06083`  
		Last Modified: Wed, 06 Feb 2019 18:09:12 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
