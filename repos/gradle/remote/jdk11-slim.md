## `gradle:jdk11-slim`

```console
$ docker pull gradle@sha256:7e93eccad2f0c4369acae65941825c1a468b168ec193f1c994370bac5dcb63cb
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

### `gradle:jdk11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:5d4cfbbdf6bf0eb2bee58272172566228327725d70252ad04f270a86e98f4289
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.1 MB (381097142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070c70766395fd3a9569f0f33fcd7bde2c23abfbcba5922251764262ea7d73dd`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:59:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 08:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 08:30:51 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 08:30:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 08:30:53 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 08:30:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 08:30:53 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 08:30:53 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 00:22:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 00:22:29 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 00:55:48 GMT
CMD ["gradle"]
# Fri, 28 Dec 2018 00:55:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 28 Dec 2018 00:55:48 GMT
ENV GRADLE_VERSION=5.0
# Fri, 28 Dec 2018 00:55:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 00:55:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Fri, 28 Dec 2018 00:56:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 28 Dec 2018 00:56:00 GMT
USER gradle
# Fri, 28 Dec 2018 00:56:01 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 28 Dec 2018 00:56:02 GMT
WORKDIR /home/gradle
# Fri, 28 Dec 2018 00:56:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6dd39b85823bd8b7dedf55493b2571443143909aa32cecfcce74bf0280d18`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 454.8 KB (454816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d96dc2d8d59f4244c0b28889d27a9aab69b8afa47cb74b815e5d2a75c6f7023`  
		Last Modified: Wed, 26 Dec 2018 08:38:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a906637ab91018abc08fc7097f11f2f4424f7fd54d216b0164b1fdbe05b14a7e`  
		Last Modified: Wed, 26 Dec 2018 08:38:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e1b9b66435b310d1b163c7e01932452be678482da76134fa79c630f8733ef`  
		Last Modified: Wed, 26 Dec 2018 08:38:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ab1399b606ffbd7e9fbb570f364c1b4e11dc1bfc8b3be6c01d2f9388fca69d`  
		Last Modified: Fri, 28 Dec 2018 00:28:06 GMT  
		Size: 271.6 MB (271570141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dea33479a92667b632fe749b5381534f1ffeabd5cae1c2b1341728069f902e6`  
		Last Modified: Fri, 28 Dec 2018 00:57:19 GMT  
		Size: 1.1 MB (1100044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ebb260e1a34f9f09de489603a37161db07baa868da157fc420e48014289889`  
		Last Modified: Fri, 28 Dec 2018 00:57:25 GMT  
		Size: 85.5 MB (85485120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1dd4281367c5e87496b70d38f3fd638868a173435a9a7a08763f9ffb2a51a4`  
		Last Modified: Fri, 28 Dec 2018 00:57:19 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:07815b40ba936e5c5d2bb135733630ca395a1c3f9f6b9418675938ee945bc4a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317159650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e81591d93ef8cf8b22f7ef22d8807e833842d244eff06fd07b7a7f87c56a543`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:52:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:52:21 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:52:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:52:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:52:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:52:26 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:52:26 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:54:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:54:14 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 11:22:39 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 11:22:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 11:22:39 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 11:22:49 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 11:22:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 11:22:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 11:22:58 GMT
USER gradle
# Wed, 26 Dec 2018 11:22:59 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 11:22:59 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 11:23:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170d2c781892c05bd05b5c851c59acbae264c3e02d21a48a19aa82348b10a947`  
		Last Modified: Fri, 16 Nov 2018 19:04:05 GMT  
		Size: 447.7 KB (447702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2cf9cabec3008eec5dbaaf493693b467c5a394ab1e0c4ee7559ee11986d8f0`  
		Last Modified: Wed, 26 Dec 2018 10:03:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafd32ba7dd43cb20c5532c18ec4478f97fddc409e201c33cb66666df4bd2cf2`  
		Last Modified: Wed, 26 Dec 2018 10:03:59 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6894bf63be1b8a2e1987c78af2a896053d043c73f932afb583a56f5aedd0367`  
		Last Modified: Wed, 26 Dec 2018 10:03:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdb72f19bfa89a93919f90496cdde09a21052876316f126d31a68c0498d0013`  
		Last Modified: Wed, 26 Dec 2018 10:04:34 GMT  
		Size: 209.0 MB (209001025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43527611e6c5a86e4ccb99213d611b4c6a5db7b7ca9b338934e54747645cf01f`  
		Last Modified: Wed, 26 Dec 2018 11:27:14 GMT  
		Size: 1.1 MB (1061988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c15cbd65124947db238d05546c835b867700b25a70af943040ffe2a9f4c7f13`  
		Last Modified: Wed, 26 Dec 2018 11:27:26 GMT  
		Size: 85.5 MB (85485084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de0e6e0064f6615f7d2079cd450056430318a5cc524c2baf70f07113728be4c`  
		Last Modified: Wed, 26 Dec 2018 11:27:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:89c649941973ec48773ba191bac016e2acc030037e2cbcdcb8bceac84f9377c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 MB (334550941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794996d741292de85006c3b7d30798610b144dc12aefb6e58663c7962c4e9815`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 15:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:07:10 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 13:07:10 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 13:07:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 13:07:13 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 13:07:14 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 13:07:14 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 13:07:15 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 13:08:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:08:07 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 13:40:39 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:40:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:40:40 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:40:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:40:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:40:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:40:56 GMT
USER gradle
# Wed, 26 Dec 2018 13:40:57 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:40:57 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:40:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900b7f980d02b18fd554d5a5409355f8f3dcf17d873c9b6c50864ae9348b2fd3`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 430.6 KB (430585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476b041cd72a707f94d9ccee494ab21c2bb259e94f61c0209733f267c0f1535f`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f51b9d669394d576afa25b79f8b21d40a10f97cec48c59e7100fcfc79306b`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a79fe6b3ae7f7915662a0b94e1ecea77fa5546a444cec260667337730ea4b27`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41daa18b9617904674c44d18c2394b278f1c5a1f9431686af21bd94f1a75cb1d`  
		Last Modified: Wed, 26 Dec 2018 13:21:42 GMT  
		Size: 228.3 MB (228329357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de41dce603954f2f7bc331864c70d8df5a6d7128bd0390a6f753b2380027b838`  
		Last Modified: Wed, 26 Dec 2018 13:42:39 GMT  
		Size: 1.0 MB (1034989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8565341295d592712217872f1c1443c9bf7cac3b9a8d9e3838f268c0ad8d8c7`  
		Last Modified: Wed, 26 Dec 2018 13:42:50 GMT  
		Size: 85.5 MB (85485110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9977b5d3d297d64ff95ce773c81c4b0760a31d95e998e9d24ef9a50eb7b1d54`  
		Last Modified: Wed, 26 Dec 2018 13:42:38 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:265eb27c01897571fb4bb2f7d42c3f0401b73d4e3bc8b1595159734246ebc55c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.9 MB (355914891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee330cfee42a72d2641349423377ec3f1580019574132f23eaacf18efc89ffc`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:55:02 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:55:03 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:55:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:55:09 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:55:09 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:55:10 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:55:11 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:57:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:57:27 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 13:05:29 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:05:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:05:33 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:05:57 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:05:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:06:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:06:13 GMT
USER gradle
# Wed, 26 Dec 2018 13:06:14 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:06:15 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:06:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d594caf9c11b4dd5588375b02cdab683c1f3ff4e66526d98aa006e849a8dea`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 440.9 KB (440857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ceae6d030cc01625eb8d6e7669a42e3416a2eb26b87ea4ebc3ab18741840f3`  
		Last Modified: Wed, 26 Dec 2018 10:24:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4f72fa75e7c380c29379ea5a108155f20935f0378e9394a20e2049d7fe81d1`  
		Last Modified: Wed, 26 Dec 2018 10:24:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4db83c7f04ee2f516c0244814c0f273a9b67b7ab50da20a8199b5462a2a16f`  
		Last Modified: Wed, 26 Dec 2018 10:24:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0f1f8a3b4117adabfeb6534a7ee10e6841ad2c7302424970ba9534be1440f6`  
		Last Modified: Wed, 26 Dec 2018 10:25:03 GMT  
		Size: 248.6 MB (248601117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39829d3c709ec8cd37dda22c5082039d9f18542e3e73e392db33d40b80f41064`  
		Last Modified: Wed, 26 Dec 2018 13:12:02 GMT  
		Size: 1.1 MB (1055710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1aad5a31e8c75170605e64a2b6f89243b43a83680a63b698ffc285448bd8986`  
		Last Modified: Wed, 26 Dec 2018 13:12:15 GMT  
		Size: 85.5 MB (85485089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd071789266ac3a32de42dccef7625fb49c39e74bd9233f7c0959a64aceeb7f9`  
		Last Modified: Wed, 26 Dec 2018 13:12:02 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; 386

```console
$ docker pull gradle@sha256:6b6f3d28ce962bf8e6f734246330c7184cb7bef40babb8ea61e8d11fe1ffce6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.6 MB (443630559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c47321998473d4b813424508aae94bf41bb1ab6f816562719e02eca9bdfab2`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 14:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:10:01 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:10:01 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:10:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:10:02 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:10:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:10:03 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:10:03 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 12:10:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 12:10:58 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 14:44:42 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 14:44:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 14:44:43 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 14:44:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 14:44:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 14:44:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 14:44:53 GMT
USER gradle
# Wed, 26 Dec 2018 14:44:53 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 14:44:53 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 14:44:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d03dee212f9be81a5e3d859461fb2bb45b3e94124fc8ff506a0cc3ad8828de`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 463.5 KB (463502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac8302da9a3c395d39895e696589ca5ef94c964ffec011686a3c0c01f74ac07`  
		Last Modified: Wed, 26 Dec 2018 12:17:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f3df12f603f01cbaf89dafe5877a0d53cf9e601d577e494db82287258e12c`  
		Last Modified: Wed, 26 Dec 2018 12:17:05 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db633c3217f720b875526678c1e412c6358fff0284d03961abdbcd9f986c71`  
		Last Modified: Wed, 26 Dec 2018 12:17:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8729320519d3efc0b48de1d082e8abda19402c7df479b9ea1dd8338820ba68fc`  
		Last Modified: Wed, 26 Dec 2018 12:17:38 GMT  
		Size: 333.4 MB (333432642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac92424f940e89b4973fd84d3921ad4b3aaa566a6b482d058165e56f3230f7bc`  
		Last Modified: Wed, 26 Dec 2018 14:47:26 GMT  
		Size: 1.1 MB (1121792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d561697f1143f700b666cc8925276f5ef0819ce88d856bd3008c59b8fbcfc892`  
		Last Modified: Wed, 26 Dec 2018 14:47:33 GMT  
		Size: 85.5 MB (85485105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2502075b2b0bd4548b166a739bd7148fd10caa5f277301b51196328510147a39`  
		Last Modified: Wed, 26 Dec 2018 14:47:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:1516c8eec44f6c0866747b791d2ce759ba8e0a9075bde1e1540cb099ba72ee3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.6 MB (348621729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fefc1ddb9d99fdd1ff11e4727de3ecdd161a32cd0ddfebe1f600eaaf03a4fb59`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:11:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:44:44 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:44:46 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:44:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:44:55 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:44:56 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:44:58 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:45:00 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:47:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:47:15 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 11:25:53 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 11:25:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 11:25:57 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 11:26:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 11:26:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 11:26:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 11:26:27 GMT
USER gradle
# Wed, 26 Dec 2018 11:26:29 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 11:26:30 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 11:26:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4afa5814d1a6b68fcdc7af12ef2fb2e6f8776d66c8deb23ca45c4577c7377`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 449.8 KB (449757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c904011265ab36e8915132a638b7332b1dabc10069b2da304a57d9318ec4d33`  
		Last Modified: Wed, 26 Dec 2018 10:07:11 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ce3e1f8c7f710ac4f39df74c8132543c55adaaa9b38f6a5a7ed3fc85c13202`  
		Last Modified: Wed, 26 Dec 2018 10:07:11 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f070f0bdfd41eca56db8b740dd969cd24a4be430178e2ad179123c2877a510`  
		Last Modified: Wed, 26 Dec 2018 10:07:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db97854dd2fecbe882dd8bde139651ca79f1c7b5dae38f938b0b2be449d84a47`  
		Last Modified: Wed, 26 Dec 2018 10:07:42 GMT  
		Size: 238.9 MB (238860299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4251c89d834155cf99ea92c1f891cf4a04e2a1350d373ed9a9bff92e8d402e3d`  
		Last Modified: Wed, 26 Dec 2018 11:32:05 GMT  
		Size: 1.1 MB (1084995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad8c9c57cf6ff80dda72926080064c2480a8aabce56dd91107ff2d2e3b57672`  
		Last Modified: Wed, 26 Dec 2018 11:32:12 GMT  
		Size: 85.5 MB (85485118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44e06de76722cb2daa9e29ad768264d026778ae354c9e7f98ec7878773b510`  
		Last Modified: Wed, 26 Dec 2018 11:32:05 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; s390x

```console
$ docker pull gradle@sha256:0b5f610e28b29fb1194202d8c71fff9a6fc87d38d0d99e5129f088363447c1a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.5 MB (348483241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16959e2c135b9a1edb55724cbc510606129d475cbb8a363541ca7cdc61cc95ea`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:50:40 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:50:40 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:50:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:50:42 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:50:42 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:50:42 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:50:42 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 12:51:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 12:51:22 GMT
CMD ["jshell"]
# Wed, 26 Dec 2018 13:25:23 GMT
CMD ["gradle"]
# Wed, 26 Dec 2018 13:25:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 26 Dec 2018 13:25:24 GMT
ENV GRADLE_VERSION=5.0
# Wed, 26 Dec 2018 13:25:28 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:25:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
# Wed, 26 Dec 2018 13:25:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 26 Dec 2018 13:25:32 GMT
USER gradle
# Wed, 26 Dec 2018 13:25:32 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 26 Dec 2018 13:25:33 GMT
WORKDIR /home/gradle
# Wed, 26 Dec 2018 13:25:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6157ac9f3410bc63644625b3b3e9e96c963afd7910ae0697792db57813ee79a6
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d91749347b96136484261ecd380323abe2a6e1239b2fc43f11ac5b40645a54`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 465.7 KB (465732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44a65d3003a9dabaca41cfc5c87e9d5ff74b126c3b47154595a0b3bfd1d5ff5`  
		Last Modified: Wed, 26 Dec 2018 12:56:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2500f21734917b5d530dab564ebc047ff69588f3a2fa79da0c0b6a3255f403c8`  
		Last Modified: Wed, 26 Dec 2018 12:56:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78811acc3b9307db867f591c50a41e851c9e47096f2814c6e7c08bd2db1e3b`  
		Last Modified: Wed, 26 Dec 2018 12:56:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a3ab96b46e16df15a69255c0dc41a2f08b7f25c3fd082e03e430306956f378`  
		Last Modified: Wed, 26 Dec 2018 12:56:47 GMT  
		Size: 239.1 MB (239086752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e93a8f882703a0a9ce17d7d18779dab618d50e87cfb54e656ee421ff06e6a9`  
		Last Modified: Wed, 26 Dec 2018 13:28:45 GMT  
		Size: 1.1 MB (1110149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a04540d4f446642caf15d9b087f86b98a4a878c0c09f7e9e7e540114f5fbc5`  
		Last Modified: Wed, 26 Dec 2018 13:28:51 GMT  
		Size: 85.5 MB (85485084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e47c1f2d39b000212ea38a351a23aa6942dbaa65b1a1e11de15659a0e289a6`  
		Last Modified: Wed, 26 Dec 2018 13:28:44 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
