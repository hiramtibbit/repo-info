## `gradle:jdk-slim`

```console
$ docker pull gradle@sha256:14a5e3cb8f0305828ece38c670ab1ccd95516756a63939ae7bf36acce071c4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `gradle:jdk-slim` - linux; amd64

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

### `gradle:jdk-slim` - linux; arm variant v5

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

### `gradle:jdk-slim` - linux; arm64 variant v8

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

### `gradle:jdk-slim` - linux; ppc64le

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
