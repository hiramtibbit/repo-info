## `gradle:jdk8-slim`

```console
$ docker pull gradle@sha256:69f22ca702578ff854915de60a4de497b98e8f05eeb6ab4f41fe81d4f77a364d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `gradle:jdk8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:daedb73e24a0e320213f7b71ec9a38346a0f735a0a3b2feac370ff16ffcd1e86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.2 MB (170209817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ddedf0e200ba4cb2f9282e89928bfdbc96641a84e59ae1063950d3d4bf46371`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:22:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:22:27 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:22:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:22:28 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:22:28 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:22:28 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:22:28 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:22:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:22:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:22:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 15:07:38 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 15:07:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 24 Sep 2018 20:23:25 GMT
ENV GRADLE_VERSION=4.10.2
# Mon, 24 Sep 2018 20:23:30 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Sep 2018 20:23:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Mon, 24 Sep 2018 20:23:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 24 Sep 2018 20:23:34 GMT
USER [gradle]
# Mon, 24 Sep 2018 20:23:34 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 24 Sep 2018 20:23:34 GMT
WORKDIR /home/gradle
# Mon, 24 Sep 2018 20:23:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93b65a61a8093706b3ec11bba38e1243a86b18c9d5331c9645eb455e2a5f20d`  
		Last Modified: Wed, 05 Sep 2018 01:40:35 GMT  
		Size: 454.8 KB (454827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9885ada077ac09da1290a5fab25696c271e6c3a1115809301ce3beaa1c8976c`  
		Last Modified: Wed, 05 Sep 2018 01:40:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89352ec9377274b11996dd9c8ab52362491554bb40bf5ff6d2fe60564279aa4`  
		Last Modified: Wed, 05 Sep 2018 01:40:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c914eaedf02b7755a41c02122ecd504274fc8b1cf56675abb8547422c789f`  
		Last Modified: Wed, 05 Sep 2018 01:40:47 GMT  
		Size: 67.5 MB (67517189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69436e8df502b9a0cbe7b12b1bd07d1e872a7d607d4403ee79b166d35e22117a`  
		Last Modified: Wed, 05 Sep 2018 01:40:34 GMT  
		Size: 246.7 KB (246708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb7c417d443bf3209f6dd6a72c6a33697a707054f700a7862303f149416021e`  
		Last Modified: Mon, 24 Sep 2018 20:33:32 GMT  
		Size: 1.1 MB (1098814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62bd4068c1044db16374b2a52ecf625410d8def41b5454b86416c84bd7037946`  
		Last Modified: Mon, 24 Sep 2018 20:33:37 GMT  
		Size: 78.4 MB (78405796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2787268b97598b3463b13728a8f198747f83b5d926d40a1331b6befbf1cf8928`  
		Last Modified: Mon, 24 Sep 2018 20:33:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:19d56690901ee17b434ce134faa120da014104cde63cf039608c999760d0a9f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157245221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a2ba2ee8486ac1fa8096bad7fd86a082005ea0dede9fc5e4a1bc901ae3bf808`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:32:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:32:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 09:32:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 09:32:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 09:32:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 09:32:57 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 09:32:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 09:32:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 09:33:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 09:33:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 14:09:40 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 14:09:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 25 Sep 2018 08:53:25 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 25 Sep 2018 08:53:36 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 08:53:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 25 Sep 2018 08:53:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 25 Sep 2018 08:53:43 GMT
USER [gradle]
# Tue, 25 Sep 2018 08:53:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Sep 2018 08:53:44 GMT
WORKDIR /home/gradle
# Tue, 25 Sep 2018 08:53:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46caa9683640f48fd33d87c53fd38064842fc3a82167557fdbcf6d1dafca3b1`  
		Last Modified: Wed, 05 Sep 2018 09:42:35 GMT  
		Size: 447.7 KB (447678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e12cfbfb7eb6d08795321eb973f24beb298bdaa41b46bc7040cc8d2a3b7b6e`  
		Last Modified: Wed, 05 Sep 2018 09:42:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c7ffa12549d29582f4b8ef09cfa1a0e852541c47c2234247d9ad3581c58f2d`  
		Last Modified: Wed, 05 Sep 2018 09:42:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761ee5d51e54453531735b6079520598d1f4f172ebd3d8183c9aab9bccaed665`  
		Last Modified: Wed, 05 Sep 2018 09:42:49 GMT  
		Size: 55.9 MB (55920663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36b333172419587d490b5ad5fac0bc2a33cb25542e668c2d691cfb5e0592576`  
		Last Modified: Wed, 05 Sep 2018 09:42:35 GMT  
		Size: 246.7 KB (246743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e12f7c3078df6b61b6a059e21d1c748de25ae038fdb36250303c23d9d53a79`  
		Last Modified: Tue, 25 Sep 2018 09:05:09 GMT  
		Size: 1.1 MB (1060764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57d0c1e0690872478f78bac541e041c5906feac902eed5e169ab312b0a9ac64`  
		Last Modified: Tue, 25 Sep 2018 09:05:18 GMT  
		Size: 78.4 MB (78405887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b640d0b959a765cdf2dc9c1e2fbd7f15e6a30abf9c7ca4f95a7fdc1c3a544faa`  
		Last Modified: Tue, 25 Sep 2018 09:05:09 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:3ead337a78e1dae300826accf07cbbc794033da20ae0d67f39223b0b9fd72c50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160774208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91941142b4db7c3b1f382c59ab446335a2be9d145269b675072495c71724d52`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:09:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:09:29 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:09:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:09:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:09:40 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 12:09:42 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 12:09:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 12:09:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 12:11:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 12:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 17:58:48 GMT
CMD ["gradle"]
# Wed, 05 Sep 2018 17:58:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 25 Sep 2018 08:25:05 GMT
ENV GRADLE_VERSION=4.10.2
# Tue, 25 Sep 2018 08:25:18 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 08:25:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
# Tue, 25 Sep 2018 08:25:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 25 Sep 2018 08:25:26 GMT
USER [gradle]
# Tue, 25 Sep 2018 08:25:27 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Sep 2018 08:25:28 GMT
WORKDIR /home/gradle
# Tue, 25 Sep 2018 08:25:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd709dd583f11126188c4cb0e2f76612bbf4764ba15413a62533016bac7e579`  
		Last Modified: Wed, 05 Sep 2018 12:35:07 GMT  
		Size: 449.8 KB (449781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1d84cabfa05d3ec7732966e32077b5807b0b878349383bd228c1e3539168b7`  
		Last Modified: Wed, 05 Sep 2018 12:35:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68abdd1ca1d7c79a8d5be40996d7f98f12e7b29f7057dbe7e59abbf79c780d34`  
		Last Modified: Wed, 05 Sep 2018 12:35:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9fa1f2c6d4fc0856cee3e939f7772cb6eb2a22a01bd5aac39da022da8002d`  
		Last Modified: Wed, 05 Sep 2018 12:35:22 GMT  
		Size: 57.8 MB (57846924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc6fce2b410497e6d8648272b00b0368ddd058a93cba5eb9b94025cf0c896c4`  
		Last Modified: Wed, 05 Sep 2018 12:35:06 GMT  
		Size: 246.6 KB (246649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2f97a16f459cff92af3a5f224cf141a6bd2be31706006fddb0f625ebeb30e5`  
		Last Modified: Tue, 25 Sep 2018 08:44:05 GMT  
		Size: 1.1 MB (1083833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884c47b360a7ac769f312c559c5dd57312715ec707bde72802fd655136883bb5`  
		Last Modified: Tue, 25 Sep 2018 08:44:15 GMT  
		Size: 78.4 MB (78405873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9951af0b851fd605bd42981b20a24706645da4ff974eb95dd2166d28cb22f070`  
		Last Modified: Tue, 25 Sep 2018 08:44:05 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
