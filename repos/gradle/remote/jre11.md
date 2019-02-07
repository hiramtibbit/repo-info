## `gradle:jre11`

```console
$ docker pull gradle@sha256:77607692888c94273d9af057ec2bcc2afbce6186b6f40bdb9c89cfbedf517f51
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

### `gradle:jre11` - linux; amd64

```console
$ docker pull gradle@sha256:4831d9bd947c868be5be672c6602488580addd8f46ee90c8836f17332f3c3719
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280052382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58168245bce4e3e1a4eddc7fc38102ac4cbc0c6fe5b43e926da5d94c29c1ebf0`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:27:03 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 08:27:03 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:27:05 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:27:05 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:27:06 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 08:27:06 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 08:27:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 15:34:15 GMT
CMD ["gradle"]
# Wed, 06 Feb 2019 15:34:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 06 Feb 2019 22:22:01 GMT
ENV GRADLE_VERSION=5.2
# Wed, 06 Feb 2019 22:22:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Wed, 06 Feb 2019 22:22:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 06 Feb 2019 22:22:07 GMT
USER gradle
# Wed, 06 Feb 2019 22:22:08 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 06 Feb 2019 22:22:08 GMT
WORKDIR /home/gradle
# Wed, 06 Feb 2019 22:22:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ffbbac4c4b6f09d9931243f263ba484fd44e9127d4bb7cf2a137180a61e6ab`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267b2539b9b17b83c81acea78976c319b9216899dd4d75cff5343291861f53e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6294a94db40c8d1b109d6590cb3d87682aa7c5cdd49f42f78739e3dce78e7bd6`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c15f9c04764581e1e4d4d6e2de287411f6953920ec25bb0849da1e9b3afd4d6`  
		Last Modified: Wed, 06 Feb 2019 08:52:50 GMT  
		Size: 131.3 MB (131315282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac51642f834518d4a2819e5909795badc0da1d9713d09d0355c849fa8da7735`  
		Last Modified: Wed, 06 Feb 2019 22:25:19 GMT  
		Size: 87.4 MB (87418012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b47dbd92389d1bd3b42cf6ec10ba6b238da4d316eb435a842b3289fe4e618b6`  
		Last Modified: Wed, 06 Feb 2019 22:25:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v5

```console
$ docker pull gradle@sha256:3e7536ce803873be524e742efee5f8d2dcba1f165d2284e84b2c3e8c189d9e98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260976090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8af6d7f5a0a3e8b18b3f5a7f075976819084732d3883d018741a2e49d7f937cc`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:45:12 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 12:45:12 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:45:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:45:15 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:45:15 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:45:15 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 12:45:16 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 12:46:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 16:15:30 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 16:15:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 09:51:03 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 09:51:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 09:51:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 09:51:15 GMT
USER gradle
# Thu, 07 Feb 2019 09:51:16 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 09:51:17 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 09:51:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:4fa85838ca92a72d64f970f6d43c23ad625e644e7d2d6088bfccfc6b05f2ce41`  
		Last Modified: Wed, 23 Jan 2019 10:02:01 GMT  
		Size: 44.1 MB (44053619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc93c97f4e63346ff22fa9f2a1f468f1211ae4e1c468f823078577fe992699ba`  
		Last Modified: Wed, 23 Jan 2019 10:49:24 GMT  
		Size: 9.8 MB (9849321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e54fcc14b17f4209b661fb8a20deeb88c9b3153c5fac3c35d0367633f22f2`  
		Last Modified: Wed, 23 Jan 2019 10:49:23 GMT  
		Size: 4.2 MB (4158594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f02589fc3d00a36a98d58ff4404167ce69f35a4207db13bcf6ea33799132a1`  
		Last Modified: Wed, 23 Jan 2019 13:07:55 GMT  
		Size: 845.9 KB (845891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69306e793a346e47840417b798dc72551ea325293cf7a4eb2044c7bc773d0fcf`  
		Last Modified: Wed, 23 Jan 2019 13:07:54 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01df861754d9b1a44c56f9638fc1665d43446d58c868e52a177a0f7044e708fd`  
		Last Modified: Wed, 23 Jan 2019 13:07:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1ee030979705e5c2914ddbed8bbed08221fe0fe4c4e270b4015cb751060d0f`  
		Last Modified: Wed, 23 Jan 2019 13:07:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f124b13d284431f4f4df6734f1479849ea1a5869ca21fdb33197108d31617e9a`  
		Last Modified: Wed, 23 Jan 2019 13:08:25 GMT  
		Size: 114.6 MB (114649726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0374490928c38f9277a483ffe8e37440b7243efd87df49b303d642ca469f700`  
		Last Modified: Thu, 07 Feb 2019 09:55:36 GMT  
		Size: 87.4 MB (87418105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44b79e69557882a561caad8354f62a27f18fe0d3afa16e7ebbb715e3db1104e`  
		Last Modified: Thu, 07 Feb 2019 09:55:23 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:e4bf43ccb8810099b16408ae1d2963de5e5edfa0c724ccf2aae2f828b19cd150
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259867129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991592b672a4d08066b1d7e64089123aa4ef9a8e1981e4ea6c988c8f97a2d2d1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 14:39:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:39:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 14:39:43 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:39:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:39:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:39:49 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 14:39:50 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 14:39:50 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 14:40:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 19:02:05 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 19:02:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 13:08:42 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 13:08:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 13:08:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 13:08:50 GMT
USER gradle
# Thu, 07 Feb 2019 13:08:50 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 13:08:51 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 13:08:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c939e18033f4d9e001f74f0bb3eeb37358e00e43f9d69147f83352446e83f2`  
		Last Modified: Wed, 23 Jan 2019 15:06:53 GMT  
		Size: 830.2 KB (830214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ef71f0052540674fe14976375014a3827f5282d8b1d826cb9842077ff263f9`  
		Last Modified: Wed, 23 Jan 2019 15:06:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316111000338d5611ea666e2d9bbd80154a60d31c00c72de166cd52dbebecdfb`  
		Last Modified: Wed, 23 Jan 2019 15:06:54 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8689b09b728009f15469fb1da9dd9d3ee588ba28e28deb960405adacde05360`  
		Last Modified: Wed, 23 Jan 2019 15:06:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102065863dd664ce02c555dc3c52dabf9338bfe4700152930519a45c8dded8f5`  
		Last Modified: Wed, 23 Jan 2019 15:07:26 GMT  
		Size: 116.1 MB (116131390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1075804cfc186d05c07e17ceb7f9cce1eddb72ffc0b2c38f9d7a1508c677da`  
		Last Modified: Thu, 07 Feb 2019 13:12:57 GMT  
		Size: 87.4 MB (87418069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783f7f5a95fe0e2310907b675b9b4b46d6a7587b4a52c6ef0f2ba11516997029`  
		Last Modified: Thu, 07 Feb 2019 13:12:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:dddee443d0186ad79e6e1dfaa499a44e596a7fd296ea6eb17c62e493bc681caf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267096418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa108431a615660f847778e2e6eb69495e98e4ab1fb8f229d3e212202a70569f`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:02:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 12:02:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:02:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:02:47 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:02:48 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:02:50 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 12:02:51 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 12:10:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:00:20 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 07:00:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 07:00:24 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 07:00:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 07:00:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 07:00:41 GMT
USER gradle
# Thu, 07 Feb 2019 07:00:42 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 07:00:44 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 07:00:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728a1a214916eb4a509ab6c7284ffb2344b51a370d254df297f6a1d765144075`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d5fd32d26abfb2ff62eadb06426d7184037b72279f240b11e9317cdf0ffe45`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30f22e14ed678de92bba013ac8a02d03bad43b02b10a5e505a8d893a6d05dd`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa999a42823c7394284a925e6beb791129f931e6e5e9eb1ec9afa6dbe02bd37`  
		Last Modified: Wed, 06 Feb 2019 12:39:23 GMT  
		Size: 121.9 MB (121891447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3924674ccf06a56f5f79291efbed5dfdcfb607a788c20ac6ceb41ac3aea72e48`  
		Last Modified: Thu, 07 Feb 2019 07:10:59 GMT  
		Size: 87.4 MB (87418030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c7e22bea8d2b300cf1f84f2605723211868a258fa4d91ac7c90b2d68097941`  
		Last Modified: Thu, 07 Feb 2019 07:10:36 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; 386

```console
$ docker pull gradle@sha256:57def78fb27569a3f05f8639902c9ccf2ea1d210fb86b98104f2e4469f87e775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286069198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f6b278de41093322d9ca49ddce48115be12e8cf92c8b640ac68aef8c547bee`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:21:49 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Thu, 07 Feb 2019 06:21:49 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:21:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:21:50 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:21:50 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 06:21:51 GMT
ENV JAVA_VERSION=11.0.2
# Thu, 07 Feb 2019 06:21:51 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Thu, 07 Feb 2019 06:22:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:48:16 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 07:48:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 07:48:16 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 07:48:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 07:48:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 07:48:21 GMT
USER gradle
# Thu, 07 Feb 2019 07:48:21 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 07:48:22 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 07:48:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485a88101bd3bac4d9996fc573ac38d13cbcc047dd0399d55d3be0bf0f3b88bd`  
		Last Modified: Thu, 07 Feb 2019 06:39:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c722e5a788ece8ebf15d8f9aa8bd003eaaef8297bd4b6fdb4e31d2d48aab18a3`  
		Last Modified: Thu, 07 Feb 2019 06:39:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cacd2a35903e7de34f1af1aa31dc8b4068e69df9d2db1b6acce0f007e0d2c6d`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2f1ef3bf48c3a6f39317b17207da4bf03b7fdaf1927607d5e8e44acf51f848`  
		Last Modified: Thu, 07 Feb 2019 06:40:20 GMT  
		Size: 136.4 MB (136358991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd1af0c5f6947a66d0e0c8ef6231910702c0bd8d180807be213d99bd4fd4a2f`  
		Last Modified: Thu, 07 Feb 2019 07:51:20 GMT  
		Size: 87.4 MB (87417987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5249ea6bf8a056cddcbe9c5ad7ef0ec8ba316acf4b19beba32859245075cbdb4`  
		Last Modified: Thu, 07 Feb 2019 07:51:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:cbb45c484fdd67be693388fc85c28b95a628991be79bf89de315886648f9e46d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267610083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a385e14c839d074d61df9d6ea93348b5fb47d7cc32f62a69e30ce31483925492`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:22:13 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 20:22:17 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:22:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:22:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:22:34 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 20:22:39 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 20:22:42 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 20:26:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 00:55:55 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 00:55:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 00:55:58 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 00:55:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 00:56:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 00:56:10 GMT
USER gradle
# Thu, 07 Feb 2019 00:56:13 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 00:56:15 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 00:56:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31cd7008a155452b9ece7c7dab0d6e7567ef8c55f2df5ff999e45c309031982`  
		Last Modified: Wed, 06 Feb 2019 19:28:30 GMT  
		Size: 10.0 MB (9986460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f96c2690a341be01eb7e79a7624948d65549f3a26a1adc1b9a5a669523505ea`  
		Last Modified: Wed, 06 Feb 2019 19:28:28 GMT  
		Size: 4.3 MB (4295659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f20bf77b1e398ca4193dcade8311e979631c9beebc1553ccb5b6209e93c223`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 848.3 KB (848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a83c5c7b66403c94de8e3541c3d87b1b419e40f3e93d3841d03451090b66341`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6870abfb3914790676e136d9b59c3b0205d7c5be3d7ec0e46b93d7ff972ad9`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e30474f32a61fc58d9b82b72563bf7df099cc09a31e6869241e12300f8466c8`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786130e937d60bb5c02df653677c679c8df62533f5ce186daacf83b534eb9794`  
		Last Modified: Wed, 06 Feb 2019 20:39:41 GMT  
		Size: 119.4 MB (119443731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943d2f98ed4d039028968045fa1755448a6b4e09716dc3f6ac7d8289b73c5bf5`  
		Last Modified: Thu, 07 Feb 2019 01:02:26 GMT  
		Size: 87.4 MB (87418129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308df91f7d6fcfe875e7f83c703a097be22cf342051699813057f4f162bd7974`  
		Last Modified: Thu, 07 Feb 2019 01:02:19 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; s390x

```console
$ docker pull gradle@sha256:99bb49380bb2e7613830b7a235b4540e69eb2e869eea06f7a3cfa81a9754ad0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267313525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523ec2f5634b31de99414b76a6abb07207bf8f26e8edd5c4008141f2b737dcc1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 17:55:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:55:19 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 17:55:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 17:55:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 17:55:20 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 17:55:20 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 17:55:20 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 17:55:21 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 17:55:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 18:07:58 GMT
CMD ["gradle"]
# Wed, 06 Feb 2019 18:07:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 07 Feb 2019 00:02:40 GMT
ENV GRADLE_VERSION=5.2
# Thu, 07 Feb 2019 00:02:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
# Thu, 07 Feb 2019 00:02:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 07 Feb 2019 00:02:44 GMT
USER gradle
# Thu, 07 Feb 2019 00:02:44 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 07 Feb 2019 00:02:45 GMT
WORKDIR /home/gradle
# Thu, 07 Feb 2019 00:02:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=ff322863250159595e93b5a4d17a6f0d21c59a1a0497c1e1cf1d53826485503f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e6786603fdb9e4ea361b73be3870f1118d3882c1619dfbbf9dec4d483fa32e76`  
		Last Modified: Wed, 06 Feb 2019 12:46:43 GMT  
		Size: 45.2 MB (45214898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac487c4bc63f07da92ff3259ca4d0fb30f86c5647f775010d11e6d51131b848`  
		Last Modified: Wed, 06 Feb 2019 15:34:22 GMT  
		Size: 10.3 MB (10312678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e9925f73763aaae5f9ccd2b0c87ae90efbee12ee8698074a1056e25c2e6360`  
		Last Modified: Wed, 06 Feb 2019 15:34:21 GMT  
		Size: 4.4 MB (4371900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2286c2cd611562cb26ce49eda3f9ff0c0f161921a76086ce7329a049505a18e1`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 863.6 KB (863650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc921fa65cc04f4b5bbd1bf4e3e0d2db9a5582fa9cc67141c2a69050d555ec2a`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7037f77e1cb98a8424fdc8f1bb4cdb34579db7ef60efe2a38525a66a54d00f`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e939048949b18e9e4335baaf3d82b9feaf002a0c6875d305cc7c3946a3cbda`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf07e8487ffc75ca65688f3bae1d696a9ed7ba8e3f510a5e55cdcd5f75bbf91`  
		Last Modified: Wed, 06 Feb 2019 17:59:32 GMT  
		Size: 119.1 MB (119131549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c832673bce67a6ebe98a829469b447a5600be442b97010a87dcf7ef591e52c`  
		Last Modified: Thu, 07 Feb 2019 00:05:57 GMT  
		Size: 87.4 MB (87418043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ae586f29303896ad32ac200adc06c6d04191c1c9eb54cf8a62cccedd2a5878`  
		Last Modified: Thu, 07 Feb 2019 00:05:51 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
