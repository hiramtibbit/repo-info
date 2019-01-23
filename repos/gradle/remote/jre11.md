## `gradle:jre11`

```console
$ docker pull gradle@sha256:24f05c23871eb5c3710b6c34855476c18d5ba7411576218ea15103dacde55677
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
$ docker pull gradle@sha256:ab9237de48de7c7192aa401f10af1ca0a80a825a0dd2a3d48ef933a5a8831321
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278465473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b3772744038b43aa6d43e78a36f2be3a221ed96d955cb18c84042e858065fe`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 21:14:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:14:45 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 22 Jan 2019 21:14:46 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:14:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:14:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:14:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:14:48 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 22 Jan 2019 21:14:48 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Tue, 22 Jan 2019 21:15:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 06:41:52 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 06:41:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 23 Jan 2019 06:41:52 GMT
ENV GRADLE_VERSION=5.1.1
# Wed, 23 Jan 2019 06:41:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Wed, 23 Jan 2019 06:41:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 23 Jan 2019 06:41:57 GMT
USER gradle
# Wed, 23 Jan 2019 06:41:57 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 23 Jan 2019 06:41:57 GMT
WORKDIR /home/gradle
# Wed, 23 Jan 2019 06:41:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79c18d1bc044350734c637ab0d6d7c8b16409dbec54e0b5f0e71ad57829f0b`  
		Last Modified: Tue, 22 Jan 2019 21:40:15 GMT  
		Size: 852.9 KB (852896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dcfa0f1520349b15a63d316bd4914a9e39c1f9989e545abd9fa8d18dc1121b`  
		Last Modified: Tue, 22 Jan 2019 21:40:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f569dea2038b08b0a899ce366ece8142997b10fb2f61a5dd50125240a28f3d`  
		Last Modified: Tue, 22 Jan 2019 21:40:15 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df526d2401a1ed790424f4828c9a57018c0021b09e8395d8c2f75f36a9a94325`  
		Last Modified: Tue, 22 Jan 2019 21:40:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c9a40ceaa9e33b6d38b3db6a4f5365f3eaea2cc249e61995f416eb8b3fdb4b`  
		Last Modified: Tue, 22 Jan 2019 21:40:40 GMT  
		Size: 131.4 MB (131382888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a3bb3cf847d8cc20b82ed95a566e2794e0058ebb7389bd51d5845444515075`  
		Last Modified: Wed, 23 Jan 2019 06:45:02 GMT  
		Size: 85.8 MB (85763163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de02f777978b56ebb48801da94f2fc0751d1fe17b53825fe45d81140fdece74`  
		Last Modified: Wed, 23 Jan 2019 06:44:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v5

```console
$ docker pull gradle@sha256:77b82b63d998649a46186c29c553ff6151ce8df19b927dd9e207cd9147d2de8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259321285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3d20f63d714ac0b814660c5b54eb73944cb05421dde632fc58ae2b46d2a72d`
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
# Wed, 23 Jan 2019 16:15:31 GMT
ENV GRADLE_VERSION=5.1.1
# Wed, 23 Jan 2019 16:15:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Wed, 23 Jan 2019 16:15:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 23 Jan 2019 16:15:41 GMT
USER gradle
# Wed, 23 Jan 2019 16:15:42 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 23 Jan 2019 16:15:43 GMT
WORKDIR /home/gradle
# Wed, 23 Jan 2019 16:15:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
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
	-	`sha256:633c3f9cc1f0153ed360f7871b9ea748caf6058ad6949709953c675d866d970b`  
		Last Modified: Wed, 23 Jan 2019 16:19:53 GMT  
		Size: 85.8 MB (85763300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9630520c2d712b16aaa3f594b62f810e8bee0955f052e33f1eff00169814a2ac`  
		Last Modified: Wed, 23 Jan 2019 16:19:40 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:d0b94f18cfe57e27bb2a13aa069dd8f2fd6d5ed5b2b16a62a573c3c75918ca03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.2 MB (258199018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdbfd89e3058c92dc86a3d64845c5fb925c5a7b46f093c4478f2503c4c198b0`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 15:23:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:23:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 15:23:24 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 15:23:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 15:23:31 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 15:23:32 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 15:23:32 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 15:23:33 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 15:24:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 03 Jan 2019 12:59:37 GMT
CMD ["gradle"]
# Thu, 03 Jan 2019 12:59:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Jan 2019 13:01:05 GMT
ENV GRADLE_VERSION=5.1.1
# Tue, 15 Jan 2019 13:01:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Tue, 15 Jan 2019 13:01:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 Jan 2019 13:01:14 GMT
USER gradle
# Tue, 15 Jan 2019 13:01:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Jan 2019 13:01:15 GMT
WORKDIR /home/gradle
# Tue, 15 Jan 2019 13:01:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ddf0dacaf7bd1fada3564c06259cd913377c86a62914bfd75c22462041a1ee`  
		Last Modified: Sat, 29 Dec 2018 15:48:46 GMT  
		Size: 830.2 KB (830222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa6a6e224dd161394a26f14289d281730b4767e567bf30a9d3fd8de256d963d`  
		Last Modified: Sat, 29 Dec 2018 15:48:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928aef9518a92a1f2ffae6a8bef785ca70065a5b359a8b042a5c29d378588586`  
		Last Modified: Sat, 29 Dec 2018 15:48:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fb68ad1fef61a31759961a6a619895e903fb7966e5ea44de48007ba4f2c3a5`  
		Last Modified: Sat, 29 Dec 2018 15:48:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65291fcd26b53a9c1aa02715a7424987ed7b5016762c6e2ee07263eeb706c512`  
		Last Modified: Sat, 29 Dec 2018 15:49:24 GMT  
		Size: 116.1 MB (116131265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f6792d0d83b67b835341d85f49c44c8564f6c6a4e6733502bb1d6ddbb4c21a`  
		Last Modified: Tue, 15 Jan 2019 13:05:23 GMT  
		Size: 85.8 MB (85763337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d495f7180b4d8948ff1fff9c9ae390e79728d141f3fc04a3c272d37e41297fc`  
		Last Modified: Tue, 15 Jan 2019 13:05:10 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:061860b4d6813614c2c9d03d83e4140808c5be0c598b1e604d3464a1f8515b07
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265428812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d35746581b99deab1a4d8d9e940aa778db3a261925a255fbf51f652a87b6ba`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:58:00 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 16:58:03 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 16:58:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 16:58:14 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 16:58:17 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 16:58:20 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 16:58:24 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 17:03:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 03:17:40 GMT
CMD ["gradle"]
# Sun, 30 Dec 2018 03:17:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Jan 2019 09:48:46 GMT
ENV GRADLE_VERSION=5.1.1
# Tue, 15 Jan 2019 09:48:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Tue, 15 Jan 2019 09:49:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 Jan 2019 09:49:03 GMT
USER gradle
# Tue, 15 Jan 2019 09:49:04 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Jan 2019 09:49:05 GMT
WORKDIR /home/gradle
# Tue, 15 Jan 2019 09:49:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067b466a87f4bc957123ef0c565a72cd98c6d2503abd5e98facf40d7ca0264bb`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc02a49b210bd97e7c5db482cfd638a20666f318bda6836f203647def507ed07`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1aee5a5240ea08ab0e73928c73a98ac53313423298584e74b5810b437459132`  
		Last Modified: Sat, 29 Dec 2018 17:25:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9d46dfd05684bcdecb8ea4bcb3c45e5e5b0b376470a2fccd417c31aa238fc8`  
		Last Modified: Sat, 29 Dec 2018 17:26:39 GMT  
		Size: 121.9 MB (121887270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fac00766d9aacae710c582a1b083e38f71fce2e567c4f3ca6d3a3c549856b9`  
		Last Modified: Tue, 15 Jan 2019 09:56:27 GMT  
		Size: 85.8 MB (85763172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212a9c9228a2566e93a7fc9095236fbb42924db83921dd29263d8a9dcc00cfb9`  
		Last Modified: Tue, 15 Jan 2019 09:56:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; 386

```console
$ docker pull gradle@sha256:1a4254d394a47ad792b77be885aca449509f073dc725e1f811631592f0fe9bd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284435219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c04712453109d441c70a84c39c35d3221036d2ed23ef7e5c8231b772fa0fd6`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 20:52:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:52:05 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 20:52:05 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:52:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:52:07 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:52:07 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 20:52:07 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 20:52:07 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 20:52:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 05:22:22 GMT
CMD ["gradle"]
# Sun, 30 Dec 2018 05:22:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Jan 2019 11:48:00 GMT
ENV GRADLE_VERSION=5.1.1
# Tue, 15 Jan 2019 11:48:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Tue, 15 Jan 2019 11:48:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 Jan 2019 11:48:06 GMT
USER gradle
# Tue, 15 Jan 2019 11:48:06 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Jan 2019 11:48:07 GMT
WORKDIR /home/gradle
# Tue, 15 Jan 2019 11:48:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85ebddf711af5a5d00c3ec70830e1b0e199d81dcfa089912a1a93e7d75c7b91`  
		Last Modified: Sat, 29 Dec 2018 13:28:20 GMT  
		Size: 10.8 MB (10799001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903d64cc922323fd00f382d7845c5313498fa2eaaa23e5b0508f38f2b4a4a76`  
		Last Modified: Sat, 29 Dec 2018 13:28:17 GMT  
		Size: 4.6 MB (4560876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd42dee6f51ed5d4429a1edb5736fe8b3e0f87968ed96036c52b6aa3e3cbf0ec`  
		Last Modified: Sat, 29 Dec 2018 21:21:14 GMT  
		Size: 861.8 KB (861756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544027384c0fc9e8a46be1d7a9a0e704bcfc289535b2ed4afc7756abf02db3`  
		Last Modified: Sat, 29 Dec 2018 21:21:14 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a785edd0f950f78d38a7144c9ff66577840f00ad7c806b199835b3ef99b99b10`  
		Last Modified: Sat, 29 Dec 2018 21:21:14 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32959280199c21fe77990bb5c0d7a288811623ea5ea4857a72eda6aaf831d1e`  
		Last Modified: Sat, 29 Dec 2018 21:21:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4db0d26ca1b733ece4be5fb2a4d4a01327eba967a7b4c2f3b7ee20fe98c92d8`  
		Last Modified: Sat, 29 Dec 2018 21:21:44 GMT  
		Size: 136.4 MB (136392425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16760a1e236e9b5b7e0b62d1c60bfcc2d5096ab32222c6e595d63a3b2f4e9246`  
		Last Modified: Tue, 15 Jan 2019 11:51:11 GMT  
		Size: 85.8 MB (85763128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2cfcccdc6b3b5dda73aaff64655bfa680d4f40ea9dfe7905212d6cfde40749`  
		Last Modified: Tue, 15 Jan 2019 11:51:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:4da9fd190b34c7d0aabb1ab39d73f7ece823cc05f13e83539762466d986eed2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (265953047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c9a510e9046cb7ead26d6de11ed3a2c6aa2fb06d6b6a880ad3c833055c26b2`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:55 GMT
ADD file:607fec07098dd44504d39967b200ef4c80d3c31eb3524c99a522d779f8a48785 in / 
# Wed, 23 Jan 2019 09:26:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:02:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:21:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:21:52 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 12:21:54 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:21:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:22:04 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:22:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:22:09 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 12:22:11 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 12:25:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 18:09:56 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 18:09:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 23 Jan 2019 18:10:00 GMT
ENV GRADLE_VERSION=5.1.1
# Wed, 23 Jan 2019 18:10:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Wed, 23 Jan 2019 18:10:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 23 Jan 2019 18:10:21 GMT
USER gradle
# Wed, 23 Jan 2019 18:10:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 23 Jan 2019 18:10:26 GMT
WORKDIR /home/gradle
# Wed, 23 Jan 2019 18:10:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:ce16bf3279cca6ab2d1b46a272b57d4c1e11cbe13e3a52148fceb9cc07eb0b37`  
		Last Modified: Wed, 23 Jan 2019 09:33:00 GMT  
		Size: 45.6 MB (45616894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b9074895469b770a2456cb2377047c95c405f79e3b04ceca45935caf814e40`  
		Last Modified: Wed, 23 Jan 2019 11:48:50 GMT  
		Size: 10.0 MB (9986574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9d854b31c2198e3a6cc80e64e62531a2e63cf2b43ff8b40f03224abe9ee36`  
		Last Modified: Wed, 23 Jan 2019 11:48:48 GMT  
		Size: 4.3 MB (4295774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffda65826e04099e41ce446f64a457cf3ae94c3e1f01921947745ffa67c2e8a6`  
		Last Modified: Wed, 23 Jan 2019 12:44:23 GMT  
		Size: 848.4 KB (848403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f50704ca6d0a0a17cfcec2fac7fe0c27aa6a18dc95f96b6afb52b7afff4d47`  
		Last Modified: Wed, 23 Jan 2019 12:44:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efffe50a2e26d82956d82c7be3c81dd9619fea5235f57207ded78b5552ca4371`  
		Last Modified: Wed, 23 Jan 2019 12:44:23 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e4272780c060c5d2f3f88a93f80e2c6f1c2566e621cada9c7dfd958cc776af`  
		Last Modified: Wed, 23 Jan 2019 12:44:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06dac7508b31a6d91211f1a43fbb05591fd8ded31fbda5f8c75b69a58fbad841`  
		Last Modified: Wed, 23 Jan 2019 12:45:05 GMT  
		Size: 119.4 MB (119441199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df8c9b57fdbc8283a24bcdfc659dd145a75f0b0c3dd1b4a88e0003e235b4a68`  
		Last Modified: Wed, 23 Jan 2019 18:16:09 GMT  
		Size: 85.8 MB (85763366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591b6a8b3b8dcd488e293658ae8936a6995929c65da437e6f3d3e6da73a3dc71`  
		Last Modified: Wed, 23 Jan 2019 18:16:00 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; s390x

```console
$ docker pull gradle@sha256:30d38f80a00c307c9609017a648ca81ec16d2d258984698c3aab9dea532c180f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265665041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a821949e15362c6297247c303013c0d6ba09c9321abe26ba9a0d46e0191253`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:54 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 13:53:54 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 13:53:56 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 13:53:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 13:53:57 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 13:53:57 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 13:54:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 18:19:46 GMT
CMD ["gradle"]
# Wed, 23 Jan 2019 18:19:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 23 Jan 2019 18:19:47 GMT
ENV GRADLE_VERSION=5.1.1
# Wed, 23 Jan 2019 18:19:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Wed, 23 Jan 2019 18:19:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 23 Jan 2019 18:19:54 GMT
USER gradle
# Wed, 23 Jan 2019 18:19:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 23 Jan 2019 18:19:55 GMT
WORKDIR /home/gradle
# Wed, 23 Jan 2019 18:19:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d02bff03ceffb88611cd80aa3c7878e8798d38cb4272d3017b4113d67f64da`  
		Last Modified: Wed, 23 Jan 2019 14:00:32 GMT  
		Size: 863.7 KB (863702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbfeb6d6d5fb3987dd2c8dc68757366bf52719c61de2e9553bef8d227cde214`  
		Last Modified: Wed, 23 Jan 2019 14:00:32 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdf0cff60a578bf3e9dda54c826ee6ef90bc8066201dc9228972477bc8e4b06`  
		Last Modified: Wed, 23 Jan 2019 14:00:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1180ea77326dcde8d04e0bfea66ad0af4f00e4e6584540ba4a56fb1900612ed7`  
		Last Modified: Wed, 23 Jan 2019 14:00:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4470a0336c2793db6c65e547a1fb581c46f5e02dd4a68e7cf46bb9bd6fe746`  
		Last Modified: Wed, 23 Jan 2019 14:00:50 GMT  
		Size: 119.1 MB (119137647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737d3a2cb7fec918cbfd41e5f694c3bb8b93e59c7a6de2adbaaa5748b23fab05`  
		Last Modified: Wed, 23 Jan 2019 18:24:21 GMT  
		Size: 85.8 MB (85763156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaad9bc4eb59e2cc170fffc1ec56a9f32ef5944f7a158f37e94f3138a8b2609e`  
		Last Modified: Wed, 23 Jan 2019 18:24:12 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
