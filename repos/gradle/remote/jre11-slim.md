## `gradle:jre11-slim`

```console
$ docker pull gradle@sha256:447d41623e1760a8805c86be91bcf7dda62c0df62ad45c96b2800804c32790d8
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
$ docker pull gradle@sha256:795fcf479a668dbe21350cd450f2bec4ec5feeb91eb768b88f7a92b60dcf722e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188413018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8c21b8ab9e54f020d14591b0109a283366ddfda919c789e1b7c3dd6a52f276`
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
# Wed, 27 Mar 2019 00:47:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 11:00:34 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 11:00:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Mar 2019 11:00:35 GMT
ENV GRADLE_VERSION=5.3
# Wed, 27 Mar 2019 11:00:43 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:00:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 27 Mar 2019 11:00:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Mar 2019 11:00:49 GMT
USER gradle
# Wed, 27 Mar 2019 11:00:50 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Mar 2019 11:00:50 GMT
WORKDIR /home/gradle
# Wed, 27 Mar 2019 11:00:52 GMT
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
	-	`sha256:783178df3a0c7f935e04eab50425d52a5f7d5c33e62b8cd6a8574fb1f0b6145c`  
		Last Modified: Wed, 27 Mar 2019 01:09:17 GMT  
		Size: 77.1 MB (77135301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb2d3e066713cff8eeb3b30cae38ce6d28cb40b4130eccc7428bc20ce6dc3a4`  
		Last Modified: Wed, 27 Mar 2019 11:02:19 GMT  
		Size: 1.1 MB (1099434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252b42bbe26c5da03efe61f0472a8331e9a0c2e4fbb6d276e18c656f84372794`  
		Last Modified: Wed, 27 Mar 2019 11:02:26 GMT  
		Size: 87.2 MB (87226607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a71e6836f591f72ad7909ad4313e5e846e44dcd358c0626417c26d6da5a7146`  
		Last Modified: Wed, 27 Mar 2019 11:02:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:ac81340a29ef7153cb8cd6bd991964c40bc6f4cb599732acbf3676e531eb459f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170894072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462188b0a6aee9ceae7904afadb7ab4680f961f018d613a44cc194436b598540`
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
# Wed, 27 Mar 2019 12:04:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 16:23:13 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 16:23:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Mar 2019 16:23:14 GMT
ENV GRADLE_VERSION=5.3
# Wed, 27 Mar 2019 16:23:25 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:23:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 27 Mar 2019 16:23:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Mar 2019 16:23:34 GMT
USER gradle
# Wed, 27 Mar 2019 16:23:35 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Mar 2019 16:23:35 GMT
WORKDIR /home/gradle
# Wed, 27 Mar 2019 16:23:43 GMT
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
	-	`sha256:0783807c555813057f761e7ba675736f1a341cc02f61d6b3b83dec7757053df3`  
		Last Modified: Wed, 27 Mar 2019 12:22:47 GMT  
		Size: 61.0 MB (60996574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2384867205c8a513dc513a7aa998a27eaacb96e0a0d6666ed24226209e6a41e`  
		Last Modified: Wed, 27 Mar 2019 16:26:00 GMT  
		Size: 1.1 MB (1061444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9da62caf3ef2e557fe9958bc0d6bbf6dcfe98cf183c9fa25a652455b54ffaff`  
		Last Modified: Wed, 27 Mar 2019 16:26:16 GMT  
		Size: 87.2 MB (87226871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec1822494bc5fc96e3a99471c5c6ffebeb6d0ac4acc420c956f5eb922d4cd67`  
		Last Modified: Wed, 27 Mar 2019 16:26:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; arm variant v7

```console
$ docker pull gradle@sha256:c8470e3656e43d4fee5de0f556c463a73488f056d272123300d8a0509b64385d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171125596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23302ee866e24fefe690ed379d90193e8388b6de52131286aecc3343373f908e`
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
# Wed, 23 Jan 2019 14:41:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 19:02:47 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 19:02:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 12:06:12 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 12:06:20 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 12:06:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 12:06:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 12:06:29 GMT
USER gradle
# Thu, 21 Mar 2019 12:06:30 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 12:06:30 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 12:06:33 GMT
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
	-	`sha256:6da562787afc129101d36b7ccfea2ca4ee72711de40b41f4789760eff217699c`  
		Last Modified: Wed, 23 Jan 2019 15:08:01 GMT  
		Size: 63.1 MB (63142818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c146a8c179f5a77a391d572c0c1beded0afab30ffcff6cc4aadc91abaa2d47`  
		Last Modified: Thu, 21 Mar 2019 12:10:05 GMT  
		Size: 1.0 MB (1034223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141a28c044b3e48cfd43d950925c29710759d7db37be9a64c8adfb853954a896`  
		Last Modified: Thu, 21 Mar 2019 12:10:17 GMT  
		Size: 87.2 MB (87226881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ccbf6ffa7e3c8d6024b868ec2037a64daeec3b90c234676d6539ddbe0c56a3`  
		Last Modified: Thu, 21 Mar 2019 12:10:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9ec24ea1a64c69321cda268ad2f4b379fb5f29b0084084db41196f9913434915
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177658198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ddf129666a207f5fdf13585188cd4b5140db68ab34b8bede82131a1336e5a1`
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
# Wed, 06 Feb 2019 12:12:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:00:59 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 07:01:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 09:38:47 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 09:39:06 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 09:39:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 09:39:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 09:39:21 GMT
USER gradle
# Thu, 21 Mar 2019 09:39:22 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 09:39:23 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 09:39:30 GMT
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
	-	`sha256:52e0b2933c517afdf042470b2e37a7f205b98bfe271ed40f81133189131939a9`  
		Last Modified: Wed, 06 Feb 2019 12:40:12 GMT  
		Size: 68.6 MB (68584568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494970210bc5f4c96ef216d5b5c7d52e876f1362000be7a046a8bc88fea67b79`  
		Last Modified: Thu, 21 Mar 2019 09:45:42 GMT  
		Size: 1.1 MB (1055193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d4af044d5428d16c8241d385487f32e30587d61c229aa6ec0ace05f3902f75`  
		Last Modified: Thu, 21 Mar 2019 09:45:55 GMT  
		Size: 87.2 MB (87226647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe8aac50b1e4339b57f6f172b6fd0468d22a3572ea2d77afa94b3f24689f06d`  
		Last Modified: Thu, 21 Mar 2019 09:45:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; 386

```console
$ docker pull gradle@sha256:917909fb0aabb3afb5869147c7d897a2fcba1c947b97f84976d22e324cc48a08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193398829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4484d7fa19ba378b3d459c2728543d7534806c6d5ced63299d31be7907af434`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:53:36 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 17:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:53:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:53:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:53:38 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 17:53:38 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 17:53:38 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 17:56:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:30:14 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 01:30:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 28 Mar 2019 01:30:15 GMT
ENV GRADLE_VERSION=5.3
# Thu, 28 Mar 2019 01:30:20 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:30:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 28 Mar 2019 01:30:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 28 Mar 2019 01:30:26 GMT
USER gradle
# Thu, 28 Mar 2019 01:30:27 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 28 Mar 2019 01:30:27 GMT
WORKDIR /home/gradle
# Thu, 28 Mar 2019 01:30:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d7f9eb531082cde488d0aa03b101f3e89fbf5c5a1258cd81277fc760913c1`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 463.5 KB (463546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84397945a3d0c25bcccd7ab1d3c7320834d353502f3fdaaebd58bf1c9bc428a`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ab93bd8c7dab019374a7c07aa8698315ccb7032b45d41afc48c5288e946d66`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6530ef488aac5e7d903ce6a46a482601846e8fea4c6952f2ccde4bf11a733af9`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c06d77c96456697b98ceb4f6768598f23aeb445f978b8487a1dee5fd8a7e859`  
		Last Modified: Wed, 27 Mar 2019 18:30:48 GMT  
		Size: 81.5 MB (81460980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743f625f901f257f3e96de135f50314e35bbe6161b93de0acfe07f76f060aeca`  
		Last Modified: Thu, 28 Mar 2019 01:33:22 GMT  
		Size: 1.1 MB (1121209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28516a7edbb4b116cbd2976ed25a92045b326bd8b85c534792d6fe0fa32db973`  
		Last Modified: Thu, 28 Mar 2019 01:33:31 GMT  
		Size: 87.2 MB (87226612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3b937929107661dfb21b6b09a577999c760e5d32168b723378ba2f87fb0bf4`  
		Last Modified: Thu, 28 Mar 2019 01:33:23 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:1bb5a4e26b98b6416f7ef46e99e3299e2b9e64b7eb41db195c934d2dd37c1030
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176756529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda04a7dd67288a025c8b78f970d1cac8218f482eba11e5e8e86b6b0694b0bb8`
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
# Wed, 27 Mar 2019 12:46:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 19:04:35 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 19:04:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Mar 2019 19:04:41 GMT
ENV GRADLE_VERSION=5.3
# Wed, 27 Mar 2019 19:05:05 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:05:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 27 Mar 2019 19:05:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Mar 2019 19:05:25 GMT
USER gradle
# Wed, 27 Mar 2019 19:05:30 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Mar 2019 19:05:37 GMT
WORKDIR /home/gradle
# Wed, 27 Mar 2019 19:05:48 GMT
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
	-	`sha256:861b7f4ac36a360545e2a139fba418d5dd314703d1706cad63f47bb1de4e3850`  
		Last Modified: Wed, 27 Mar 2019 12:59:03 GMT  
		Size: 65.2 MB (65243243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251190900316541825796e888cdd2f3c4905f02e3f6baf6d1c0de47f6abd35a1`  
		Last Modified: Wed, 27 Mar 2019 19:40:01 GMT  
		Size: 1.1 MB (1084394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164dab154aa21e5f4643e8749e54d794a72233ca727f60a91e295c748a163168`  
		Last Modified: Wed, 27 Mar 2019 19:47:10 GMT  
		Size: 87.2 MB (87226900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b1bd27e37d06e58e903d539637d8ef454aa99e6fcf288e95db232dd11c6ead`  
		Last Modified: Wed, 27 Mar 2019 19:39:53 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; s390x

```console
$ docker pull gradle@sha256:e5908a92288a5ed3a52b526e5851c3613530a03e9fb6ac265332b5107ddbb3d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.9 MB (175870846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef478592e13e4a98c8fa42a83af9dc0dd8a43767918ab60e38c79b4ce89f808a`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:05 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 15:24:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:24:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:24:07 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:24:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 15:24:07 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 15:24:08 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 15:26:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 20:17:15 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 20:17:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Mar 2019 20:17:17 GMT
ENV GRADLE_VERSION=5.3
# Wed, 27 Mar 2019 20:17:31 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:17:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 27 Mar 2019 20:17:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Mar 2019 20:17:43 GMT
USER gradle
# Wed, 27 Mar 2019 20:17:44 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Mar 2019 20:17:44 GMT
WORKDIR /home/gradle
# Wed, 27 Mar 2019 20:17:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873fe20cf16e09acaa32a84770546a724019d27f9da4b456666341fadae1ea88`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 465.8 KB (465770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ede3dec1c45a344c8837e8c49e9830fb57cd1ab775fc552499b7c5163d6db4`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe09440de22b01805591eadf2f1240c95731db424b6699d38f21c72edd8f6204`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cca42a3a5352c8608f15abe2b11017cee5385d019762535efd3b95767b7419`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc3c4cd44cf36b6aef2ecc0501de64d46213ab5387f2e879a57d970d8663229`  
		Last Modified: Wed, 27 Mar 2019 15:32:05 GMT  
		Size: 64.7 MB (64722835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec1663cb7e531eb46b829e3dd4403b0b5c8eb49e038389585650da4258e5636`  
		Last Modified: Wed, 27 Mar 2019 20:20:39 GMT  
		Size: 1.1 MB (1109628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a733b8e006cd38b83cd7a62c55df19cfacb319b33e616db01042b7d0bc0800`  
		Last Modified: Wed, 27 Mar 2019 20:20:48 GMT  
		Size: 87.2 MB (87226591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322c65a9da2624bb76182d404d1fb479f634e1930b50e2453c6e925e19c24b3f`  
		Last Modified: Wed, 27 Mar 2019 20:20:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
