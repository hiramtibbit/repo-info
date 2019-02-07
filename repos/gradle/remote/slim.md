## `gradle:slim`

```console
$ docker pull gradle@sha256:9a064f46440b3c320aed7cc62e1914f9dd40ffe6ed7dd734f24676bc474a247c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `gradle:slim` - linux; amd64

```console
$ docker pull gradle@sha256:198a2adffdde5cc042b9124c22492d5ab083049b17018c3dea2a63af099525a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178980411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0656be0793c96adfa0ab1c41217d63e481802e4df4834289b4e2d355f849ac`
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
# Wed, 06 Feb 2019 22:20:23 GMT
ENV GRADLE_VERSION=5.2
# Wed, 06 Feb 2019 22:20:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:20:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Wed, 06 Feb 2019 22:20:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 06 Feb 2019 22:20:39 GMT
USER gradle
# Wed, 06 Feb 2019 22:20:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 06 Feb 2019 22:20:40 GMT
WORKDIR /home/gradle
# Wed, 06 Feb 2019 22:20:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
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
	-	`sha256:56fd2e477c66bf3f5a0e36b94c2ff86fe74883993cb2178eaf5433e1248ea981`  
		Last Modified: Wed, 06 Feb 2019 22:23:56 GMT  
		Size: 1.1 MB (1098875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356273692c3f68aee555fc7f72db198a4b2d2883baa96827d6448a71d988885e`  
		Last Modified: Wed, 06 Feb 2019 22:24:03 GMT  
		Size: 87.4 MB (87418012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68777ec5efd51938b94cd75d2955aecf3d2acafdf2d58a81af785653bdd41cd7`  
		Last Modified: Wed, 06 Feb 2019 22:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d7c0a7cf4d4009b8bf43a957e8b77e82fdd6f7a2251abed04cbcd789627cbec0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166612109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1227cd4a78bac5980099f465fafaba558ff84b2e2420583ba5b5ef90d4d80d3c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:18:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:18:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:18:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:18:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:18:40 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:18:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:20:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:55:47 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 06:55:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 06:55:50 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 06:56:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:56:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 06:56:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 06:56:26 GMT
USER gradle
# Thu, 07 Feb 2019 06:56:27 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 06:56:28 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 06:56:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857c9abd17ad597c20509970fbf55c7260550d870bd68c188e4aef3de5e7e24`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 440.9 KB (440887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af475183dd776a3bc6f1848588e7bed68865d8ed0a3b9d7443228cabd1a92cf3`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efcd9790a6dbfb5bc228474fdafa0870db0d257c606550c02ec06fee85650f2`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe266144f6e27bd5f2c238c2345fa03258299af48b867b9b334328734f02f15`  
		Last Modified: Wed, 06 Feb 2019 12:42:20 GMT  
		Size: 57.3 MB (57347794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da04e329d536cfd4c487deafae9687d94733ca0d7c4fbfb9acf0112564a3726`  
		Last Modified: Thu, 07 Feb 2019 07:06:40 GMT  
		Size: 1.1 MB (1054708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628e377f617f5e3d05aed939618ce677c7134ece871a06408fa4059d84773611`  
		Last Modified: Thu, 07 Feb 2019 07:07:01 GMT  
		Size: 87.4 MB (87417978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f767d2914a28e173310a9f54945e04ab2ed4696983d76408e3c76a618d9181d2`  
		Last Modified: Thu, 07 Feb 2019 07:06:38 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; 386

```console
$ docker pull gradle@sha256:bfc979349e779c69da5a9a45dc900c807f4586f610b569dd23f07dfa5a5c0433
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178879949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f56eeb588b1145e56a53a8e121441ea38853d7826909fa15ee3694b44eb09cf`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:16:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:20:22 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:20:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 13:20:25 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 13:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 13:21:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:47:01 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 07:47:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 07:47:02 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 07:47:08 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 07:47:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 07:47:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 07:47:14 GMT
USER gradle
# Thu, 07 Feb 2019 07:47:14 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 07:47:14 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 07:47:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aa004e8e8a109b6c6d8294b4dcbf5c50576fb117f1e102a8631294a99214f`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 463.5 KB (463543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8618e15556ce477fa6285b881cc9fc48a12885f10859576498803366bd157060`  
		Last Modified: Wed, 06 Feb 2019 13:42:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b2b6cbdddad219f75c5e6a41abe0ca28fdba63f254d491b72f81a7582e4151`  
		Last Modified: Wed, 06 Feb 2019 13:42:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02807f3ce2f62e6fc6bfe162ef13696a1acae722a3b6d3a56e5e7d2bf815c078`  
		Last Modified: Wed, 06 Feb 2019 13:42:34 GMT  
		Size: 66.7 MB (66730162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccd6c033c833dcbab27686ca5612a6a251904e38b39b1d5b257b28b929dba97`  
		Last Modified: Thu, 07 Feb 2019 07:49:50 GMT  
		Size: 1.1 MB (1120764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9175dd53cd5f1ac27cbfdb809be0abe6a23b5cb7bbd64a8a883ea080bc0dca`  
		Last Modified: Thu, 07 Feb 2019 07:49:58 GMT  
		Size: 87.4 MB (87417991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c835a514cabaabe907fe36196ca8ca5006150460df60572735420fc01b80765`  
		Last Modified: Thu, 07 Feb 2019 07:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:2b7a3fa153666f1c7a1490eee18d687434ab9968952972027ae5833d324c629f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169572879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783178025d0eda945dae1c8a6d96ad0677a5fe9e5e6e2e9ef04bd9ebdce8a9e9`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:22:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:28:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:28:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:28:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 11:28:38 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 11:28:40 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 11:28:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 11:30:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 00:52:14 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 00:52:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 00:52:17 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 00:52:30 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:52:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 00:52:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 00:52:44 GMT
USER gradle
# Thu, 07 Feb 2019 00:52:46 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 00:52:50 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 00:52:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dc20b3ce8c37688658ff595852548d704112b0ebb0d3af8f062192264d7928`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 449.8 KB (449778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df626ed30eb0652e5b003b710a3985d4da8fab9380d73d6a527844dd558869f3`  
		Last Modified: Wed, 06 Feb 2019 11:40:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54567a4b75a7a615e048f4a48fd5d655f74096e529371baffad947f1bcb99d8`  
		Last Modified: Wed, 06 Feb 2019 11:40:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5358ac0cd926cef22bc89f7283c7db568f6a01da85156170540235fa5cfbffdc`  
		Last Modified: Wed, 06 Feb 2019 11:40:14 GMT  
		Size: 57.9 MB (57865224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb90751d7ac057ec51204ca7f2201ec5866ef8a41c603a1dfd6a2a296f69efb`  
		Last Modified: Thu, 07 Feb 2019 00:59:49 GMT  
		Size: 1.1 MB (1083749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d67426985a5eb4f10dc4388ed02fea58cca44d4359508ac188ba67de427a6b`  
		Last Modified: Thu, 07 Feb 2019 00:59:57 GMT  
		Size: 87.4 MB (87418122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b42054d26763e35abaf00b5451e839401cf2320f484f3aaa30da7d31c6eefd0`  
		Last Modified: Thu, 07 Feb 2019 00:59:48 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; s390x

```console
$ docker pull gradle@sha256:8debedccc96f083e7bc364f35cf94932e0dc52be753c142036626972b23a5495
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168375410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b8ab0394d9cb0abde5c0c9f7b9f84c1ea127641257999f2d742f06057b1979`
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
# Thu, 07 Feb 2019 00:01:28 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 00:01:32 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:01:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 00:01:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 00:01:36 GMT
USER gradle
# Thu, 07 Feb 2019 00:01:37 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 00:01:37 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 00:01:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
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
	-	`sha256:b86ff5944eafd04cfc418ff10cc30236a3eecffa786b77e1b4277cfa4c2ac649`  
		Last Modified: Thu, 07 Feb 2019 00:04:23 GMT  
		Size: 1.1 MB (1109303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fca7fbacd3db350fe41375f2ee89741125d76bf3d1666ccf9d8d12bc8ca381`  
		Last Modified: Thu, 07 Feb 2019 00:04:29 GMT  
		Size: 87.4 MB (87417951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4739f5464336cf03e11e60c069ec1caf6c4c37b097f095da1e85fc3c601b593`  
		Last Modified: Thu, 07 Feb 2019 00:04:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
