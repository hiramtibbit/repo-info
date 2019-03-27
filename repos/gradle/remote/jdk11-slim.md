## `gradle:jdk11-slim`

```console
$ docker pull gradle@sha256:9f1f2454c21190fae7848a6dd89bb7f9b5af40685f16b238814b3f821c2a8186
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
$ docker pull gradle@sha256:16f8def62840b8f03ea0392b7da0e2ee32000139d96033a934411e83a9e19ce4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.4 MB (382402944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:668e92a5b906b15b8d353b78f6a1c6da430729c9deb9700faa4a723f4485fba2`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:45:42 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:45:42 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:45:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:45:44 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:45:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:45:44 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 00:45:44 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 00:46:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 00:46:37 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 10:59:56 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 10:59:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Mar 2019 10:59:57 GMT
ENV GRADLE_VERSION=5.3
# Wed, 27 Mar 2019 11:00:05 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:00:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 27 Mar 2019 11:00:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Mar 2019 11:00:12 GMT
USER gradle
# Wed, 27 Mar 2019 11:00:12 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Mar 2019 11:00:13 GMT
WORKDIR /home/gradle
# Wed, 27 Mar 2019 11:00:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d944e3d00df7bedd2f9a6aa678132a1fb785f7d56b16fdf24c22d5c7c3b7a1`  
		Last Modified: Wed, 27 Mar 2019 01:07:47 GMT  
		Size: 454.9 KB (454886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aaf465b8930951069752df0f86b402bf6dde99a2c174468f748d056689a470b`  
		Last Modified: Wed, 27 Mar 2019 01:07:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0684138f4cb6b633004d5295eaba82edf4f7396b993455bba078af58cbe63acc`  
		Last Modified: Wed, 27 Mar 2019 01:07:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c4e741e6889f29b5366d7f6f29f93b736194f08439b9079f013dd584efb03f`  
		Last Modified: Wed, 27 Mar 2019 01:07:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7882099682dd01dfab525627e0996a16b69d2271e55f68d215ac69d7449fd36`  
		Last Modified: Wed, 27 Mar 2019 01:08:16 GMT  
		Size: 271.1 MB (271124387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb67d959f2f1b4e748ba4ff63e20b4feab22bc013d0e1f69794e0218b0aa956`  
		Last Modified: Wed, 27 Mar 2019 11:01:53 GMT  
		Size: 1.1 MB (1100248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad24125a592c1bbe7011b6899e35b74e6793b0d1499a8b35c8dcb859d7114f94`  
		Last Modified: Wed, 27 Mar 2019 11:02:01 GMT  
		Size: 87.2 MB (87226633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43944d4ea5f6d5149bb3940b76c4e6ca720319625c8e1a53b10815e81a6202c`  
		Last Modified: Wed, 27 Mar 2019 11:01:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:d79dc6c7e405f9b54f5e03309fddac924ab2183385852b1a03c66886a8488ae8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319068783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0410b7f4ee3ea2ff718d2be62c8294790ec2b56ee6e8bb969a69a95cbe981b51`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:58:20 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 11:58:20 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 11:58:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 11:58:22 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 11:58:23 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 11:58:23 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 11:58:23 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 12:00:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 12:00:47 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 16:22:13 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 16:22:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Mar 2019 16:22:14 GMT
ENV GRADLE_VERSION=5.3
# Wed, 27 Mar 2019 16:22:26 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:22:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 27 Mar 2019 16:22:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Mar 2019 16:22:36 GMT
USER gradle
# Wed, 27 Mar 2019 16:22:36 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Mar 2019 16:22:37 GMT
WORKDIR /home/gradle
# Wed, 27 Mar 2019 16:22:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f184019a96fee337c84a360b1e91acc9c23da4c079fff811b4063c86f948174`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 447.7 KB (447747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ad67dd88c41393e780d354f9e98cfb90a8ff29ee9c7c125c16d42b12956d51`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7ab46e6e37590b1ff26cf366fefd71a3d882fe2a05028ebd1ea2b2245686e6`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3790c7567ac31d367acaad5a0cf1233c808c6d4fa01923409ba7482495174093`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc01e0d5755d613d1e04d8329f07746505667f3ba1a9b4e2b44c941aa92e36fe`  
		Last Modified: Wed, 27 Mar 2019 12:21:19 GMT  
		Size: 209.2 MB (209170455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44990b48b38b5d92265650a9df5bf0418dcf4ca685141b1108933356281e142`  
		Last Modified: Wed, 27 Mar 2019 16:25:02 GMT  
		Size: 1.1 MB (1062281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27c7e3c63732638224a25a3f0837190c907c48960f35b3c10271f3076b50e05`  
		Last Modified: Wed, 27 Mar 2019 16:25:15 GMT  
		Size: 87.2 MB (87226862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a055cf2d10813c1804a7f4b09822610bc9ff6520448ad9b7571341fff2574b80`  
		Last Modified: Wed, 27 Mar 2019 16:25:02 GMT  
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
$ docker pull gradle@sha256:17566953f2b8f85f7fc675e1853a342b9aa3ca5c8f16308eff83299a5c834242
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350584548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2a1a060252380bf125d9125001200972862360d2fca2121b3cf25bd2cda958`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:38:09 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:38:13 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:38:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:38:24 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:38:27 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:38:28 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 12:38:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 12:40:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 12:40:17 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 19:02:22 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 19:02:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Mar 2019 19:02:33 GMT
ENV GRADLE_VERSION=5.3
# Wed, 27 Mar 2019 19:03:04 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:03:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 27 Mar 2019 19:03:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Mar 2019 19:03:23 GMT
USER gradle
# Wed, 27 Mar 2019 19:03:25 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Mar 2019 19:03:28 GMT
WORKDIR /home/gradle
# Wed, 27 Mar 2019 19:03:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d945fa8d0ebb59b7a9080958527a126b684d68ce1af2c32555975da70823c1d6`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 449.8 KB (449831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42bed384a1bc49851ddb4977e776db4695170f1df4be311e3b913425147eee0`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3234b120f694dab250cf6abc76557729027d06c76b1185994f7db77f429cf167`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03655f1b29e38c21f639109a34e5ffccea1be73dd65b73ac84c7be22561c6ee`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3828801e127995cebe64e4430d662c6c10b20597da8bcc1acb4177d6f70e3`  
		Last Modified: Wed, 27 Mar 2019 12:56:36 GMT  
		Size: 239.1 MB (239070347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adb5038946243906ca865b672066091770da484871ec4813d2aec6e50b3958b`  
		Last Modified: Wed, 27 Mar 2019 19:23:06 GMT  
		Size: 1.1 MB (1085307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fa4ad4a3b797148b37541d8c25431eb759386a7ecd2340993c95b5b156d4ef`  
		Last Modified: Wed, 27 Mar 2019 19:32:11 GMT  
		Size: 87.2 MB (87226904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d8e3cf64e9ce4eb387dea7f3e2da6b14a152c95f899b2e10759b8c92572681`  
		Last Modified: Wed, 27 Mar 2019 19:23:02 GMT  
		Size: 169.0 B  
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
