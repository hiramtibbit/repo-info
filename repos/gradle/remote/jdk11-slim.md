## `gradle:jdk11-slim`

```console
$ docker pull gradle@sha256:b441de9be86341a96abae6f0ed17330e7b3645f807502d28a88edfbdc42a6e14
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
$ docker pull gradle@sha256:b97a7dc92c6f9980005353f21d24e407a211767572381494968d0e0cb0c33f64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.4 MB (382401407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f524f7907b26cc27ef0f5923481d8a625c479312154bcb2ef21395988c5fdec9`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:00:45 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 04:00:45 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:00:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:00:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:00:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:00:46 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 04:00:47 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 04:01:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 04:01:33 GMT
CMD ["jshell"]
# Tue, 05 Mar 2019 13:19:26 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 13:19:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 20 Mar 2019 22:53:10 GMT
ENV GRADLE_VERSION=5.3
# Wed, 20 Mar 2019 22:53:18 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 20 Mar 2019 22:53:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 20 Mar 2019 22:53:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 20 Mar 2019 22:53:24 GMT
USER gradle
# Wed, 20 Mar 2019 22:53:24 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 20 Mar 2019 22:53:25 GMT
WORKDIR /home/gradle
# Wed, 20 Mar 2019 22:53:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d40fc3cf34dee2b2a441314fdd5adc73396c783b33d34a1385953d753bb2fb`  
		Last Modified: Tue, 05 Mar 2019 04:24:41 GMT  
		Size: 454.9 KB (454887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025ca652beaa800951a9ddf2d880551fd1989e83e464d2970b370c3f4170887e`  
		Last Modified: Tue, 05 Mar 2019 04:24:41 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63ad44e6a964e864412eaa375a6e9c289db3a94de1a3d17f37341eae245dd40`  
		Last Modified: Tue, 05 Mar 2019 04:24:41 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d6da2455d65b24abcc97fb1f707ae27ce25be8954d9e7ad46d8da15edbf350`  
		Last Modified: Tue, 05 Mar 2019 04:24:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0a95b5e0fba393b2954fcb159a26bc2d21007d6f09dc34dc60ef37525ecdcd`  
		Last Modified: Tue, 05 Mar 2019 04:25:06 GMT  
		Size: 271.1 MB (271122867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b830d9c9eeaf80e926d8968e80172f8b3e63ee9524792c53eeb33d56f33bf8b`  
		Last Modified: Wed, 20 Mar 2019 22:56:47 GMT  
		Size: 1.1 MB (1100261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af52a0fe0b0fc7d4cb1350bed89325ac6caf5418bdf9fb8f67659be6d7959856`  
		Last Modified: Wed, 20 Mar 2019 22:56:55 GMT  
		Size: 87.2 MB (87226617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5af63e83fb04630d3f36a93b70129baa0b17f2aa4f146fa707f85c790c1d88f`  
		Last Modified: Wed, 20 Mar 2019 22:56:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:b1842224b6fc0f31005538bcfd71a0dec429b0a69d14fa2a842cd8952dbb6c07
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319068593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7ac4f14dcf91b32e44e9f2f0f2751c679c7eaddaf6c793c584e72c85e8215a`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:14:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:14:15 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 11:14:16 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:14:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:14:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:14:19 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 11:14:19 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 11:16:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 11:16:50 GMT
CMD ["jshell"]
# Tue, 05 Mar 2019 15:22:53 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 15:22:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 08:50:23 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 08:50:33 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 08:50:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 08:50:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 08:50:42 GMT
USER gradle
# Thu, 21 Mar 2019 08:50:42 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 08:50:43 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 08:50:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f869b46eab286139f4fa4b83e8c6db80016c89228e72c955364ca31cabeae7`  
		Last Modified: Tue, 05 Mar 2019 11:38:20 GMT  
		Size: 447.8 KB (447761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c38ae404a1b130a1dadd7636f9ad0156ca57a0ae390f480c63bcd8c297cde9`  
		Last Modified: Tue, 05 Mar 2019 11:38:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cb6afd8c7205f76e27d05dba28ec529d68981de7564f591b21b2ac51b34eaa`  
		Last Modified: Tue, 05 Mar 2019 11:38:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59415cf92e721a75a31486bcba158407c0968ec2f9307c272cd03da7ca6efdc`  
		Last Modified: Tue, 05 Mar 2019 11:38:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba90ad219c9d8bdbb0e53a2cbf4e4a37b389839a9ae30b8b25a7d97c9a79b5b7`  
		Last Modified: Tue, 05 Mar 2019 11:38:59 GMT  
		Size: 209.2 MB (209170390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ccc895db9d69bc7a752b6105f38ae959e8d77bfdb0577420894fe5367bfd35`  
		Last Modified: Thu, 21 Mar 2019 08:54:30 GMT  
		Size: 1.1 MB (1062238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f988dd36bd0c58d32d7f53a6f241f2ea9dc350f3765ac61b0152c8b086251eb`  
		Last Modified: Thu, 21 Mar 2019 08:54:42 GMT  
		Size: 87.2 MB (87226880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721bf5b5422d9d4b2cbab0d1711916c5af943d336df35c3bf08f388915da2e39`  
		Last Modified: Thu, 21 Mar 2019 08:54:29 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:9d9e483e750571f9100f69ea7c076badbfcbd255b86ff4639e88a0b00c3e6b31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.4 MB (336365536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d67d96d4a485b5131871058de6e0a161e1b4962f9e3dd81704acad5bfbfcbc19`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:38:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:38:18 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 14:38:19 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:38:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:38:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:38:27 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 14:38:28 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 14:38:29 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 14:39:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 14:39:26 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 19:01:16 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 19:01:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 12:05:27 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 12:05:36 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 12:05:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 12:05:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 12:05:44 GMT
USER gradle
# Thu, 21 Mar 2019 12:05:45 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 12:05:46 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 12:05:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c7ddd72c1d6ab7cfac2d0836b5585cc06515862be46bdc9ea5a3d6cf9a2451`  
		Last Modified: Wed, 23 Jan 2019 15:05:43 GMT  
		Size: 430.6 KB (430613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efa67a94dc181684e6c68d84d7eb680128cc666dbd9779d8ff063c66a2c66ce`  
		Last Modified: Wed, 23 Jan 2019 15:05:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1eabf1a5f315975ccac5b1e42dbe7ec5343f042e7ff937bf5167725603b46d`  
		Last Modified: Wed, 23 Jan 2019 15:05:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b6e38d69f57e4bd1c42274960e14c985311f6fff50fc85550fbcbd262ccec`  
		Last Modified: Wed, 23 Jan 2019 15:05:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce923418064c0cc1f998527a5c8907f63a562bb8b1b9ab4907a81f1b18227bc0`  
		Last Modified: Wed, 23 Jan 2019 15:06:23 GMT  
		Size: 228.4 MB (228381839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb6e92647b1ad522e777da2e07e0caf8d6d85cab46b44c8e3e6ea2439046ae3`  
		Last Modified: Thu, 21 Mar 2019 12:09:22 GMT  
		Size: 1.0 MB (1035099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9e471d7d59ad91f5128e648ad3004a57c029886d8241002b46fba352f6e3f7`  
		Last Modified: Thu, 21 Mar 2019 12:09:35 GMT  
		Size: 87.2 MB (87226923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755abafe502afa4cf4111ba81f4ed9108145cba60b0a11339b9085b86855fa2b`  
		Last Modified: Thu, 21 Mar 2019 12:09:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ba82f075fcdf54d1635df7e5aa79ce35633641d71e90fae89ba6cd6b64be2427
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.9 MB (357881692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d143680ed44a6904302377071f79f63d4016ef035cc04182f25fde98c48ef083`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:59:55 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 11:59:56 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:59:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:00:00 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:00:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:00:02 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 12:00:03 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 12:02:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 12:02:09 GMT
CMD ["jshell"]
# Thu, 07 Feb 2019 06:59:16 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 06:59:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 09:37:34 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 09:37:50 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 09:37:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 09:38:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 09:38:04 GMT
USER gradle
# Thu, 21 Mar 2019 09:38:05 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 09:38:05 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 09:38:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
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
	-	`sha256:20fe57e2461f417a84f0c7e2947efdd70a8c4cb6160ef633e0a7339e7ffe4493`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5367174f3991bc5ec196a7b0f0c3e286312013447067b8bdabdf6a0065fae7db`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af31ad7097de4851a24eb3e01ad2178ccf7e4906fdd5b00c935ceb50ec99937`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7b6368ed09518aaf8cb329a8a13ec9b495a8667ecf61c5d1682c6e6e4f3b2b`  
		Last Modified: Wed, 06 Feb 2019 12:37:55 GMT  
		Size: 248.8 MB (248807305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ccb5176415bd557ed6991e508929a831b4859643fb1f7a76dbf1dc0fa6c768`  
		Last Modified: Thu, 21 Mar 2019 09:44:51 GMT  
		Size: 1.1 MB (1055957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d565877e5d3fd6b383364ad80ac451eb2052abf5c6486a88932d6f255526a7`  
		Last Modified: Thu, 21 Mar 2019 09:45:04 GMT  
		Size: 87.2 MB (87226639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d65c5c373fee2150d4ea5d530d9c5d96f0e52ffa66ce42e538fb71b724b4f8`  
		Last Modified: Thu, 21 Mar 2019 09:44:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; 386

```console
$ docker pull gradle@sha256:e0be52c8c2270fa4b65829c7cde289f332a72dead45dff647e6eff68053cff76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.3 MB (445334012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baceeaa61f5f98c7fd69dd995d68cad3653c1f381dcc062d4c89e1ab24072128`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:04:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:04:38 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 17:04:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 17:04:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 17:04:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 17:04:39 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 17:04:40 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 17:04:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 17:05:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:05:35 GMT
CMD ["jshell"]
# Wed, 06 Mar 2019 00:24:49 GMT
CMD ["gradle"]
# Wed, 06 Mar 2019 00:24:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 11:40:17 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 11:40:23 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 11:40:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 11:40:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 11:40:28 GMT
USER gradle
# Thu, 21 Mar 2019 11:40:28 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 11:40:28 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 11:40:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b06ce80122efda7e25322475d460635ab000deda54dfc1fff4b70841c791c`  
		Last Modified: Tue, 05 Mar 2019 17:18:17 GMT  
		Size: 463.5 KB (463541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bf134d584cef1eb4fd40302010c8fd295f1d2947bb6f6fcb9467beaaf578f5`  
		Last Modified: Tue, 05 Mar 2019 17:18:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b832e090e6e034b915570513ae85c7e951f12162e590c699369ef0ea357054`  
		Last Modified: Tue, 05 Mar 2019 17:18:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8b8981c18571190087cf3cec6d2378f0f0dbece44aac92684cb30c00bf3074`  
		Last Modified: Tue, 05 Mar 2019 17:18:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da7775aeedc9d460024c0035ae47f3f5475dce141553a96c644d2e08d24b157`  
		Last Modified: Tue, 05 Mar 2019 17:18:50 GMT  
		Size: 333.4 MB (333395435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb33b55c221a7695f97136d48f2eb4a6a9f578b780eb31f1e2a2dad92ce3dcb3`  
		Last Modified: Thu, 21 Mar 2019 11:43:01 GMT  
		Size: 1.1 MB (1122002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d28fa6a4918c7c57d949fa545fc8d489ce5f26914f309b03fa79a7022edfe19`  
		Last Modified: Thu, 21 Mar 2019 11:43:08 GMT  
		Size: 87.2 MB (87226619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faacafae38afd676f7c61796581c5d2ba3c99a443132d36ae30bdb209c6deda`  
		Last Modified: Thu, 21 Mar 2019 11:43:01 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:f84ff4d5d06ef18c4d12a5562e9817ff720a5316c8bb938f8cacfdc7b2338e18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350584546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8add81f9fbf8bdeb853af12e2d8f715297a94c357c2bf87d862c6a58359e48`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:47:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:47:42 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 14:47:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:47:51 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:47:55 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 14:47:57 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 14:48:01 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 14:49:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:49:56 GMT
CMD ["jshell"]
# Tue, 05 Mar 2019 20:44:28 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 20:44:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 08:43:32 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 08:43:55 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 08:43:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 08:44:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 08:44:33 GMT
USER gradle
# Thu, 21 Mar 2019 08:44:37 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 08:44:42 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 08:44:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5093d070d67718e8c8d2569e8e05ed7ebf92ea2bcde8ba3bb5f6de3105e3a8`  
		Last Modified: Tue, 05 Mar 2019 15:20:34 GMT  
		Size: 449.8 KB (449835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e76bc93b410cb54f2dad8620fc78d5900e9aecb0ec3ea8183319d1aa252a14`  
		Last Modified: Tue, 05 Mar 2019 15:20:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e76cad75de4d1f776db3fd00b30ecb096b302e00da9575d804d44c4d6a5c252`  
		Last Modified: Tue, 05 Mar 2019 15:20:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eccfee85b938628ac0475326afbc114a43e7fc8bab55869864cd2783dce4dc`  
		Last Modified: Tue, 05 Mar 2019 15:20:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038c9a6a2c0086b35400d65cf7cd76b51c7639491f80fa94a9ff464b6b8b94fe`  
		Last Modified: Tue, 05 Mar 2019 15:21:14 GMT  
		Size: 239.1 MB (239070211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca1232596506d7efa54e5e9056e5d2d6002251b855f459ca5877eff918cc34d`  
		Last Modified: Thu, 21 Mar 2019 08:54:36 GMT  
		Size: 1.1 MB (1085281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baba79afb2d829bb2b2b3565cf72e31df4bfc7b6e7edf95c2c6830425921d681`  
		Last Modified: Thu, 21 Mar 2019 08:54:53 GMT  
		Size: 87.2 MB (87226945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a99d57967c0c151a3f762fcd408b353a03d1a0728d39457502a03d5741fab96`  
		Last Modified: Thu, 21 Mar 2019 08:54:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; s390x

```console
$ docker pull gradle@sha256:0a418184eabb786bd55e10679b7fdc32e43d5bc687c4cdb8666ee204217a5470
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350437963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb8555f11fd6d9bdb6f1002db48b63bba80af62a5906ac5a2092f5ac057aa79`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:09:25 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 15:09:26 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:09:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:09:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:09:27 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 15:09:28 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 15:09:28 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 15:10:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 15:10:14 GMT
CMD ["jshell"]
# Tue, 05 Mar 2019 19:18:50 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 19:18:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 11:46:34 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 11:46:42 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 11:46:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 11:46:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 11:46:48 GMT
USER gradle
# Thu, 21 Mar 2019 11:46:48 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 11:46:48 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 11:46:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad982d3f3e8abbcfc4926155f885f71dc9bc0f7e689758a9f0dc24355977d7`  
		Last Modified: Tue, 05 Mar 2019 15:16:05 GMT  
		Size: 465.8 KB (465761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5bbdecbb06ad9f9a0c4a3f267eecffd7ed259e0f4406e9c113432225ee5227`  
		Last Modified: Tue, 05 Mar 2019 15:16:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc1f730c3170f297cbf7a72424e9903dbc41a4ab56af42bcf6958259c6ec62`  
		Last Modified: Tue, 05 Mar 2019 15:16:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a0756b8888c9bdc440bcff22c2e820b4c0a8a124b21ecea387cbe482dfb1fe`  
		Last Modified: Tue, 05 Mar 2019 15:16:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b996698a0bd644a7da15760758618e2cef3d19fbe6d283840c9d599943102e34`  
		Last Modified: Tue, 05 Mar 2019 15:16:25 GMT  
		Size: 239.3 MB (239289211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4158800d553c8a7a6c4e64f12de8e1e6188bbad38474fe79f38d43bc8d12cdce`  
		Last Modified: Thu, 21 Mar 2019 11:51:26 GMT  
		Size: 1.1 MB (1110232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579ad92ee02cb1815141c86ecb04c94a0ba8434e2834f1ea4bd568601c4ba874`  
		Last Modified: Thu, 21 Mar 2019 11:51:34 GMT  
		Size: 87.2 MB (87226634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88ec8807da082be95c7f2920c245f203a29d5bc6cad334837b19f1985bfa850`  
		Last Modified: Thu, 21 Mar 2019 11:51:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
