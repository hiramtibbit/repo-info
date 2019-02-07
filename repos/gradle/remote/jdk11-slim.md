## `gradle:jdk11-slim`

```console
$ docker pull gradle@sha256:1fef871c3ffedbb40038db6ae837e3aeef06a41bdd3fe9336f27edaad4582187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jdk11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:1663441ce483e96ff0a53fea4d2cd05ddc57dc144f301956dd9d1631e8d7f34d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.6 MB (382596760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a8621427051c522b311838df9e1bc2a8034a40c8dbeaf7ba8fac52871d9afd`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:25:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 08:25:35 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:25:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:25:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:25:37 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:25:38 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 08:25:38 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 08:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 08:26:41 GMT
CMD ["jshell"]
# Wed, 06 Feb 2019 15:33:51 GMT
CMD ["gradle"]
# Wed, 06 Feb 2019 15:33:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 06 Feb 2019 22:21:38 GMT
ENV GRADLE_VERSION=5.2
# Wed, 06 Feb 2019 22:21:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:21:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Wed, 06 Feb 2019 22:21:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 06 Feb 2019 22:21:51 GMT
USER gradle
# Wed, 06 Feb 2019 22:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 06 Feb 2019 22:21:52 GMT
WORKDIR /home/gradle
# Wed, 06 Feb 2019 22:21:55 GMT
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
	-	`sha256:c3e07dee1e7e6bfded60c645d3d9e45bcebe2f8b44e74bf72e08dc1e4fb8c43a`  
		Last Modified: Wed, 06 Feb 2019 08:51:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9703bd99cc4e2d2c93c7346046d96e5ca406f66233267e835c3bee7591a8b092`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0990bb7f893767d87d3ccbed0f56dbfe766648ac7231b2c36b1a9a4d109a35`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436d3fc2ae9e8ef9c8dc0711d6afe85f903f656c395684024839aa15fffd16a3`  
		Last Modified: Wed, 06 Feb 2019 08:52:06 GMT  
		Size: 271.1 MB (271122609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f0da7431a5d6a7ad90bd8b7488422cd76f9bad1ff0d177c7c111a4b6fcf6ed`  
		Last Modified: Wed, 06 Feb 2019 22:24:58 GMT  
		Size: 1.1 MB (1100256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0ae9656edea0f33352947e7df47ea609e40c02ab6e754356558ccdb09b2294`  
		Last Modified: Wed, 06 Feb 2019 22:25:05 GMT  
		Size: 87.4 MB (87417994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817b6020b934e983d556c1850289a5c94087858695faa2799d383087e4c73aad`  
		Last Modified: Wed, 06 Feb 2019 22:24:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:890cbe9dc47d040f36481ba265ec6c1013d098a7e758dea80a461eb8e155fc21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.8 MB (350778952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f1e8136a00750ea9cc7e8721e4a6569b6336682614b70d55bc8f6606318acc`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:22:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:23:04 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 11:23:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:23:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:23:12 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 11:23:13 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 11:23:15 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 11:23:17 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 11:24:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 11:24:30 GMT
CMD ["jshell"]
# Thu, 07 Feb 2019 00:55:04 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 00:55:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 00:55:07 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 00:55:20 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:55:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 00:55:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 00:55:39 GMT
USER gradle
# Thu, 07 Feb 2019 00:55:41 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 00:55:42 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 00:55:47 GMT
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
	-	`sha256:5736af875eb3850d160e7d2c24ea14c08fb1e3b06dde71026d8ac8e54a89f012`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd18ada0624ffb7ed06521f45402c317d320dd620a0666a63439dec7e19a588`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b18bcfcf1e2b8c8c8af44316bfa0362952cccc0478d88a28bf29c604c775b3`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e43f348a81f7e3f7a2a7ba5289c1e165eb5599b1b101a6e4520a0c90422c6f`  
		Last Modified: Wed, 06 Feb 2019 11:37:25 GMT  
		Size: 239.1 MB (239069783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7188bc432e26e45aaff7939c938fa7acf191ff57432aac325e81d9148fa25f9`  
		Last Modified: Thu, 07 Feb 2019 01:01:55 GMT  
		Size: 1.1 MB (1085027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda62a7aac0349106b0748e4b287471d28559783147635565db84b0b6946a2d`  
		Last Modified: Thu, 07 Feb 2019 01:02:04 GMT  
		Size: 87.4 MB (87418133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6907dcd0ec598ff4fcf2e3a933d25b034d83d02bec769a5ae9aac7c4b62f43`  
		Last Modified: Thu, 07 Feb 2019 01:01:55 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; s390x

```console
$ docker pull gradle@sha256:047b2b3ef797001803338dbf8d81e9e3158d5c7eae3133a2791c561bceea82b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350637171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da95aba3b0fee8f35f4f72a88ef8d2849fdcb5dc05011d3f9adbec75fd341f4`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:17:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:17:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 13:17:35 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:17:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:17:36 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:17:37 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 13:17:37 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 13:17:37 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 13:18:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 13:18:20 GMT
CMD ["jshell"]
# Wed, 06 Feb 2019 18:07:39 GMT
CMD ["gradle"]
# Wed, 06 Feb 2019 18:07:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 00:02:23 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 00:02:27 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:02:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 00:02:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 00:02:30 GMT
USER gradle
# Thu, 07 Feb 2019 00:02:31 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 00:02:31 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 00:02:32 GMT
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
	-	`sha256:bd393d6a0d5b33467105251857c9a7c106db438558822f7838cc5302a1ddbcd7`  
		Last Modified: Wed, 06 Feb 2019 13:22:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9d378ec16036c9c56a8a47887bd16124e85b3eb75fbd0e3c59b41e0bdf17e`  
		Last Modified: Wed, 06 Feb 2019 13:22:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6043df0aaf4abf4492efdc0f20ef7027d817d8d71b4e3741253f8246a66d226a`  
		Last Modified: Wed, 06 Feb 2019 13:22:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1311021d5f6b6463e88b11761905559a8900c4b522943040da1ab59bcaf892`  
		Last Modified: Wed, 06 Feb 2019 13:23:01 GMT  
		Size: 239.3 MB (239288971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb5a44f4a42234cca3487d930e314ce2c17421a0d989a2c5d1a47bb7858015b`  
		Last Modified: Thu, 07 Feb 2019 00:05:39 GMT  
		Size: 1.1 MB (1110221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544460174d59b01a7db286a84cbcf9a1d30a4361e50c1b6d801617efc30d62e8`  
		Last Modified: Thu, 07 Feb 2019 00:05:45 GMT  
		Size: 87.4 MB (87418045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af3fbb3e7e9e0b405762eb4a7337653fc46a765b23790f28be4eeb02b490`  
		Last Modified: Thu, 07 Feb 2019 00:05:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
