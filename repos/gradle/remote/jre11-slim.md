## `gradle:jre11-slim`

```console
$ docker pull gradle@sha256:32891345cd647ef3bc01c04dbe651a4a7457a4bf5e79d29b3cedecd99b2e999e
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

### `gradle:jre11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:caf7e2d8736cc207059a871e126d6c7145ec571ad0493e233f76c34113e7b707
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187033231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83b3367e086678c70c6969cd64fdaa0a0ab4f965490983ad4781f05d09dab2d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:54:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 02:54:21 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:54:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 02:54:24 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 02:56:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:48:39 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 10:48:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 03 Jan 2019 02:21:20 GMT
ENV GRADLE_VERSION=5.1
# Thu, 03 Jan 2019 02:21:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 02:21:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
# Thu, 03 Jan 2019 02:21:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 03 Jan 2019 02:21:29 GMT
USER gradle
# Thu, 03 Jan 2019 02:21:29 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 03 Jan 2019 02:21:29 GMT
WORKDIR /home/gradle
# Thu, 03 Jan 2019 02:21:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
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
	-	`sha256:0bd3e7cdb7598b8fa0a59f7e3a30e4b0004d9e66fe8d3e2f43a5eecfa646b842`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0b10575b21db56a473d5c1a3633bd1f411b74536bb6aec22f0ea04889b1c61`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e429842a7076cd1d06b9b635993971d64b7a9b08f5cfc1f1ef5fba4ff2653f`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1914679ae4f28733f5360fbd6ea2d90f49df8906d7dcf5ec1a1f64955ed7cb84`  
		Last Modified: Sat, 29 Dec 2018 03:24:10 GMT  
		Size: 77.2 MB (77208431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b8ab0eddcf52da1b901afb1660eae678345d98ee74da0e24898fd3057f22c3`  
		Last Modified: Thu, 03 Jan 2019 02:24:04 GMT  
		Size: 1.1 MB (1099110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c57c8cae98e1aac872c6ce5c8a0de17f7ed5d317ae350c062e048511a14426`  
		Last Modified: Thu, 03 Jan 2019 02:24:10 GMT  
		Size: 85.8 MB (85777208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f677c6581a667c9cc6fd7e298e602dea68d4fd3905fe51003ecbebdebaa4e72`  
		Last Modified: Thu, 03 Jan 2019 02:24:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:50ecd3c1554b507a56eb4ef8a81d996c41d85c7a06a1eff4240e3942d9f59755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169447319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70db883dd88e797a6cf7584c98830d007019718c64863a54f8a0c1aa1b3ac75`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:26:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:26:06 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 10:26:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 10:26:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 10:26:10 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 10:26:11 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 10:26:11 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 10:26:11 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 10:31:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 13:54:40 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 13:54:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 03 Jan 2019 09:51:08 GMT
ENV GRADLE_VERSION=5.1
# Thu, 03 Jan 2019 09:51:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 09:51:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
# Thu, 03 Jan 2019 09:51:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 03 Jan 2019 09:51:27 GMT
USER gradle
# Thu, 03 Jan 2019 09:51:28 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 03 Jan 2019 09:51:28 GMT
WORKDIR /home/gradle
# Thu, 03 Jan 2019 09:51:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
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
	-	`sha256:0b405e3799a331a7e9f189faae67f494dcaa058b62b90890a89eecb23810209b`  
		Last Modified: Sat, 29 Dec 2018 10:41:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c94c474287cf8161b3f49d49b4e9e6c326951c94d454e29f9d94d3363a1eab`  
		Last Modified: Sat, 29 Dec 2018 10:41:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c392337d850194b18a8016c0ce76f38c856c354db5b169b605f910683c97e7e5`  
		Last Modified: Sat, 29 Dec 2018 10:41:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95366f48520774aee08d68e5edf031ae85c6d0a69bfdc4c79106fd156644d3e0`  
		Last Modified: Sat, 29 Dec 2018 10:43:29 GMT  
		Size: 61.0 MB (60992618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c75691b3614ebbb82a187de148c1b2aca2d8c77fdf0007f06c6795970cb77a`  
		Last Modified: Thu, 03 Jan 2019 09:54:57 GMT  
		Size: 1.1 MB (1061182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f84cecc1c3823d24b6bf0c5adb1255e4237510311d6ffd120ceddb087a9535`  
		Last Modified: Thu, 03 Jan 2019 09:55:11 GMT  
		Size: 85.8 MB (85777224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77646b4c1c201193fd8951c5be0f784f50ab4957ede2cf8862350932e3e5930`  
		Last Modified: Thu, 03 Jan 2019 09:54:57 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:0ba115421ef3bf970fb321da6985fa7e4f5a16459d082d042f0f667d86afd627
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169663239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e5417bd32e884d7b666937fc5ba970e85290ec7fd11fd30d6e200d8b074a1c`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:21:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:21:26 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 15:21:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 15:21:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 15:21:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 15:21:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 15:21:30 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 15:21:31 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 15:25:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 03 Jan 2019 12:59:52 GMT
CMD ["gradle"]
# Thu, 03 Jan 2019 12:59:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 03 Jan 2019 12:59:53 GMT
ENV GRADLE_VERSION=5.1
# Thu, 03 Jan 2019 13:00:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 13:00:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
# Thu, 03 Jan 2019 13:00:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 03 Jan 2019 13:00:08 GMT
USER gradle
# Thu, 03 Jan 2019 13:00:08 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 03 Jan 2019 13:00:09 GMT
WORKDIR /home/gradle
# Thu, 03 Jan 2019 13:00:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb3f97bc1d1af816dab1d0c34bdee2dd10480a5c94ddb520613481aad6f7aa0`  
		Last Modified: Sat, 29 Dec 2018 15:47:37 GMT  
		Size: 430.6 KB (430593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c70810dc9c0beeb995649de482f54337ffb3203094927c2e8067ad7f2ffeacc`  
		Last Modified: Sat, 29 Dec 2018 15:47:37 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81f0be291af0b884d7d754b851efba1c51762264275553dff3de4a94e370869`  
		Last Modified: Sat, 29 Dec 2018 15:47:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860e3685116292e6496525cf8cd77745db18762b3da3d68849999a1e4ef3e01d`  
		Last Modified: Sat, 29 Dec 2018 15:47:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3589c8f47a693ef46ead2cb6bf025aac97ccfdfdf798e6ee38bb695c4ec39263`  
		Last Modified: Sat, 29 Dec 2018 15:49:59 GMT  
		Size: 63.1 MB (63142660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818b7ff7ade35223114a7650e63998fdca22d92c7c5e31801d3eba435267ccd6`  
		Last Modified: Thu, 03 Jan 2019 13:03:40 GMT  
		Size: 1.0 MB (1034174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13b1ffa97fbdf378de819998809e59e923d55cc6a1d6c80e9b42132dec7bbb9`  
		Last Modified: Thu, 03 Jan 2019 13:03:53 GMT  
		Size: 85.8 MB (85777222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5f66b6bee38cc661361881a14eb32e25e8d629f62be3dca37830650702d6f0`  
		Last Modified: Thu, 03 Jan 2019 13:03:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:dd8536d3bfa523ec703704bbf19b765eba04cf39bad670df51df6183b4423aca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176197975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14bbd0108eac604527d3df6a40c4dac8eeb294e7b3dbf7096e0d905a048d136e`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:55:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:55:02 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 16:55:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 16:55:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 16:55:13 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 16:55:14 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 16:55:14 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 16:55:15 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 17:05:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 03:18:14 GMT
CMD ["gradle"]
# Sun, 30 Dec 2018 03:18:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 03 Jan 2019 09:45:56 GMT
ENV GRADLE_VERSION=5.1
# Thu, 03 Jan 2019 09:46:20 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 09:46:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
# Thu, 03 Jan 2019 09:46:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 03 Jan 2019 09:46:34 GMT
USER gradle
# Thu, 03 Jan 2019 09:46:35 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 03 Jan 2019 09:46:36 GMT
WORKDIR /home/gradle
# Thu, 03 Jan 2019 09:46:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
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
	-	`sha256:382decf6a4a0d364fa98337d3a351be64a1f28367d3d460321eef95c567b40e9`  
		Last Modified: Sat, 29 Dec 2018 17:24:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6a4cd7fe0bfced0808ef781bc670495da4ff23c99dc089a4853234b15f6f7b`  
		Last Modified: Sat, 29 Dec 2018 17:24:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950e9386b3b78714c4895f6d253d2cebbc40d030d5ce5da6bad39025141b6210`  
		Last Modified: Sat, 29 Dec 2018 17:24:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d220576068e097b420fee296fbd11332bb7ec7c46f167080c397c40e93cfbd`  
		Last Modified: Sat, 29 Dec 2018 17:27:26 GMT  
		Size: 68.6 MB (68586672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630858cbe470b20d9b42d2ce0c27168474c04926737444ebcbc067d52f744f03`  
		Last Modified: Thu, 03 Jan 2019 09:52:24 GMT  
		Size: 1.1 MB (1054893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a371cd4827739629150aa81b67dc59137e6c0d8b2e9d00f92e5ffb6170bf8a7`  
		Last Modified: Thu, 03 Jan 2019 09:52:39 GMT  
		Size: 85.8 MB (85777245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf507507041816f28bd4be1e75d56c3f5ca97cc5a4e1358bdc4a5dc78f54ec3`  
		Last Modified: Thu, 03 Jan 2019 09:52:24 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; 386

```console
$ docker pull gradle@sha256:58fe72c8e44f13e7cd33bbc74e8fc20d5624769c24875620c7476da39a5b8554
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (191993630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2a04690901a6a1ef78268e8ca1cfdd4271ae5d86a2ca0bac8b16fb60ab8943`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 20:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:50:51 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 20:50:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:50:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:50:53 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:50:53 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 20:50:53 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 20:50:53 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 20:53:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 05:22:32 GMT
CMD ["gradle"]
# Sun, 30 Dec 2018 05:22:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 03 Jan 2019 11:40:23 GMT
ENV GRADLE_VERSION=5.1
# Thu, 03 Jan 2019 11:40:28 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 11:40:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
# Thu, 03 Jan 2019 11:40:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 03 Jan 2019 11:40:33 GMT
USER gradle
# Thu, 03 Jan 2019 11:40:34 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 03 Jan 2019 11:40:34 GMT
WORKDIR /home/gradle
# Thu, 03 Jan 2019 11:40:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
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
	-	`sha256:8570be7d937549188cee8d07c2782fa8cdd90bc94441c1f4dd966a8ffcce80dd`  
		Last Modified: Sat, 29 Dec 2018 21:20:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23da6e2bb55f783eb45023ea210fcf33e9786941393afab95fbd4ed05f60af0`  
		Last Modified: Sat, 29 Dec 2018 21:20:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d3ecf41c800a5879e7dc40b64ed0cf941da6eea795d34b5c3b14e2603f6fbe`  
		Last Modified: Sat, 29 Dec 2018 21:20:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dbe25455939a5ec483f5cf15b50ba8b4d5643329d5dcca5a83e6a96b85e523`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 81.5 MB (81498069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86220bf42423f2e62d178ae9e7c820c0ad8d0feeb193bf5cd86bcf7dd4bca66c`  
		Last Modified: Thu, 03 Jan 2019 11:43:17 GMT  
		Size: 1.1 MB (1120932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756e566bff334b339132057a01eb6800b4acb3c6bb2cfba7c5a07b6c9442fa9d`  
		Last Modified: Thu, 03 Jan 2019 11:43:25 GMT  
		Size: 85.8 MB (85777209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353413a9554802e0aaa6f5da9d1df6cf3c73c317545e227fbe34bb913dd2bada`  
		Last Modified: Thu, 03 Jan 2019 11:43:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:50192d064eec0afb95ae01e4a9ff421418ffb52f2312182ef2e1c90019753e0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175289130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7512cd74b59acfa001fdc4cf85d6fab14121d01b24e8c89d05424148ba94a4`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:24:22 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 12:24:23 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:24:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:24:32 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:24:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 12:24:36 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 12:24:39 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 12:33:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 18:17:00 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 18:17:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 03 Jan 2019 09:26:02 GMT
ENV GRADLE_VERSION=5.1
# Thu, 03 Jan 2019 09:26:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 09:26:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
# Thu, 03 Jan 2019 09:26:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 03 Jan 2019 09:26:41 GMT
USER gradle
# Thu, 03 Jan 2019 09:26:44 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 03 Jan 2019 09:26:47 GMT
WORKDIR /home/gradle
# Thu, 03 Jan 2019 09:26:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
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
	-	`sha256:85c8611c9028346cf8686642cf26a227b59583cf3fa170f637fc0bb37838c1b1`  
		Last Modified: Sat, 29 Dec 2018 12:55:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c41e61a63c9fc3712b4e06f68fdc1e3a31aa0ce9564a4ab9faba5fd7b472d5`  
		Last Modified: Sat, 29 Dec 2018 12:55:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54b9fbb40727b54869e365beecde23eee8a3c68b65ef1e248f9f3d5bed4cd9d`  
		Last Modified: Sat, 29 Dec 2018 12:55:08 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85df9e5c9cd7c0443f5f6f3ff8ecebeeb4b44da5dbf601e127bb8c4a3e3cc1b0`  
		Last Modified: Sat, 29 Dec 2018 12:58:04 GMT  
		Size: 65.2 MB (65230147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5614037fa0739079d3ade34ad1f019f0d4ce2d049ea26e63c1ade3267372f5e4`  
		Last Modified: Thu, 03 Jan 2019 09:32:26 GMT  
		Size: 1.1 MB (1084242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df08da11fb80e3e6bbd64efc9a677de93983b3c1e9db5308e2307a2be2ed6cd8`  
		Last Modified: Thu, 03 Jan 2019 09:32:34 GMT  
		Size: 85.8 MB (85777246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e570e55070882839b945addc19404fe19089bee65955a2178a374d70e8d812fd`  
		Last Modified: Thu, 03 Jan 2019 09:32:25 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; s390x

```console
$ docker pull gradle@sha256:b5638c11c67d114bbdd1376bb62fe309a27e6ba4a08f93c0b8af48417e2db172
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.4 MB (174428285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbf4ac9feebe11bbe7a77c0eb10e4c4cd2ecf4ae01283904534cfe90bc0e57d`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:52 GMT
ADD file:35c030887198a067338539b6bd96e04ff649537c38542febcb7e0ccd2a3d90c8 in / 
# Sat, 29 Dec 2018 12:43:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:25:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 14:25:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:25:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:25:09 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:25:09 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 14:25:09 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 14:25:10 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 14:27:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 17:51:17 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 17:51:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 03 Jan 2019 12:43:52 GMT
ENV GRADLE_VERSION=5.1
# Thu, 03 Jan 2019 12:43:57 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 12:43:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
# Thu, 03 Jan 2019 12:44:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 03 Jan 2019 12:44:02 GMT
USER gradle
# Thu, 03 Jan 2019 12:44:02 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 03 Jan 2019 12:44:02 GMT
WORKDIR /home/gradle
# Thu, 03 Jan 2019 12:44:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7506638a380092a0406364c79d6c87d03d23017fc25a5770379d1ce23c3fcd4d
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
	-	`sha256:5d60b647a0242aa92a981504f447df67b0e26b1818ea99ad5835d045be228298`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b189769be120b8ff7821335238ca0ae9462b09b30eb2f8d98b2c0c99d539175a`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29225b33a7ddd86907cb5e6157a920530d85b715347f5c98c0d64e847a7fda1`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02614f1db6d4eee1614d899e8a572b5652358c47d43762c78bc5a2c564d6b15`  
		Last Modified: Sat, 29 Dec 2018 14:33:03 GMT  
		Size: 64.7 MB (64733731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3f1fbc990ca166415fc4950981a7276157539cddc53c7d16611b4ae4559f87`  
		Last Modified: Thu, 03 Jan 2019 12:47:05 GMT  
		Size: 1.1 MB (1109414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609f359034405b1554546d9f0705e4747ddcf5f61f204baadbb828f75ae2eafb`  
		Last Modified: Thu, 03 Jan 2019 12:47:10 GMT  
		Size: 85.8 MB (85777202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c237984ddbf28b3981e5b49584715be28eca41bfe6585262b0b5ab5a35e2c1c`  
		Last Modified: Thu, 03 Jan 2019 12:47:04 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
