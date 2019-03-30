<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gradle`

-	[`gradle:5.3`](#gradle53)
-	[`gradle:5.3.1`](#gradle531)
-	[`gradle:5.3.1-alpine`](#gradle531-alpine)
-	[`gradle:5.3.1-jdk`](#gradle531-jdk)
-	[`gradle:5.3.1-jdk11`](#gradle531-jdk11)
-	[`gradle:5.3.1-jdk11-slim`](#gradle531-jdk11-slim)
-	[`gradle:5.3.1-jdk8`](#gradle531-jdk8)
-	[`gradle:5.3.1-jdk8-alpine`](#gradle531-jdk8-alpine)
-	[`gradle:5.3.1-jdk8-slim`](#gradle531-jdk8-slim)
-	[`gradle:5.3.1-jdk-alpine`](#gradle531-jdk-alpine)
-	[`gradle:5.3.1-jdk-slim`](#gradle531-jdk-slim)
-	[`gradle:5.3.1-jre`](#gradle531-jre)
-	[`gradle:5.3.1-jre11`](#gradle531-jre11)
-	[`gradle:5.3.1-jre11-slim`](#gradle531-jre11-slim)
-	[`gradle:5.3.1-jre8`](#gradle531-jre8)
-	[`gradle:5.3.1-jre8-alpine`](#gradle531-jre8-alpine)
-	[`gradle:5.3.1-jre8-slim`](#gradle531-jre8-slim)
-	[`gradle:5.3.1-jre-alpine`](#gradle531-jre-alpine)
-	[`gradle:5.3.1-jre-slim`](#gradle531-jre-slim)
-	[`gradle:5.3.1-slim`](#gradle531-slim)
-	[`gradle:5.3-alpine`](#gradle53-alpine)
-	[`gradle:5.3-jdk`](#gradle53-jdk)
-	[`gradle:5.3-jdk11`](#gradle53-jdk11)
-	[`gradle:5.3-jdk11-slim`](#gradle53-jdk11-slim)
-	[`gradle:5.3-jdk8`](#gradle53-jdk8)
-	[`gradle:5.3-jdk8-alpine`](#gradle53-jdk8-alpine)
-	[`gradle:5.3-jdk8-slim`](#gradle53-jdk8-slim)
-	[`gradle:5.3-jdk-alpine`](#gradle53-jdk-alpine)
-	[`gradle:5.3-jdk-slim`](#gradle53-jdk-slim)
-	[`gradle:5.3-jre`](#gradle53-jre)
-	[`gradle:5.3-jre11`](#gradle53-jre11)
-	[`gradle:5.3-jre11-slim`](#gradle53-jre11-slim)
-	[`gradle:5.3-jre8`](#gradle53-jre8)
-	[`gradle:5.3-jre8-alpine`](#gradle53-jre8-alpine)
-	[`gradle:5.3-jre8-slim`](#gradle53-jre8-slim)
-	[`gradle:5.3-jre-alpine`](#gradle53-jre-alpine)
-	[`gradle:5.3-jre-slim`](#gradle53-jre-slim)
-	[`gradle:5.3-slim`](#gradle53-slim)
-	[`gradle:alpine`](#gradlealpine)
-	[`gradle:jdk`](#gradlejdk)
-	[`gradle:jdk11`](#gradlejdk11)
-	[`gradle:jdk11-slim`](#gradlejdk11-slim)
-	[`gradle:jdk8`](#gradlejdk8)
-	[`gradle:jdk8-alpine`](#gradlejdk8-alpine)
-	[`gradle:jdk8-slim`](#gradlejdk8-slim)
-	[`gradle:jdk-alpine`](#gradlejdk-alpine)
-	[`gradle:jdk-slim`](#gradlejdk-slim)
-	[`gradle:jre`](#gradlejre)
-	[`gradle:jre11`](#gradlejre11)
-	[`gradle:jre11-slim`](#gradlejre11-slim)
-	[`gradle:jre8`](#gradlejre8)
-	[`gradle:jre8-alpine`](#gradlejre8-alpine)
-	[`gradle:jre8-slim`](#gradlejre8-slim)
-	[`gradle:jre-alpine`](#gradlejre-alpine)
-	[`gradle:jre-slim`](#gradlejre-slim)
-	[`gradle:latest`](#gradlelatest)
-	[`gradle:slim`](#gradleslim)

## `gradle:5.3`

```console
$ docker pull gradle@sha256:d8c4aad8e2273cb3cfe074afe1742f918baca5e29fce12877302766e389db5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3` - linux; amd64

```console
$ docker pull gradle@sha256:7e438356f9727bc76c8dd2474090456bf66edfadc8ddf2cad1e0fedb277f6f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333859654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c25675a2b2185256bf3b604e6d45ed21bd4b298d000b9d1f23aea08695d585c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:11:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:11:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:10 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:15 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:15 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b2cabd5f9906b71738f6a6af71944936bb41f70f4be75a32fbfe46b7b4d76`  
		Last Modified: Fri, 29 Mar 2019 21:23:35 GMT  
		Size: 87.2 MB (87227733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef86c52c5b7f1dfb6d28dd2e63307afcb5de959560d296bd499c7237811b21`  
		Last Modified: Fri, 29 Mar 2019 21:23:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3` - linux; ppc64le

```console
$ docker pull gradle@sha256:1b6e4be6f67b39c95ce71365d8ecab78dcdac979ff4c0014386c42ddabcfd52f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323219218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb7a50ede84617c11f9e182f235ee2c35666551cdc87c19a9dddbd71b694187`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:16:33 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:16:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:06 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb891f7fc7def38d3a0f80e3b3e91328e400b247bad0d24db9d405486f705682`  
		Last Modified: Sat, 30 Mar 2019 08:25:02 GMT  
		Size: 87.2 MB (87227889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e714fe63d1c7b6244d81a0ebcefa3e8d7557603ba8e247988626809fbc9a891`  
		Last Modified: Sat, 30 Mar 2019 08:24:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1`

```console
$ docker pull gradle@sha256:d8c4aad8e2273cb3cfe074afe1742f918baca5e29fce12877302766e389db5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1` - linux; amd64

```console
$ docker pull gradle@sha256:7e438356f9727bc76c8dd2474090456bf66edfadc8ddf2cad1e0fedb277f6f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333859654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c25675a2b2185256bf3b604e6d45ed21bd4b298d000b9d1f23aea08695d585c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:11:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:11:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:10 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:15 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:15 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b2cabd5f9906b71738f6a6af71944936bb41f70f4be75a32fbfe46b7b4d76`  
		Last Modified: Fri, 29 Mar 2019 21:23:35 GMT  
		Size: 87.2 MB (87227733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef86c52c5b7f1dfb6d28dd2e63307afcb5de959560d296bd499c7237811b21`  
		Last Modified: Fri, 29 Mar 2019 21:23:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1` - linux; ppc64le

```console
$ docker pull gradle@sha256:1b6e4be6f67b39c95ce71365d8ecab78dcdac979ff4c0014386c42ddabcfd52f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323219218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb7a50ede84617c11f9e182f235ee2c35666551cdc87c19a9dddbd71b694187`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:16:33 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:16:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:06 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb891f7fc7def38d3a0f80e3b3e91328e400b247bad0d24db9d405486f705682`  
		Last Modified: Sat, 30 Mar 2019 08:25:02 GMT  
		Size: 87.2 MB (87227889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e714fe63d1c7b6244d81a0ebcefa3e8d7557603ba8e247988626809fbc9a891`  
		Last Modified: Sat, 30 Mar 2019 08:24:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-alpine`

```console
$ docker pull gradle@sha256:1ced24d5c5c0261a0827c4eae39b7f40da0b82b13c3cbb7a696e25dc686750a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3.1-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:78b2d854221a0e6b04c03a8a22e8f8f63b9488b7bb4af191e34004026987664e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160728765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80d26bddf3cf5c8bc4109790768cee40aaeb781930183439fca74c407b85dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:31 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:36 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:36 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2e298bc2edc753dd65d4398f4fe965252a9685a995ecaf30f30a0fbe2dab7`  
		Last Modified: Fri, 29 Mar 2019 21:24:01 GMT  
		Size: 87.2 MB (87224004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c1941a21a8b6fccec26c4b66457d6db7035181a4a27ccc64f7c2197c0797f`  
		Last Modified: Fri, 29 Mar 2019 21:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cdc8713a97f0fb79639da378329f4d245372003c8c2abf2f4f7966587ba02f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158002075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751dc619d217cc62d644cb3c4523f7b3273e3a2b20804e8d233f10283f9c2481`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:36 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:21 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:50:43 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:50:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:50:51 GMT
USER gradle
# Sat, 30 Mar 2019 07:50:52 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:50:52 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad7077b71f2530fb8510e9432e06bc9d50bd26356f9c547d022bfc28dc0a05`  
		Last Modified: Thu, 28 Mar 2019 07:50:29 GMT  
		Size: 66.2 MB (66249162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741e26ccd40c42190a186d7d149a198c8e830d6a322c424b2fecd4e61cad318`  
		Last Modified: Thu, 28 Mar 2019 07:50:18 GMT  
		Size: 2.0 MB (1987831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbebfa735d16de9dbad567cb18126212f7a23da0eab0d29ef4c490596cd408`  
		Last Modified: Sat, 30 Mar 2019 07:51:41 GMT  
		Size: 87.2 MB (87223998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d68e2a14d824e9258839e6f4c0181e2959e7909fe931d501cbf51e432745e4`  
		Last Modified: Sat, 30 Mar 2019 07:51:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:017f41aadc83ec01fae8559abe152aa713c054163d02ed3d756b053f4b86fb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161480597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a787cd26faf0056ccd97a232337a1bf0909de59f9a965fd8622ba124f70f21cd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:29:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:29:15 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:06:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:06:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:55 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:18:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:18:12 GMT
USER gradle
# Sat, 30 Mar 2019 08:18:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:18:19 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe450b8ba378ece3582cabe05c8c904987e5055a25f8db191dd3caa2fcedb2dd`  
		Last Modified: Thu, 28 Mar 2019 08:44:48 GMT  
		Size: 69.0 MB (69003437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2840dbe717f1b7f0275fb6b486e84b7dc1458991b1a5b4727da657049594201`  
		Last Modified: Thu, 28 Mar 2019 08:43:52 GMT  
		Size: 2.5 MB (2474068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691ae35fe874c34d2a81a819d7764522ff3ff97de8b44f52bccbb30ad3b3e44`  
		Last Modified: Sat, 30 Mar 2019 08:26:28 GMT  
		Size: 87.2 MB (87224042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87869d0fa01c99547bab2aabb530396faa86be774b703645154b4739006308c`  
		Last Modified: Sat, 30 Mar 2019 08:26:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jdk`

```console
$ docker pull gradle@sha256:d8c4aad8e2273cb3cfe074afe1742f918baca5e29fce12877302766e389db5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:7e438356f9727bc76c8dd2474090456bf66edfadc8ddf2cad1e0fedb277f6f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333859654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c25675a2b2185256bf3b604e6d45ed21bd4b298d000b9d1f23aea08695d585c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:11:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:11:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:10 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:15 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:15 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b2cabd5f9906b71738f6a6af71944936bb41f70f4be75a32fbfe46b7b4d76`  
		Last Modified: Fri, 29 Mar 2019 21:23:35 GMT  
		Size: 87.2 MB (87227733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef86c52c5b7f1dfb6d28dd2e63307afcb5de959560d296bd499c7237811b21`  
		Last Modified: Fri, 29 Mar 2019 21:23:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk` - linux; ppc64le

```console
$ docker pull gradle@sha256:1b6e4be6f67b39c95ce71365d8ecab78dcdac979ff4c0014386c42ddabcfd52f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323219218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb7a50ede84617c11f9e182f235ee2c35666551cdc87c19a9dddbd71b694187`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:16:33 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:16:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:06 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb891f7fc7def38d3a0f80e3b3e91328e400b247bad0d24db9d405486f705682`  
		Last Modified: Sat, 30 Mar 2019 08:25:02 GMT  
		Size: 87.2 MB (87227889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e714fe63d1c7b6244d81a0ebcefa3e8d7557603ba8e247988626809fbc9a891`  
		Last Modified: Sat, 30 Mar 2019 08:24:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jdk11`

```console
$ docker pull gradle@sha256:76b2b5cfa30c1ed4af80800ed3f173226134f547f349c16afd9cae225ebaa0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:7fadc570a83b9c224bb39cd85e411c1392978f69b5b23d69705251376ef0b830
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.7 MB (523697361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ad385d281fc22f998653a6c3370bdba9e98dc6ef752f5b777325a4bbabc858`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:44:00 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:44:00 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:44:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 00:44:02 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 00:45:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 00:45:26 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 10:59:40 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 10:59:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:25 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:30 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:30 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:30 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a9d43f5b1c3593b7eb98ccf10e74bc0390cb227befbef3bf13f27d2a79f7f9`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d516f512e0d5c064be962d0f4ee49d9b8675b5a5acd3f70527ea40d60d766f`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818845f741c457054b344e3108bd8e119c3f1f4d8f48b515a610f797b9a20cb9`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c738f464a19882ad215b583752f969af431250f7c54f6b8fa282d8feb5fe484`  
		Last Modified: Wed, 27 Mar 2019 01:07:37 GMT  
		Size: 325.0 MB (325046409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1cdb54980d97c0523fb7ec5482a658ab1925ce72f401c1798e2177fd04f41a`  
		Last Modified: Fri, 29 Mar 2019 21:24:55 GMT  
		Size: 87.2 MB (87227746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aaae0614a4ce6028c8ceda5f1edede5624e8cd920203ca85ef5bd322aa6c9e`  
		Last Modified: Fri, 29 Mar 2019 21:24:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:e1a24e76ed13d836a1990c0c848d4bb7560c907b4f90888b505affca69f84a83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.1 MB (491098325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40603df6ea11f7bc5766bb3ec783037e71eabffaf07095cd12ccdc84daee7953`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:13 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:33:15 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:33:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:33:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:33:26 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:33:29 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 12:33:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 12:37:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 12:37:33 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 19:01:22 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 19:01:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:21:08 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:21:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:21:20 GMT
USER gradle
# Sat, 30 Mar 2019 08:21:22 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:21:25 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:21:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ea5606b0ab0f9785b09523fbab1bc61ea4c3be532697e46b335a41b14ef13d`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6140218cafdbc0a0a55e39346362a87008296ac3b0a734f7e7f74c3fa79918f8`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25aa2cc4e25215380c3203c2681cd0afde017e041cedcc531cb4212666f9e432`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd43a6718775b45fb08007b8f5fa08479a9d12af312e4f0e03dd4ed161b7bf`  
		Last Modified: Wed, 27 Mar 2019 12:54:27 GMT  
		Size: 293.0 MB (293016060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c6931ea947bf318c142a9a779b11568bc8a0c4e586319191ccc544db49120f`  
		Last Modified: Sat, 30 Mar 2019 08:30:03 GMT  
		Size: 87.2 MB (87227790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4d419d332c3bda2bfb623c28f33b352fddf140a0ae81da30f928b5e5d79ffe`  
		Last Modified: Sat, 30 Mar 2019 08:29:37 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jdk11-slim`

```console
$ docker pull gradle@sha256:36b5a0ab657f096113715d34b8a615e0eab7cd2facb5adf5b3d1254e4f4e7d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jdk11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:eac1896d56ce30c2550ab1f32abc0f63c43ce2a931db2a985c19a8e64f4db7d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.4 MB (382404078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c125ddce0649009dfbb41344e5bfeedcaade072ef9fef5a0449986284ad9fa0b`
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
# Fri, 29 Mar 2019 21:22:34 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:39 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:22:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:43 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:43 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:43 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:c5a65369ad9aabc505d30f091b9e5b6d447a03110bb3da21f0daeec04341bacb`  
		Last Modified: Fri, 29 Mar 2019 21:25:00 GMT  
		Size: 1.1 MB (1100245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857772d5bb739e44ddd9a9e40556547f254fd3a4d58af239945983f36a77d9f4`  
		Last Modified: Fri, 29 Mar 2019 21:25:07 GMT  
		Size: 87.2 MB (87227770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe699e45cc506c791a3e0732e758c665e91667def73a4399f2c307cf84b066b`  
		Last Modified: Fri, 29 Mar 2019 21:25:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:48bb8c958f969af63b2bcad00b0d1cc448ce8375868478b626033e03510c7fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350585433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14ac3f138d6eca8611ebe10dca7d88f0e56a3a9395225f4122e1115a8e8071f`
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
# Sat, 30 Mar 2019 08:21:38 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:21:51 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:21:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:22:07 GMT
USER gradle
# Sat, 30 Mar 2019 08:22:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:22:12 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:57660c62ade57816eea02347445861af7bf9976e8411d1fdb16ce3a862ab22dd`  
		Last Modified: Sat, 30 Mar 2019 08:30:17 GMT  
		Size: 1.1 MB (1085283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03be21593b5474ef832518066a376ef01002113611c28ec3543ae4dc63eb0dc`  
		Last Modified: Sat, 30 Mar 2019 08:31:02 GMT  
		Size: 87.2 MB (87227812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b9d48ae5ffaaf9f8d5c7926deb70b54ef5be409f4f0ee7c568c32bb74d89db`  
		Last Modified: Sat, 30 Mar 2019 08:30:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jdk8`

```console
$ docker pull gradle@sha256:d8c4aad8e2273cb3cfe074afe1742f918baca5e29fce12877302766e389db5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:7e438356f9727bc76c8dd2474090456bf66edfadc8ddf2cad1e0fedb277f6f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333859654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c25675a2b2185256bf3b604e6d45ed21bd4b298d000b9d1f23aea08695d585c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:11:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:11:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:10 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:15 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:15 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b2cabd5f9906b71738f6a6af71944936bb41f70f4be75a32fbfe46b7b4d76`  
		Last Modified: Fri, 29 Mar 2019 21:23:35 GMT  
		Size: 87.2 MB (87227733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef86c52c5b7f1dfb6d28dd2e63307afcb5de959560d296bd499c7237811b21`  
		Last Modified: Fri, 29 Mar 2019 21:23:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk8` - linux; ppc64le

```console
$ docker pull gradle@sha256:1b6e4be6f67b39c95ce71365d8ecab78dcdac979ff4c0014386c42ddabcfd52f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323219218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb7a50ede84617c11f9e182f235ee2c35666551cdc87c19a9dddbd71b694187`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:16:33 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:16:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:06 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb891f7fc7def38d3a0f80e3b3e91328e400b247bad0d24db9d405486f705682`  
		Last Modified: Sat, 30 Mar 2019 08:25:02 GMT  
		Size: 87.2 MB (87227889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e714fe63d1c7b6244d81a0ebcefa3e8d7557603ba8e247988626809fbc9a891`  
		Last Modified: Sat, 30 Mar 2019 08:24:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jdk8-alpine`

```console
$ docker pull gradle@sha256:1ced24d5c5c0261a0827c4eae39b7f40da0b82b13c3cbb7a696e25dc686750a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3.1-jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:78b2d854221a0e6b04c03a8a22e8f8f63b9488b7bb4af191e34004026987664e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160728765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80d26bddf3cf5c8bc4109790768cee40aaeb781930183439fca74c407b85dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:31 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:36 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:36 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2e298bc2edc753dd65d4398f4fe965252a9685a995ecaf30f30a0fbe2dab7`  
		Last Modified: Fri, 29 Mar 2019 21:24:01 GMT  
		Size: 87.2 MB (87224004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c1941a21a8b6fccec26c4b66457d6db7035181a4a27ccc64f7c2197c0797f`  
		Last Modified: Fri, 29 Mar 2019 21:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk8-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cdc8713a97f0fb79639da378329f4d245372003c8c2abf2f4f7966587ba02f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158002075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751dc619d217cc62d644cb3c4523f7b3273e3a2b20804e8d233f10283f9c2481`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:36 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:21 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:50:43 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:50:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:50:51 GMT
USER gradle
# Sat, 30 Mar 2019 07:50:52 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:50:52 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad7077b71f2530fb8510e9432e06bc9d50bd26356f9c547d022bfc28dc0a05`  
		Last Modified: Thu, 28 Mar 2019 07:50:29 GMT  
		Size: 66.2 MB (66249162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741e26ccd40c42190a186d7d149a198c8e830d6a322c424b2fecd4e61cad318`  
		Last Modified: Thu, 28 Mar 2019 07:50:18 GMT  
		Size: 2.0 MB (1987831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbebfa735d16de9dbad567cb18126212f7a23da0eab0d29ef4c490596cd408`  
		Last Modified: Sat, 30 Mar 2019 07:51:41 GMT  
		Size: 87.2 MB (87223998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d68e2a14d824e9258839e6f4c0181e2959e7909fe931d501cbf51e432745e4`  
		Last Modified: Sat, 30 Mar 2019 07:51:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk8-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:017f41aadc83ec01fae8559abe152aa713c054163d02ed3d756b053f4b86fb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161480597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a787cd26faf0056ccd97a232337a1bf0909de59f9a965fd8622ba124f70f21cd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:29:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:29:15 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:06:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:06:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:55 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:18:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:18:12 GMT
USER gradle
# Sat, 30 Mar 2019 08:18:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:18:19 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe450b8ba378ece3582cabe05c8c904987e5055a25f8db191dd3caa2fcedb2dd`  
		Last Modified: Thu, 28 Mar 2019 08:44:48 GMT  
		Size: 69.0 MB (69003437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2840dbe717f1b7f0275fb6b486e84b7dc1458991b1a5b4727da657049594201`  
		Last Modified: Thu, 28 Mar 2019 08:43:52 GMT  
		Size: 2.5 MB (2474068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691ae35fe874c34d2a81a819d7764522ff3ff97de8b44f52bccbb30ad3b3e44`  
		Last Modified: Sat, 30 Mar 2019 08:26:28 GMT  
		Size: 87.2 MB (87224042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87869d0fa01c99547bab2aabb530396faa86be774b703645154b4739006308c`  
		Last Modified: Sat, 30 Mar 2019 08:26:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jdk8-slim`

```console
$ docker pull gradle@sha256:1b8d2640ca0a9c6c883c042d6210ce728312421316a10e8a2b23300f96fdb246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jdk8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:343df7a1be3b598576f3d06cc59c3d7312d22d004055d0b0676ef4e2e14b60a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178832980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e515233d54d66ce589545bc4bf13f14df4e86ba46de4f7fc5f20379c292742c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:41 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:48 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:21:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:52 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:52 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8801669174663bc1b2c91dbc1f9b87d31ecf8937ef4f2bb8a8b48f0bb169b0`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 1.1 MB (1098990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001d4db8624df86f469723a1383666196bb89947a2439ac69a6c90a0410190c`  
		Last Modified: Fri, 29 Mar 2019 21:24:15 GMT  
		Size: 87.2 MB (87227794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60afe8d034b389ce8cdecda09bb82c087675cdfd924977243f5a175adca1c92`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:0567643f68b66a190e821c2fa604156f615c1061a881df6b8d8398bf7c29180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169452108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb214066965649211aec04cf2545e284103f6bb400ac28d59110744a7f581d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:18:34 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:18:58 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:19:16 GMT
USER gradle
# Sat, 30 Mar 2019 08:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:19:22 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cfde3e3fa5d595c095222f594ce79148f3dc0b4ca2332a6e37cdc497b15250`  
		Last Modified: Sat, 30 Mar 2019 08:26:57 GMT  
		Size: 1.1 MB (1083974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee04e342dd95af0fb785a76ca53633e39d84e82662529c17029eb6ffd403728`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 87.2 MB (87227836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16785a98997b9dd487e2965ea587802c27c5c7ae540a4c8a6a6f9c27d36e8b90`  
		Last Modified: Sat, 30 Mar 2019 08:26:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jdk-alpine`

```console
$ docker pull gradle@sha256:1ced24d5c5c0261a0827c4eae39b7f40da0b82b13c3cbb7a696e25dc686750a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3.1-jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:78b2d854221a0e6b04c03a8a22e8f8f63b9488b7bb4af191e34004026987664e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160728765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80d26bddf3cf5c8bc4109790768cee40aaeb781930183439fca74c407b85dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:31 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:36 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:36 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2e298bc2edc753dd65d4398f4fe965252a9685a995ecaf30f30a0fbe2dab7`  
		Last Modified: Fri, 29 Mar 2019 21:24:01 GMT  
		Size: 87.2 MB (87224004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c1941a21a8b6fccec26c4b66457d6db7035181a4a27ccc64f7c2197c0797f`  
		Last Modified: Fri, 29 Mar 2019 21:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cdc8713a97f0fb79639da378329f4d245372003c8c2abf2f4f7966587ba02f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158002075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751dc619d217cc62d644cb3c4523f7b3273e3a2b20804e8d233f10283f9c2481`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:36 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:21 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:50:43 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:50:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:50:51 GMT
USER gradle
# Sat, 30 Mar 2019 07:50:52 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:50:52 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad7077b71f2530fb8510e9432e06bc9d50bd26356f9c547d022bfc28dc0a05`  
		Last Modified: Thu, 28 Mar 2019 07:50:29 GMT  
		Size: 66.2 MB (66249162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741e26ccd40c42190a186d7d149a198c8e830d6a322c424b2fecd4e61cad318`  
		Last Modified: Thu, 28 Mar 2019 07:50:18 GMT  
		Size: 2.0 MB (1987831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbebfa735d16de9dbad567cb18126212f7a23da0eab0d29ef4c490596cd408`  
		Last Modified: Sat, 30 Mar 2019 07:51:41 GMT  
		Size: 87.2 MB (87223998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d68e2a14d824e9258839e6f4c0181e2959e7909fe931d501cbf51e432745e4`  
		Last Modified: Sat, 30 Mar 2019 07:51:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:017f41aadc83ec01fae8559abe152aa713c054163d02ed3d756b053f4b86fb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161480597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a787cd26faf0056ccd97a232337a1bf0909de59f9a965fd8622ba124f70f21cd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:29:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:29:15 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:06:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:06:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:55 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:18:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:18:12 GMT
USER gradle
# Sat, 30 Mar 2019 08:18:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:18:19 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe450b8ba378ece3582cabe05c8c904987e5055a25f8db191dd3caa2fcedb2dd`  
		Last Modified: Thu, 28 Mar 2019 08:44:48 GMT  
		Size: 69.0 MB (69003437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2840dbe717f1b7f0275fb6b486e84b7dc1458991b1a5b4727da657049594201`  
		Last Modified: Thu, 28 Mar 2019 08:43:52 GMT  
		Size: 2.5 MB (2474068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691ae35fe874c34d2a81a819d7764522ff3ff97de8b44f52bccbb30ad3b3e44`  
		Last Modified: Sat, 30 Mar 2019 08:26:28 GMT  
		Size: 87.2 MB (87224042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87869d0fa01c99547bab2aabb530396faa86be774b703645154b4739006308c`  
		Last Modified: Sat, 30 Mar 2019 08:26:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jdk-slim`

```console
$ docker pull gradle@sha256:1b8d2640ca0a9c6c883c042d6210ce728312421316a10e8a2b23300f96fdb246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jdk-slim` - linux; amd64

```console
$ docker pull gradle@sha256:343df7a1be3b598576f3d06cc59c3d7312d22d004055d0b0676ef4e2e14b60a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178832980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e515233d54d66ce589545bc4bf13f14df4e86ba46de4f7fc5f20379c292742c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:41 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:48 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:21:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:52 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:52 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8801669174663bc1b2c91dbc1f9b87d31ecf8937ef4f2bb8a8b48f0bb169b0`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 1.1 MB (1098990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001d4db8624df86f469723a1383666196bb89947a2439ac69a6c90a0410190c`  
		Last Modified: Fri, 29 Mar 2019 21:24:15 GMT  
		Size: 87.2 MB (87227794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60afe8d034b389ce8cdecda09bb82c087675cdfd924977243f5a175adca1c92`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jdk-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:0567643f68b66a190e821c2fa604156f615c1061a881df6b8d8398bf7c29180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169452108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb214066965649211aec04cf2545e284103f6bb400ac28d59110744a7f581d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:18:34 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:18:58 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:19:16 GMT
USER gradle
# Sat, 30 Mar 2019 08:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:19:22 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cfde3e3fa5d595c095222f594ce79148f3dc0b4ca2332a6e37cdc497b15250`  
		Last Modified: Sat, 30 Mar 2019 08:26:57 GMT  
		Size: 1.1 MB (1083974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee04e342dd95af0fb785a76ca53633e39d84e82662529c17029eb6ffd403728`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 87.2 MB (87227836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16785a98997b9dd487e2965ea587802c27c5c7ae540a4c8a6a6f9c27d36e8b90`  
		Last Modified: Sat, 30 Mar 2019 08:26:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jre`

```console
$ docker pull gradle@sha256:f7f44345202d913ffd174b32fec858941a3c8bbf67ab9812b12fe28f17b76a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jre` - linux; amd64

```console
$ docker pull gradle@sha256:c7cd179edbc63a045a9a9309fe93904394d0b3f0bcc2f4d9d329a912ea378a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270718858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8979dbe46fb9c55de359c997607bb8e655ceab3a2a8f9acf4f32941b380aade5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:03 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:21 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:25 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:26 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4408975e8eb06e69ccb17d21bc73352e89e72f5e4e0f9d11b6cabf8f107cd7`  
		Last Modified: Fri, 29 Mar 2019 21:23:49 GMT  
		Size: 87.2 MB (87227769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfccfecdd44f97da734adc47cf719fc00da2067a3ec115b89fdafe6bfa454d5`  
		Last Modified: Fri, 29 Mar 2019 21:23:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre` - linux; ppc64le

```console
$ docker pull gradle@sha256:2128845fd1299f60444fc6d863a20abb603eee0034f51f40210ba12aac5a1b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262583133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc519bdd01323edb5c25eb1147194ca1404b9bc3f518dd366b3ba77ee3823b7`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:48:16 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:48:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:48:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:48:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:29:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:29:30 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:35:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:51 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:20 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:17:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:37 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:40 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:42 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec55eb306e259c22f5f85e9e1ab2674681fbe25c9f6a46c26306a67256b5279d`  
		Last Modified: Thu, 28 Mar 2019 08:45:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d19db8724fba414a27d7be8145ed3a9c64b5d9f5f1fcc87ee340a4c2ff4e33`  
		Last Modified: Thu, 28 Mar 2019 08:45:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efde2cf64d691f2b71780a6fc9401996c98a1c1c5978140f5c3d6ed0cc31450`  
		Last Modified: Thu, 28 Mar 2019 08:47:01 GMT  
		Size: 114.6 MB (114610443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e92094ce8afd0214de4ab245118d64eff83cd2d749af8e008598825a7dbe08`  
		Last Modified: Sat, 30 Mar 2019 08:25:48 GMT  
		Size: 87.2 MB (87227827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3c8937a6956526456981d4755d3926627999ea6c2cca247da74b4ea66b2a05`  
		Last Modified: Sat, 30 Mar 2019 08:25:31 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jre11`

```console
$ docker pull gradle@sha256:99ec8929ed47500eb1d94983876b699d57070a94972b179f4103672c8efbdf21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jre11` - linux; amd64

```console
$ docker pull gradle@sha256:3e9430ccb07126f0858390f07055690e05237172e49329a0f4fd8f05b981b6d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279861663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204b1115bc72bef848a6950b1fa26816d7f8f89ac9102bcdc8d78591bdd73ac4`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:46:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:46:47 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:46:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 00:46:50 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 00:47:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 11:00:19 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 11:00:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:49 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:53 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:53 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:53 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce08128c662b0d9d0f3d9f86364c56f7b387111dd0602f2116e7fefb7bf3322`  
		Last Modified: Wed, 27 Mar 2019 01:08:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b0cf80b370dc3011ff521f948fb212324f4b709f978ce5108193882a1a5a2f`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bd533f444d12d7c517d33e97d3ac0d27d31b2fbf6582dba416e47fcde1efc6`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc053cd8d4e277a71c9aa687ba5acbf1bc488ef70e77c6ad79ca2a6188ab4c8`  
		Last Modified: Wed, 27 Mar 2019 01:08:58 GMT  
		Size: 131.3 MB (131315629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aadec6a8d7b23a80390876fc43ff2bbfc07f9b44a9ce13a520bb68b803b1343`  
		Last Modified: Fri, 29 Mar 2019 21:25:17 GMT  
		Size: 87.2 MB (87227772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4344d4714b45feead2021b0480ed10c614c3e16df450809c3541af86b8046483`  
		Last Modified: Fri, 29 Mar 2019 21:25:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:85985b65c8ae7c133360b7f29e81574639d0e763ca7c90bc7c5c00e372f4ad78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267417124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a9c881d8f3531ef067bd6890268ea9d332c85ddb6d73b777b23e1cf79fe1ca`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:40:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:40:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:40:51 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:40:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:40:54 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 12:40:55 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 12:44:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 19:03:45 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 19:03:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:22:27 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:22:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:22:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:22:43 GMT
USER gradle
# Sat, 30 Mar 2019 08:22:45 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:22:48 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:22:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6514601eba88b9755ff17942c0be61cb64680f20b4a891540bbebb6b4547773`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef2acb3bd7521314a968803be3dfd3751ba1b952e38765798137d11cb6b7b23`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9feef0d857e479208222dc7f252bdb1acf94c133fe1dd05df462e3fb137a59`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6741a76bb88e932c9f8b9aa23f22e8cebff884fa3c40ed7a7c55cf9f0a4bf`  
		Last Modified: Wed, 27 Mar 2019 12:58:21 GMT  
		Size: 119.4 MB (119444214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cd2d56e3ecf9b0d2277fd6c8d95b5ddb00543a07331ae90056d86196439057`  
		Last Modified: Sat, 30 Mar 2019 08:31:25 GMT  
		Size: 87.2 MB (87227826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3d15739b9cd58366b672f90da1aad9c77a045783f5bfa85b863d7b992cc442`  
		Last Modified: Sat, 30 Mar 2019 08:31:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jre11-slim`

```console
$ docker pull gradle@sha256:dca2d1cb732dacd5eea18412b91acaf8e89185b4bedf6772447625a8f978fbb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jre11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:6e810989abb1b69413bfc3e2c12b40bf9f537cb2efe70f896d14f064d6eb79de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188414172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3beb735b3e6c4d9e3e7a6dc3d595a8600f273abec947e93ca5aa063dc2e98e`
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
# Fri, 29 Mar 2019 21:22:58 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:23:02 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:23:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:23:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:23:07 GMT
USER gradle
# Fri, 29 Mar 2019 21:23:07 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:23:07 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:23:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:96cc6307706817b9251dd36c59c5d93288eac82994c300114f390cc70847ca76`  
		Last Modified: Fri, 29 Mar 2019 21:25:22 GMT  
		Size: 1.1 MB (1099417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd12e0b6cd35573f0c47628facd7795bff6f76d867daddea2f945128919ab616`  
		Last Modified: Fri, 29 Mar 2019 21:25:28 GMT  
		Size: 87.2 MB (87227779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5217a5a0d18d97841608ad4d87bc89cba4cc8dae058b14afab642961a9ec4`  
		Last Modified: Fri, 29 Mar 2019 21:25:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:03403eb49c43d95e4e446c49c09057f4b1c5edcbd4a8cd7480f2538e3f8e553b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176757444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73391b38d07835efe3687b98b870d88774e3d52ab96a752d0d85a8f49f4b7b08`
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
# Sat, 30 Mar 2019 08:23:03 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:23:15 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:23:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:23:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:23:26 GMT
USER gradle
# Sat, 30 Mar 2019 08:23:27 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:23:28 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:23:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:3a65b31b3548f4d730ee687c735bf89f14a285ec26bc32eb79a73bbdcb862408`  
		Last Modified: Sat, 30 Mar 2019 08:31:40 GMT  
		Size: 1.1 MB (1084367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713e509eb62f790fcb2a6fd0ed42af79581804b756480f5b689c8187d6731a86`  
		Last Modified: Sat, 30 Mar 2019 08:32:04 GMT  
		Size: 87.2 MB (87227841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af992c408280bbbd1dce84990c0717e8159a553f6253e67db3f0e3e4242a0ae2`  
		Last Modified: Sat, 30 Mar 2019 08:31:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jre8`

```console
$ docker pull gradle@sha256:f7f44345202d913ffd174b32fec858941a3c8bbf67ab9812b12fe28f17b76a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:c7cd179edbc63a045a9a9309fe93904394d0b3f0bcc2f4d9d329a912ea378a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270718858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8979dbe46fb9c55de359c997607bb8e655ceab3a2a8f9acf4f32941b380aade5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:03 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:21 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:25 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:26 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4408975e8eb06e69ccb17d21bc73352e89e72f5e4e0f9d11b6cabf8f107cd7`  
		Last Modified: Fri, 29 Mar 2019 21:23:49 GMT  
		Size: 87.2 MB (87227769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfccfecdd44f97da734adc47cf719fc00da2067a3ec115b89fdafe6bfa454d5`  
		Last Modified: Fri, 29 Mar 2019 21:23:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre8` - linux; ppc64le

```console
$ docker pull gradle@sha256:2128845fd1299f60444fc6d863a20abb603eee0034f51f40210ba12aac5a1b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262583133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc519bdd01323edb5c25eb1147194ca1404b9bc3f518dd366b3ba77ee3823b7`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:48:16 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:48:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:48:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:48:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:29:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:29:30 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:35:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:51 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:20 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:17:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:37 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:40 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:42 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec55eb306e259c22f5f85e9e1ab2674681fbe25c9f6a46c26306a67256b5279d`  
		Last Modified: Thu, 28 Mar 2019 08:45:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d19db8724fba414a27d7be8145ed3a9c64b5d9f5f1fcc87ee340a4c2ff4e33`  
		Last Modified: Thu, 28 Mar 2019 08:45:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efde2cf64d691f2b71780a6fc9401996c98a1c1c5978140f5c3d6ed0cc31450`  
		Last Modified: Thu, 28 Mar 2019 08:47:01 GMT  
		Size: 114.6 MB (114610443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e92094ce8afd0214de4ab245118d64eff83cd2d749af8e008598825a7dbe08`  
		Last Modified: Sat, 30 Mar 2019 08:25:48 GMT  
		Size: 87.2 MB (87227827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3c8937a6956526456981d4755d3926627999ea6c2cca247da74b4ea66b2a05`  
		Last Modified: Sat, 30 Mar 2019 08:25:31 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jre8-alpine`

```console
$ docker pull gradle@sha256:863ea7f8a8bcaf2cd780761665f7532f5303a03e4b562397e334a02769989ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3.1-jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:b957da26715ee90f9969ae4e51e7aa54435e4790a0b53c31fb85d1f29333fa7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144939691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f8440cea7be858498350d43979a09ba8a91d00f722f1348299da86980d26ff`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:43 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:58 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:03 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:03 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:03 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c240607e75953b8f1fa2f21317c1a68d59049527fef1eca5ad2beb90c9e8ba`  
		Last Modified: Fri, 29 Mar 2019 21:24:30 GMT  
		Size: 87.2 MB (87223906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ad490515f66a61343b874e7879d44e6f907d9c8107d616d8f1996408340e8e`  
		Last Modified: Fri, 29 Mar 2019 21:24:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre8-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:34d54609645c983be09dda1c35b9bba8e46a31be9528a34c37fe1cbb4c7a46b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142188007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0521307c1a2dbd5c73871e780654b4371f77b44aba9d620ffb4386f70c1e58d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:42 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:47 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:49 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:39 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:51:00 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:51:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:51:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:51:09 GMT
USER gradle
# Sat, 30 Mar 2019 07:51:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:51:09 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:51:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb73e570ec3ef984c7f0a7cd932217fc7d3481039e1fd377177ce522baba673`  
		Last Modified: Thu, 28 Mar 2019 07:50:52 GMT  
		Size: 50.4 MB (50436033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e91841f348d71ab4afc7c8a8fa556586dcfad7c813054da42b8723a9c1f790e`  
		Last Modified: Thu, 28 Mar 2019 07:50:44 GMT  
		Size: 2.0 MB (1986846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908fbe7e6952c46d421a0a4dbef906543d8929e79047762d750125c87a6502e`  
		Last Modified: Sat, 30 Mar 2019 07:52:10 GMT  
		Size: 87.2 MB (87224044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0019b99bf046c9935a11b34d6102b34a7cb58cb25a94e497482bf6a7c2340885`  
		Last Modified: Sat, 30 Mar 2019 07:51:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre8-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:d5000f06abd3a403348f9248deb6c844c7e2ec0e6184d73d448486a99b19091c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145625198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64314a2660fa8b22c349b2ef1a73c54a72dd8b60677590d0c39e480b3e6ed32`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:37:51 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:38:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:38:13 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:07:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:19:44 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:19:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:02 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:05 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef74255218309615e9f667e5274026d23052ecd738fca3d2e873afcf38fdf50a`  
		Last Modified: Thu, 28 Mar 2019 08:48:54 GMT  
		Size: 53.1 MB (53149344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81a40256f1669874675017d12810ae274fe4ed6c15dddcff8387b19d150b41`  
		Last Modified: Thu, 28 Mar 2019 08:48:09 GMT  
		Size: 2.5 MB (2472817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7551e864de182451486885b5d97afc58779a208a26260f4214fbf33d6fb0bf`  
		Last Modified: Sat, 30 Mar 2019 08:28:25 GMT  
		Size: 87.2 MB (87223987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7d786be796f5d5c7a7be4cac9855230ea73d0f7f3330c3581a67b33ec56b37`  
		Last Modified: Sat, 30 Mar 2019 08:27:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jre8-slim`

```console
$ docker pull gradle@sha256:23158aa999df4d051ee892741194947d1d6d0498faf287c24893d9ac7886c333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jre8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:b0c7199f40cb7f35e02525162c6ba1bda47ea5177698acac7fef0629e082c91f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167163229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6c40f155b7f63fe43e20ba183e3fdc733fdec00af62cdf42e0947aac98da2e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:49:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:54 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:09 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:13 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:22:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:20 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:20 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ab0e6e34de83f184b5a7929a9009e4523561eea7c090ec5727806fdef8fb2`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 55.9 MB (55885973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9069fe0be4f7aa6ef690aea07ba44620736e02ef89111e24e1b6601d2f37bc0`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 1.1 MB (1097980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0344ef692bd82712b31368bc455e913d064d7d29056012b53a6287813b63018`  
		Last Modified: Fri, 29 Mar 2019 21:24:42 GMT  
		Size: 87.2 MB (87227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca6357d3c18acf4dea9c6128b7ce3b05c742939ad1b0ea8ec8963e720f217ee`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:488f934a54d7ae2a801743ef2f078b6f8246d074b0c3d6171f777f0c86522074
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160050822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f29ca114dc5071d17a801960b213f197c3fe91b6d69c4c40b2763aaeaf6bd3c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:49:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:35:19 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:35:24 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:37:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:08:23 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:08:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:20:19 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:20:36 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:20:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:20:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:50 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:56 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:21:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86fba52d14a165b78745a1ddb558414e06684b430c574e712dc791287b28b6`  
		Last Modified: Thu, 28 Mar 2019 08:47:54 GMT  
		Size: 48.5 MB (48538128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0719dd26b4c320ba550888aae2103342ccc681bc3c0cf79b07a23ff9af9e2f`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 1.1 MB (1083083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585eb01cfb9372c2c62a34ad3aa0ab692ea832896dd52ff328d3bdc04ab80f95`  
		Last Modified: Sat, 30 Mar 2019 08:29:14 GMT  
		Size: 87.2 MB (87227846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93340eeffbce04c74bfcd258c6116054e08048d495548cc073a148f659c87aa0`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jre-alpine`

```console
$ docker pull gradle@sha256:863ea7f8a8bcaf2cd780761665f7532f5303a03e4b562397e334a02769989ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3.1-jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:b957da26715ee90f9969ae4e51e7aa54435e4790a0b53c31fb85d1f29333fa7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144939691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f8440cea7be858498350d43979a09ba8a91d00f722f1348299da86980d26ff`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:43 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:58 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:03 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:03 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:03 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c240607e75953b8f1fa2f21317c1a68d59049527fef1eca5ad2beb90c9e8ba`  
		Last Modified: Fri, 29 Mar 2019 21:24:30 GMT  
		Size: 87.2 MB (87223906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ad490515f66a61343b874e7879d44e6f907d9c8107d616d8f1996408340e8e`  
		Last Modified: Fri, 29 Mar 2019 21:24:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:34d54609645c983be09dda1c35b9bba8e46a31be9528a34c37fe1cbb4c7a46b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142188007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0521307c1a2dbd5c73871e780654b4371f77b44aba9d620ffb4386f70c1e58d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:42 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:47 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:49 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:39 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:51:00 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:51:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:51:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:51:09 GMT
USER gradle
# Sat, 30 Mar 2019 07:51:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:51:09 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:51:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb73e570ec3ef984c7f0a7cd932217fc7d3481039e1fd377177ce522baba673`  
		Last Modified: Thu, 28 Mar 2019 07:50:52 GMT  
		Size: 50.4 MB (50436033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e91841f348d71ab4afc7c8a8fa556586dcfad7c813054da42b8723a9c1f790e`  
		Last Modified: Thu, 28 Mar 2019 07:50:44 GMT  
		Size: 2.0 MB (1986846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908fbe7e6952c46d421a0a4dbef906543d8929e79047762d750125c87a6502e`  
		Last Modified: Sat, 30 Mar 2019 07:52:10 GMT  
		Size: 87.2 MB (87224044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0019b99bf046c9935a11b34d6102b34a7cb58cb25a94e497482bf6a7c2340885`  
		Last Modified: Sat, 30 Mar 2019 07:51:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:d5000f06abd3a403348f9248deb6c844c7e2ec0e6184d73d448486a99b19091c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145625198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64314a2660fa8b22c349b2ef1a73c54a72dd8b60677590d0c39e480b3e6ed32`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:37:51 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:38:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:38:13 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:07:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:19:44 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:19:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:02 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:05 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef74255218309615e9f667e5274026d23052ecd738fca3d2e873afcf38fdf50a`  
		Last Modified: Thu, 28 Mar 2019 08:48:54 GMT  
		Size: 53.1 MB (53149344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81a40256f1669874675017d12810ae274fe4ed6c15dddcff8387b19d150b41`  
		Last Modified: Thu, 28 Mar 2019 08:48:09 GMT  
		Size: 2.5 MB (2472817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7551e864de182451486885b5d97afc58779a208a26260f4214fbf33d6fb0bf`  
		Last Modified: Sat, 30 Mar 2019 08:28:25 GMT  
		Size: 87.2 MB (87223987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7d786be796f5d5c7a7be4cac9855230ea73d0f7f3330c3581a67b33ec56b37`  
		Last Modified: Sat, 30 Mar 2019 08:27:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-jre-slim`

```console
$ docker pull gradle@sha256:23158aa999df4d051ee892741194947d1d6d0498faf287c24893d9ac7886c333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-jre-slim` - linux; amd64

```console
$ docker pull gradle@sha256:b0c7199f40cb7f35e02525162c6ba1bda47ea5177698acac7fef0629e082c91f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167163229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6c40f155b7f63fe43e20ba183e3fdc733fdec00af62cdf42e0947aac98da2e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:49:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:54 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:09 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:13 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:22:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:20 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:20 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ab0e6e34de83f184b5a7929a9009e4523561eea7c090ec5727806fdef8fb2`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 55.9 MB (55885973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9069fe0be4f7aa6ef690aea07ba44620736e02ef89111e24e1b6601d2f37bc0`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 1.1 MB (1097980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0344ef692bd82712b31368bc455e913d064d7d29056012b53a6287813b63018`  
		Last Modified: Fri, 29 Mar 2019 21:24:42 GMT  
		Size: 87.2 MB (87227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca6357d3c18acf4dea9c6128b7ce3b05c742939ad1b0ea8ec8963e720f217ee`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-jre-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:488f934a54d7ae2a801743ef2f078b6f8246d074b0c3d6171f777f0c86522074
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160050822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f29ca114dc5071d17a801960b213f197c3fe91b6d69c4c40b2763aaeaf6bd3c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:49:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:35:19 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:35:24 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:37:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:08:23 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:08:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:20:19 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:20:36 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:20:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:20:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:50 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:56 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:21:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86fba52d14a165b78745a1ddb558414e06684b430c574e712dc791287b28b6`  
		Last Modified: Thu, 28 Mar 2019 08:47:54 GMT  
		Size: 48.5 MB (48538128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0719dd26b4c320ba550888aae2103342ccc681bc3c0cf79b07a23ff9af9e2f`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 1.1 MB (1083083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585eb01cfb9372c2c62a34ad3aa0ab692ea832896dd52ff328d3bdc04ab80f95`  
		Last Modified: Sat, 30 Mar 2019 08:29:14 GMT  
		Size: 87.2 MB (87227846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93340eeffbce04c74bfcd258c6116054e08048d495548cc073a148f659c87aa0`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3.1-slim`

```console
$ docker pull gradle@sha256:1b8d2640ca0a9c6c883c042d6210ce728312421316a10e8a2b23300f96fdb246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3.1-slim` - linux; amd64

```console
$ docker pull gradle@sha256:343df7a1be3b598576f3d06cc59c3d7312d22d004055d0b0676ef4e2e14b60a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178832980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e515233d54d66ce589545bc4bf13f14df4e86ba46de4f7fc5f20379c292742c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:41 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:48 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:21:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:52 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:52 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8801669174663bc1b2c91dbc1f9b87d31ecf8937ef4f2bb8a8b48f0bb169b0`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 1.1 MB (1098990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001d4db8624df86f469723a1383666196bb89947a2439ac69a6c90a0410190c`  
		Last Modified: Fri, 29 Mar 2019 21:24:15 GMT  
		Size: 87.2 MB (87227794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60afe8d034b389ce8cdecda09bb82c087675cdfd924977243f5a175adca1c92`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3.1-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:0567643f68b66a190e821c2fa604156f615c1061a881df6b8d8398bf7c29180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169452108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb214066965649211aec04cf2545e284103f6bb400ac28d59110744a7f581d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:18:34 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:18:58 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:19:16 GMT
USER gradle
# Sat, 30 Mar 2019 08:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:19:22 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cfde3e3fa5d595c095222f594ce79148f3dc0b4ca2332a6e37cdc497b15250`  
		Last Modified: Sat, 30 Mar 2019 08:26:57 GMT  
		Size: 1.1 MB (1083974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee04e342dd95af0fb785a76ca53633e39d84e82662529c17029eb6ffd403728`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 87.2 MB (87227836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16785a98997b9dd487e2965ea587802c27c5c7ae540a4c8a6a6f9c27d36e8b90`  
		Last Modified: Sat, 30 Mar 2019 08:26:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-alpine`

```console
$ docker pull gradle@sha256:1ced24d5c5c0261a0827c4eae39b7f40da0b82b13c3cbb7a696e25dc686750a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:78b2d854221a0e6b04c03a8a22e8f8f63b9488b7bb4af191e34004026987664e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160728765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80d26bddf3cf5c8bc4109790768cee40aaeb781930183439fca74c407b85dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:31 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:36 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:36 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2e298bc2edc753dd65d4398f4fe965252a9685a995ecaf30f30a0fbe2dab7`  
		Last Modified: Fri, 29 Mar 2019 21:24:01 GMT  
		Size: 87.2 MB (87224004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c1941a21a8b6fccec26c4b66457d6db7035181a4a27ccc64f7c2197c0797f`  
		Last Modified: Fri, 29 Mar 2019 21:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cdc8713a97f0fb79639da378329f4d245372003c8c2abf2f4f7966587ba02f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158002075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751dc619d217cc62d644cb3c4523f7b3273e3a2b20804e8d233f10283f9c2481`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:36 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:21 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:50:43 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:50:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:50:51 GMT
USER gradle
# Sat, 30 Mar 2019 07:50:52 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:50:52 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad7077b71f2530fb8510e9432e06bc9d50bd26356f9c547d022bfc28dc0a05`  
		Last Modified: Thu, 28 Mar 2019 07:50:29 GMT  
		Size: 66.2 MB (66249162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741e26ccd40c42190a186d7d149a198c8e830d6a322c424b2fecd4e61cad318`  
		Last Modified: Thu, 28 Mar 2019 07:50:18 GMT  
		Size: 2.0 MB (1987831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbebfa735d16de9dbad567cb18126212f7a23da0eab0d29ef4c490596cd408`  
		Last Modified: Sat, 30 Mar 2019 07:51:41 GMT  
		Size: 87.2 MB (87223998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d68e2a14d824e9258839e6f4c0181e2959e7909fe931d501cbf51e432745e4`  
		Last Modified: Sat, 30 Mar 2019 07:51:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:017f41aadc83ec01fae8559abe152aa713c054163d02ed3d756b053f4b86fb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161480597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a787cd26faf0056ccd97a232337a1bf0909de59f9a965fd8622ba124f70f21cd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:29:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:29:15 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:06:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:06:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:55 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:18:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:18:12 GMT
USER gradle
# Sat, 30 Mar 2019 08:18:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:18:19 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe450b8ba378ece3582cabe05c8c904987e5055a25f8db191dd3caa2fcedb2dd`  
		Last Modified: Thu, 28 Mar 2019 08:44:48 GMT  
		Size: 69.0 MB (69003437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2840dbe717f1b7f0275fb6b486e84b7dc1458991b1a5b4727da657049594201`  
		Last Modified: Thu, 28 Mar 2019 08:43:52 GMT  
		Size: 2.5 MB (2474068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691ae35fe874c34d2a81a819d7764522ff3ff97de8b44f52bccbb30ad3b3e44`  
		Last Modified: Sat, 30 Mar 2019 08:26:28 GMT  
		Size: 87.2 MB (87224042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87869d0fa01c99547bab2aabb530396faa86be774b703645154b4739006308c`  
		Last Modified: Sat, 30 Mar 2019 08:26:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jdk`

```console
$ docker pull gradle@sha256:d8c4aad8e2273cb3cfe074afe1742f918baca5e29fce12877302766e389db5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:7e438356f9727bc76c8dd2474090456bf66edfadc8ddf2cad1e0fedb277f6f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333859654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c25675a2b2185256bf3b604e6d45ed21bd4b298d000b9d1f23aea08695d585c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:11:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:11:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:10 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:15 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:15 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b2cabd5f9906b71738f6a6af71944936bb41f70f4be75a32fbfe46b7b4d76`  
		Last Modified: Fri, 29 Mar 2019 21:23:35 GMT  
		Size: 87.2 MB (87227733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef86c52c5b7f1dfb6d28dd2e63307afcb5de959560d296bd499c7237811b21`  
		Last Modified: Fri, 29 Mar 2019 21:23:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk` - linux; ppc64le

```console
$ docker pull gradle@sha256:1b6e4be6f67b39c95ce71365d8ecab78dcdac979ff4c0014386c42ddabcfd52f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323219218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb7a50ede84617c11f9e182f235ee2c35666551cdc87c19a9dddbd71b694187`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:16:33 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:16:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:06 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb891f7fc7def38d3a0f80e3b3e91328e400b247bad0d24db9d405486f705682`  
		Last Modified: Sat, 30 Mar 2019 08:25:02 GMT  
		Size: 87.2 MB (87227889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e714fe63d1c7b6244d81a0ebcefa3e8d7557603ba8e247988626809fbc9a891`  
		Last Modified: Sat, 30 Mar 2019 08:24:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jdk11`

```console
$ docker pull gradle@sha256:76b2b5cfa30c1ed4af80800ed3f173226134f547f349c16afd9cae225ebaa0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:7fadc570a83b9c224bb39cd85e411c1392978f69b5b23d69705251376ef0b830
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.7 MB (523697361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ad385d281fc22f998653a6c3370bdba9e98dc6ef752f5b777325a4bbabc858`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:44:00 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:44:00 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:44:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 00:44:02 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 00:45:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 00:45:26 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 10:59:40 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 10:59:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:25 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:30 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:30 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:30 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a9d43f5b1c3593b7eb98ccf10e74bc0390cb227befbef3bf13f27d2a79f7f9`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d516f512e0d5c064be962d0f4ee49d9b8675b5a5acd3f70527ea40d60d766f`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818845f741c457054b344e3108bd8e119c3f1f4d8f48b515a610f797b9a20cb9`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c738f464a19882ad215b583752f969af431250f7c54f6b8fa282d8feb5fe484`  
		Last Modified: Wed, 27 Mar 2019 01:07:37 GMT  
		Size: 325.0 MB (325046409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1cdb54980d97c0523fb7ec5482a658ab1925ce72f401c1798e2177fd04f41a`  
		Last Modified: Fri, 29 Mar 2019 21:24:55 GMT  
		Size: 87.2 MB (87227746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aaae0614a4ce6028c8ceda5f1edede5624e8cd920203ca85ef5bd322aa6c9e`  
		Last Modified: Fri, 29 Mar 2019 21:24:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:e1a24e76ed13d836a1990c0c848d4bb7560c907b4f90888b505affca69f84a83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.1 MB (491098325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40603df6ea11f7bc5766bb3ec783037e71eabffaf07095cd12ccdc84daee7953`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:13 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:33:15 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:33:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:33:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:33:26 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:33:29 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 12:33:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 12:37:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 12:37:33 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 19:01:22 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 19:01:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:21:08 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:21:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:21:20 GMT
USER gradle
# Sat, 30 Mar 2019 08:21:22 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:21:25 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:21:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ea5606b0ab0f9785b09523fbab1bc61ea4c3be532697e46b335a41b14ef13d`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6140218cafdbc0a0a55e39346362a87008296ac3b0a734f7e7f74c3fa79918f8`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25aa2cc4e25215380c3203c2681cd0afde017e041cedcc531cb4212666f9e432`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd43a6718775b45fb08007b8f5fa08479a9d12af312e4f0e03dd4ed161b7bf`  
		Last Modified: Wed, 27 Mar 2019 12:54:27 GMT  
		Size: 293.0 MB (293016060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c6931ea947bf318c142a9a779b11568bc8a0c4e586319191ccc544db49120f`  
		Last Modified: Sat, 30 Mar 2019 08:30:03 GMT  
		Size: 87.2 MB (87227790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4d419d332c3bda2bfb623c28f33b352fddf140a0ae81da30f928b5e5d79ffe`  
		Last Modified: Sat, 30 Mar 2019 08:29:37 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jdk11-slim`

```console
$ docker pull gradle@sha256:36b5a0ab657f096113715d34b8a615e0eab7cd2facb5adf5b3d1254e4f4e7d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jdk11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:eac1896d56ce30c2550ab1f32abc0f63c43ce2a931db2a985c19a8e64f4db7d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.4 MB (382404078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c125ddce0649009dfbb41344e5bfeedcaade072ef9fef5a0449986284ad9fa0b`
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
# Fri, 29 Mar 2019 21:22:34 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:39 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:22:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:43 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:43 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:43 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:c5a65369ad9aabc505d30f091b9e5b6d447a03110bb3da21f0daeec04341bacb`  
		Last Modified: Fri, 29 Mar 2019 21:25:00 GMT  
		Size: 1.1 MB (1100245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857772d5bb739e44ddd9a9e40556547f254fd3a4d58af239945983f36a77d9f4`  
		Last Modified: Fri, 29 Mar 2019 21:25:07 GMT  
		Size: 87.2 MB (87227770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe699e45cc506c791a3e0732e758c665e91667def73a4399f2c307cf84b066b`  
		Last Modified: Fri, 29 Mar 2019 21:25:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:48bb8c958f969af63b2bcad00b0d1cc448ce8375868478b626033e03510c7fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350585433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14ac3f138d6eca8611ebe10dca7d88f0e56a3a9395225f4122e1115a8e8071f`
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
# Sat, 30 Mar 2019 08:21:38 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:21:51 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:21:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:22:07 GMT
USER gradle
# Sat, 30 Mar 2019 08:22:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:22:12 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:57660c62ade57816eea02347445861af7bf9976e8411d1fdb16ce3a862ab22dd`  
		Last Modified: Sat, 30 Mar 2019 08:30:17 GMT  
		Size: 1.1 MB (1085283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03be21593b5474ef832518066a376ef01002113611c28ec3543ae4dc63eb0dc`  
		Last Modified: Sat, 30 Mar 2019 08:31:02 GMT  
		Size: 87.2 MB (87227812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b9d48ae5ffaaf9f8d5c7926deb70b54ef5be409f4f0ee7c568c32bb74d89db`  
		Last Modified: Sat, 30 Mar 2019 08:30:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jdk8`

```console
$ docker pull gradle@sha256:d8c4aad8e2273cb3cfe074afe1742f918baca5e29fce12877302766e389db5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:7e438356f9727bc76c8dd2474090456bf66edfadc8ddf2cad1e0fedb277f6f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333859654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c25675a2b2185256bf3b604e6d45ed21bd4b298d000b9d1f23aea08695d585c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:11:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:11:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:10 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:15 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:15 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b2cabd5f9906b71738f6a6af71944936bb41f70f4be75a32fbfe46b7b4d76`  
		Last Modified: Fri, 29 Mar 2019 21:23:35 GMT  
		Size: 87.2 MB (87227733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef86c52c5b7f1dfb6d28dd2e63307afcb5de959560d296bd499c7237811b21`  
		Last Modified: Fri, 29 Mar 2019 21:23:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk8` - linux; ppc64le

```console
$ docker pull gradle@sha256:1b6e4be6f67b39c95ce71365d8ecab78dcdac979ff4c0014386c42ddabcfd52f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323219218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb7a50ede84617c11f9e182f235ee2c35666551cdc87c19a9dddbd71b694187`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:16:33 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:16:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:06 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb891f7fc7def38d3a0f80e3b3e91328e400b247bad0d24db9d405486f705682`  
		Last Modified: Sat, 30 Mar 2019 08:25:02 GMT  
		Size: 87.2 MB (87227889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e714fe63d1c7b6244d81a0ebcefa3e8d7557603ba8e247988626809fbc9a891`  
		Last Modified: Sat, 30 Mar 2019 08:24:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jdk8-alpine`

```console
$ docker pull gradle@sha256:1ced24d5c5c0261a0827c4eae39b7f40da0b82b13c3cbb7a696e25dc686750a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3-jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:78b2d854221a0e6b04c03a8a22e8f8f63b9488b7bb4af191e34004026987664e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160728765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80d26bddf3cf5c8bc4109790768cee40aaeb781930183439fca74c407b85dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:31 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:36 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:36 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2e298bc2edc753dd65d4398f4fe965252a9685a995ecaf30f30a0fbe2dab7`  
		Last Modified: Fri, 29 Mar 2019 21:24:01 GMT  
		Size: 87.2 MB (87224004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c1941a21a8b6fccec26c4b66457d6db7035181a4a27ccc64f7c2197c0797f`  
		Last Modified: Fri, 29 Mar 2019 21:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk8-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cdc8713a97f0fb79639da378329f4d245372003c8c2abf2f4f7966587ba02f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158002075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751dc619d217cc62d644cb3c4523f7b3273e3a2b20804e8d233f10283f9c2481`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:36 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:21 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:50:43 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:50:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:50:51 GMT
USER gradle
# Sat, 30 Mar 2019 07:50:52 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:50:52 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad7077b71f2530fb8510e9432e06bc9d50bd26356f9c547d022bfc28dc0a05`  
		Last Modified: Thu, 28 Mar 2019 07:50:29 GMT  
		Size: 66.2 MB (66249162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741e26ccd40c42190a186d7d149a198c8e830d6a322c424b2fecd4e61cad318`  
		Last Modified: Thu, 28 Mar 2019 07:50:18 GMT  
		Size: 2.0 MB (1987831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbebfa735d16de9dbad567cb18126212f7a23da0eab0d29ef4c490596cd408`  
		Last Modified: Sat, 30 Mar 2019 07:51:41 GMT  
		Size: 87.2 MB (87223998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d68e2a14d824e9258839e6f4c0181e2959e7909fe931d501cbf51e432745e4`  
		Last Modified: Sat, 30 Mar 2019 07:51:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk8-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:017f41aadc83ec01fae8559abe152aa713c054163d02ed3d756b053f4b86fb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161480597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a787cd26faf0056ccd97a232337a1bf0909de59f9a965fd8622ba124f70f21cd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:29:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:29:15 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:06:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:06:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:55 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:18:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:18:12 GMT
USER gradle
# Sat, 30 Mar 2019 08:18:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:18:19 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe450b8ba378ece3582cabe05c8c904987e5055a25f8db191dd3caa2fcedb2dd`  
		Last Modified: Thu, 28 Mar 2019 08:44:48 GMT  
		Size: 69.0 MB (69003437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2840dbe717f1b7f0275fb6b486e84b7dc1458991b1a5b4727da657049594201`  
		Last Modified: Thu, 28 Mar 2019 08:43:52 GMT  
		Size: 2.5 MB (2474068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691ae35fe874c34d2a81a819d7764522ff3ff97de8b44f52bccbb30ad3b3e44`  
		Last Modified: Sat, 30 Mar 2019 08:26:28 GMT  
		Size: 87.2 MB (87224042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87869d0fa01c99547bab2aabb530396faa86be774b703645154b4739006308c`  
		Last Modified: Sat, 30 Mar 2019 08:26:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jdk8-slim`

```console
$ docker pull gradle@sha256:1b8d2640ca0a9c6c883c042d6210ce728312421316a10e8a2b23300f96fdb246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jdk8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:343df7a1be3b598576f3d06cc59c3d7312d22d004055d0b0676ef4e2e14b60a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178832980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e515233d54d66ce589545bc4bf13f14df4e86ba46de4f7fc5f20379c292742c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:41 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:48 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:21:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:52 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:52 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8801669174663bc1b2c91dbc1f9b87d31ecf8937ef4f2bb8a8b48f0bb169b0`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 1.1 MB (1098990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001d4db8624df86f469723a1383666196bb89947a2439ac69a6c90a0410190c`  
		Last Modified: Fri, 29 Mar 2019 21:24:15 GMT  
		Size: 87.2 MB (87227794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60afe8d034b389ce8cdecda09bb82c087675cdfd924977243f5a175adca1c92`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:0567643f68b66a190e821c2fa604156f615c1061a881df6b8d8398bf7c29180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169452108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb214066965649211aec04cf2545e284103f6bb400ac28d59110744a7f581d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:18:34 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:18:58 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:19:16 GMT
USER gradle
# Sat, 30 Mar 2019 08:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:19:22 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cfde3e3fa5d595c095222f594ce79148f3dc0b4ca2332a6e37cdc497b15250`  
		Last Modified: Sat, 30 Mar 2019 08:26:57 GMT  
		Size: 1.1 MB (1083974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee04e342dd95af0fb785a76ca53633e39d84e82662529c17029eb6ffd403728`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 87.2 MB (87227836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16785a98997b9dd487e2965ea587802c27c5c7ae540a4c8a6a6f9c27d36e8b90`  
		Last Modified: Sat, 30 Mar 2019 08:26:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jdk-alpine`

```console
$ docker pull gradle@sha256:1ced24d5c5c0261a0827c4eae39b7f40da0b82b13c3cbb7a696e25dc686750a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3-jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:78b2d854221a0e6b04c03a8a22e8f8f63b9488b7bb4af191e34004026987664e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160728765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80d26bddf3cf5c8bc4109790768cee40aaeb781930183439fca74c407b85dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:31 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:36 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:36 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2e298bc2edc753dd65d4398f4fe965252a9685a995ecaf30f30a0fbe2dab7`  
		Last Modified: Fri, 29 Mar 2019 21:24:01 GMT  
		Size: 87.2 MB (87224004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c1941a21a8b6fccec26c4b66457d6db7035181a4a27ccc64f7c2197c0797f`  
		Last Modified: Fri, 29 Mar 2019 21:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cdc8713a97f0fb79639da378329f4d245372003c8c2abf2f4f7966587ba02f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158002075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751dc619d217cc62d644cb3c4523f7b3273e3a2b20804e8d233f10283f9c2481`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:36 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:21 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:50:43 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:50:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:50:51 GMT
USER gradle
# Sat, 30 Mar 2019 07:50:52 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:50:52 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad7077b71f2530fb8510e9432e06bc9d50bd26356f9c547d022bfc28dc0a05`  
		Last Modified: Thu, 28 Mar 2019 07:50:29 GMT  
		Size: 66.2 MB (66249162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741e26ccd40c42190a186d7d149a198c8e830d6a322c424b2fecd4e61cad318`  
		Last Modified: Thu, 28 Mar 2019 07:50:18 GMT  
		Size: 2.0 MB (1987831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbebfa735d16de9dbad567cb18126212f7a23da0eab0d29ef4c490596cd408`  
		Last Modified: Sat, 30 Mar 2019 07:51:41 GMT  
		Size: 87.2 MB (87223998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d68e2a14d824e9258839e6f4c0181e2959e7909fe931d501cbf51e432745e4`  
		Last Modified: Sat, 30 Mar 2019 07:51:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:017f41aadc83ec01fae8559abe152aa713c054163d02ed3d756b053f4b86fb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161480597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a787cd26faf0056ccd97a232337a1bf0909de59f9a965fd8622ba124f70f21cd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:29:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:29:15 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:06:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:06:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:55 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:18:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:18:12 GMT
USER gradle
# Sat, 30 Mar 2019 08:18:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:18:19 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe450b8ba378ece3582cabe05c8c904987e5055a25f8db191dd3caa2fcedb2dd`  
		Last Modified: Thu, 28 Mar 2019 08:44:48 GMT  
		Size: 69.0 MB (69003437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2840dbe717f1b7f0275fb6b486e84b7dc1458991b1a5b4727da657049594201`  
		Last Modified: Thu, 28 Mar 2019 08:43:52 GMT  
		Size: 2.5 MB (2474068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691ae35fe874c34d2a81a819d7764522ff3ff97de8b44f52bccbb30ad3b3e44`  
		Last Modified: Sat, 30 Mar 2019 08:26:28 GMT  
		Size: 87.2 MB (87224042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87869d0fa01c99547bab2aabb530396faa86be774b703645154b4739006308c`  
		Last Modified: Sat, 30 Mar 2019 08:26:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jdk-slim`

```console
$ docker pull gradle@sha256:1b8d2640ca0a9c6c883c042d6210ce728312421316a10e8a2b23300f96fdb246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jdk-slim` - linux; amd64

```console
$ docker pull gradle@sha256:343df7a1be3b598576f3d06cc59c3d7312d22d004055d0b0676ef4e2e14b60a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178832980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e515233d54d66ce589545bc4bf13f14df4e86ba46de4f7fc5f20379c292742c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:41 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:48 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:21:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:52 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:52 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8801669174663bc1b2c91dbc1f9b87d31ecf8937ef4f2bb8a8b48f0bb169b0`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 1.1 MB (1098990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001d4db8624df86f469723a1383666196bb89947a2439ac69a6c90a0410190c`  
		Last Modified: Fri, 29 Mar 2019 21:24:15 GMT  
		Size: 87.2 MB (87227794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60afe8d034b389ce8cdecda09bb82c087675cdfd924977243f5a175adca1c92`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jdk-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:0567643f68b66a190e821c2fa604156f615c1061a881df6b8d8398bf7c29180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169452108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb214066965649211aec04cf2545e284103f6bb400ac28d59110744a7f581d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:18:34 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:18:58 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:19:16 GMT
USER gradle
# Sat, 30 Mar 2019 08:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:19:22 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cfde3e3fa5d595c095222f594ce79148f3dc0b4ca2332a6e37cdc497b15250`  
		Last Modified: Sat, 30 Mar 2019 08:26:57 GMT  
		Size: 1.1 MB (1083974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee04e342dd95af0fb785a76ca53633e39d84e82662529c17029eb6ffd403728`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 87.2 MB (87227836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16785a98997b9dd487e2965ea587802c27c5c7ae540a4c8a6a6f9c27d36e8b90`  
		Last Modified: Sat, 30 Mar 2019 08:26:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jre`

```console
$ docker pull gradle@sha256:f7f44345202d913ffd174b32fec858941a3c8bbf67ab9812b12fe28f17b76a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jre` - linux; amd64

```console
$ docker pull gradle@sha256:c7cd179edbc63a045a9a9309fe93904394d0b3f0bcc2f4d9d329a912ea378a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270718858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8979dbe46fb9c55de359c997607bb8e655ceab3a2a8f9acf4f32941b380aade5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:03 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:21 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:25 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:26 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4408975e8eb06e69ccb17d21bc73352e89e72f5e4e0f9d11b6cabf8f107cd7`  
		Last Modified: Fri, 29 Mar 2019 21:23:49 GMT  
		Size: 87.2 MB (87227769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfccfecdd44f97da734adc47cf719fc00da2067a3ec115b89fdafe6bfa454d5`  
		Last Modified: Fri, 29 Mar 2019 21:23:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre` - linux; ppc64le

```console
$ docker pull gradle@sha256:2128845fd1299f60444fc6d863a20abb603eee0034f51f40210ba12aac5a1b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262583133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc519bdd01323edb5c25eb1147194ca1404b9bc3f518dd366b3ba77ee3823b7`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:48:16 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:48:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:48:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:48:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:29:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:29:30 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:35:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:51 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:20 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:17:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:37 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:40 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:42 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec55eb306e259c22f5f85e9e1ab2674681fbe25c9f6a46c26306a67256b5279d`  
		Last Modified: Thu, 28 Mar 2019 08:45:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d19db8724fba414a27d7be8145ed3a9c64b5d9f5f1fcc87ee340a4c2ff4e33`  
		Last Modified: Thu, 28 Mar 2019 08:45:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efde2cf64d691f2b71780a6fc9401996c98a1c1c5978140f5c3d6ed0cc31450`  
		Last Modified: Thu, 28 Mar 2019 08:47:01 GMT  
		Size: 114.6 MB (114610443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e92094ce8afd0214de4ab245118d64eff83cd2d749af8e008598825a7dbe08`  
		Last Modified: Sat, 30 Mar 2019 08:25:48 GMT  
		Size: 87.2 MB (87227827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3c8937a6956526456981d4755d3926627999ea6c2cca247da74b4ea66b2a05`  
		Last Modified: Sat, 30 Mar 2019 08:25:31 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jre11`

```console
$ docker pull gradle@sha256:99ec8929ed47500eb1d94983876b699d57070a94972b179f4103672c8efbdf21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jre11` - linux; amd64

```console
$ docker pull gradle@sha256:3e9430ccb07126f0858390f07055690e05237172e49329a0f4fd8f05b981b6d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279861663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204b1115bc72bef848a6950b1fa26816d7f8f89ac9102bcdc8d78591bdd73ac4`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:46:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:46:47 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:46:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 00:46:50 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 00:47:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 11:00:19 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 11:00:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:49 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:53 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:53 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:53 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce08128c662b0d9d0f3d9f86364c56f7b387111dd0602f2116e7fefb7bf3322`  
		Last Modified: Wed, 27 Mar 2019 01:08:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b0cf80b370dc3011ff521f948fb212324f4b709f978ce5108193882a1a5a2f`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bd533f444d12d7c517d33e97d3ac0d27d31b2fbf6582dba416e47fcde1efc6`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc053cd8d4e277a71c9aa687ba5acbf1bc488ef70e77c6ad79ca2a6188ab4c8`  
		Last Modified: Wed, 27 Mar 2019 01:08:58 GMT  
		Size: 131.3 MB (131315629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aadec6a8d7b23a80390876fc43ff2bbfc07f9b44a9ce13a520bb68b803b1343`  
		Last Modified: Fri, 29 Mar 2019 21:25:17 GMT  
		Size: 87.2 MB (87227772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4344d4714b45feead2021b0480ed10c614c3e16df450809c3541af86b8046483`  
		Last Modified: Fri, 29 Mar 2019 21:25:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:85985b65c8ae7c133360b7f29e81574639d0e763ca7c90bc7c5c00e372f4ad78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267417124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a9c881d8f3531ef067bd6890268ea9d332c85ddb6d73b777b23e1cf79fe1ca`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:40:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:40:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:40:51 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:40:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:40:54 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 12:40:55 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 12:44:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 19:03:45 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 19:03:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:22:27 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:22:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:22:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:22:43 GMT
USER gradle
# Sat, 30 Mar 2019 08:22:45 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:22:48 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:22:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6514601eba88b9755ff17942c0be61cb64680f20b4a891540bbebb6b4547773`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef2acb3bd7521314a968803be3dfd3751ba1b952e38765798137d11cb6b7b23`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9feef0d857e479208222dc7f252bdb1acf94c133fe1dd05df462e3fb137a59`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6741a76bb88e932c9f8b9aa23f22e8cebff884fa3c40ed7a7c55cf9f0a4bf`  
		Last Modified: Wed, 27 Mar 2019 12:58:21 GMT  
		Size: 119.4 MB (119444214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cd2d56e3ecf9b0d2277fd6c8d95b5ddb00543a07331ae90056d86196439057`  
		Last Modified: Sat, 30 Mar 2019 08:31:25 GMT  
		Size: 87.2 MB (87227826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3d15739b9cd58366b672f90da1aad9c77a045783f5bfa85b863d7b992cc442`  
		Last Modified: Sat, 30 Mar 2019 08:31:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jre11-slim`

```console
$ docker pull gradle@sha256:dca2d1cb732dacd5eea18412b91acaf8e89185b4bedf6772447625a8f978fbb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jre11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:6e810989abb1b69413bfc3e2c12b40bf9f537cb2efe70f896d14f064d6eb79de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188414172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3beb735b3e6c4d9e3e7a6dc3d595a8600f273abec947e93ca5aa063dc2e98e`
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
# Fri, 29 Mar 2019 21:22:58 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:23:02 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:23:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:23:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:23:07 GMT
USER gradle
# Fri, 29 Mar 2019 21:23:07 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:23:07 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:23:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:96cc6307706817b9251dd36c59c5d93288eac82994c300114f390cc70847ca76`  
		Last Modified: Fri, 29 Mar 2019 21:25:22 GMT  
		Size: 1.1 MB (1099417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd12e0b6cd35573f0c47628facd7795bff6f76d867daddea2f945128919ab616`  
		Last Modified: Fri, 29 Mar 2019 21:25:28 GMT  
		Size: 87.2 MB (87227779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5217a5a0d18d97841608ad4d87bc89cba4cc8dae058b14afab642961a9ec4`  
		Last Modified: Fri, 29 Mar 2019 21:25:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:03403eb49c43d95e4e446c49c09057f4b1c5edcbd4a8cd7480f2538e3f8e553b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176757444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73391b38d07835efe3687b98b870d88774e3d52ab96a752d0d85a8f49f4b7b08`
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
# Sat, 30 Mar 2019 08:23:03 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:23:15 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:23:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:23:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:23:26 GMT
USER gradle
# Sat, 30 Mar 2019 08:23:27 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:23:28 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:23:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:3a65b31b3548f4d730ee687c735bf89f14a285ec26bc32eb79a73bbdcb862408`  
		Last Modified: Sat, 30 Mar 2019 08:31:40 GMT  
		Size: 1.1 MB (1084367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713e509eb62f790fcb2a6fd0ed42af79581804b756480f5b689c8187d6731a86`  
		Last Modified: Sat, 30 Mar 2019 08:32:04 GMT  
		Size: 87.2 MB (87227841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af992c408280bbbd1dce84990c0717e8159a553f6253e67db3f0e3e4242a0ae2`  
		Last Modified: Sat, 30 Mar 2019 08:31:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jre8`

```console
$ docker pull gradle@sha256:f7f44345202d913ffd174b32fec858941a3c8bbf67ab9812b12fe28f17b76a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:c7cd179edbc63a045a9a9309fe93904394d0b3f0bcc2f4d9d329a912ea378a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270718858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8979dbe46fb9c55de359c997607bb8e655ceab3a2a8f9acf4f32941b380aade5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:03 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:21 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:25 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:26 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4408975e8eb06e69ccb17d21bc73352e89e72f5e4e0f9d11b6cabf8f107cd7`  
		Last Modified: Fri, 29 Mar 2019 21:23:49 GMT  
		Size: 87.2 MB (87227769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfccfecdd44f97da734adc47cf719fc00da2067a3ec115b89fdafe6bfa454d5`  
		Last Modified: Fri, 29 Mar 2019 21:23:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre8` - linux; ppc64le

```console
$ docker pull gradle@sha256:2128845fd1299f60444fc6d863a20abb603eee0034f51f40210ba12aac5a1b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262583133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc519bdd01323edb5c25eb1147194ca1404b9bc3f518dd366b3ba77ee3823b7`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:48:16 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:48:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:48:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:48:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:29:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:29:30 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:35:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:51 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:20 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:17:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:37 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:40 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:42 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec55eb306e259c22f5f85e9e1ab2674681fbe25c9f6a46c26306a67256b5279d`  
		Last Modified: Thu, 28 Mar 2019 08:45:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d19db8724fba414a27d7be8145ed3a9c64b5d9f5f1fcc87ee340a4c2ff4e33`  
		Last Modified: Thu, 28 Mar 2019 08:45:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efde2cf64d691f2b71780a6fc9401996c98a1c1c5978140f5c3d6ed0cc31450`  
		Last Modified: Thu, 28 Mar 2019 08:47:01 GMT  
		Size: 114.6 MB (114610443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e92094ce8afd0214de4ab245118d64eff83cd2d749af8e008598825a7dbe08`  
		Last Modified: Sat, 30 Mar 2019 08:25:48 GMT  
		Size: 87.2 MB (87227827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3c8937a6956526456981d4755d3926627999ea6c2cca247da74b4ea66b2a05`  
		Last Modified: Sat, 30 Mar 2019 08:25:31 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jre8-alpine`

```console
$ docker pull gradle@sha256:863ea7f8a8bcaf2cd780761665f7532f5303a03e4b562397e334a02769989ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3-jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:b957da26715ee90f9969ae4e51e7aa54435e4790a0b53c31fb85d1f29333fa7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144939691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f8440cea7be858498350d43979a09ba8a91d00f722f1348299da86980d26ff`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:43 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:58 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:03 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:03 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:03 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c240607e75953b8f1fa2f21317c1a68d59049527fef1eca5ad2beb90c9e8ba`  
		Last Modified: Fri, 29 Mar 2019 21:24:30 GMT  
		Size: 87.2 MB (87223906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ad490515f66a61343b874e7879d44e6f907d9c8107d616d8f1996408340e8e`  
		Last Modified: Fri, 29 Mar 2019 21:24:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre8-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:34d54609645c983be09dda1c35b9bba8e46a31be9528a34c37fe1cbb4c7a46b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142188007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0521307c1a2dbd5c73871e780654b4371f77b44aba9d620ffb4386f70c1e58d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:42 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:47 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:49 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:39 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:51:00 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:51:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:51:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:51:09 GMT
USER gradle
# Sat, 30 Mar 2019 07:51:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:51:09 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:51:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb73e570ec3ef984c7f0a7cd932217fc7d3481039e1fd377177ce522baba673`  
		Last Modified: Thu, 28 Mar 2019 07:50:52 GMT  
		Size: 50.4 MB (50436033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e91841f348d71ab4afc7c8a8fa556586dcfad7c813054da42b8723a9c1f790e`  
		Last Modified: Thu, 28 Mar 2019 07:50:44 GMT  
		Size: 2.0 MB (1986846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908fbe7e6952c46d421a0a4dbef906543d8929e79047762d750125c87a6502e`  
		Last Modified: Sat, 30 Mar 2019 07:52:10 GMT  
		Size: 87.2 MB (87224044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0019b99bf046c9935a11b34d6102b34a7cb58cb25a94e497482bf6a7c2340885`  
		Last Modified: Sat, 30 Mar 2019 07:51:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre8-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:d5000f06abd3a403348f9248deb6c844c7e2ec0e6184d73d448486a99b19091c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145625198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64314a2660fa8b22c349b2ef1a73c54a72dd8b60677590d0c39e480b3e6ed32`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:37:51 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:38:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:38:13 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:07:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:19:44 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:19:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:02 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:05 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef74255218309615e9f667e5274026d23052ecd738fca3d2e873afcf38fdf50a`  
		Last Modified: Thu, 28 Mar 2019 08:48:54 GMT  
		Size: 53.1 MB (53149344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81a40256f1669874675017d12810ae274fe4ed6c15dddcff8387b19d150b41`  
		Last Modified: Thu, 28 Mar 2019 08:48:09 GMT  
		Size: 2.5 MB (2472817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7551e864de182451486885b5d97afc58779a208a26260f4214fbf33d6fb0bf`  
		Last Modified: Sat, 30 Mar 2019 08:28:25 GMT  
		Size: 87.2 MB (87223987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7d786be796f5d5c7a7be4cac9855230ea73d0f7f3330c3581a67b33ec56b37`  
		Last Modified: Sat, 30 Mar 2019 08:27:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jre8-slim`

```console
$ docker pull gradle@sha256:23158aa999df4d051ee892741194947d1d6d0498faf287c24893d9ac7886c333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jre8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:b0c7199f40cb7f35e02525162c6ba1bda47ea5177698acac7fef0629e082c91f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167163229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6c40f155b7f63fe43e20ba183e3fdc733fdec00af62cdf42e0947aac98da2e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:49:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:54 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:09 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:13 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:22:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:20 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:20 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ab0e6e34de83f184b5a7929a9009e4523561eea7c090ec5727806fdef8fb2`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 55.9 MB (55885973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9069fe0be4f7aa6ef690aea07ba44620736e02ef89111e24e1b6601d2f37bc0`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 1.1 MB (1097980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0344ef692bd82712b31368bc455e913d064d7d29056012b53a6287813b63018`  
		Last Modified: Fri, 29 Mar 2019 21:24:42 GMT  
		Size: 87.2 MB (87227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca6357d3c18acf4dea9c6128b7ce3b05c742939ad1b0ea8ec8963e720f217ee`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:488f934a54d7ae2a801743ef2f078b6f8246d074b0c3d6171f777f0c86522074
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160050822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f29ca114dc5071d17a801960b213f197c3fe91b6d69c4c40b2763aaeaf6bd3c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:49:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:35:19 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:35:24 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:37:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:08:23 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:08:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:20:19 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:20:36 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:20:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:20:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:50 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:56 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:21:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86fba52d14a165b78745a1ddb558414e06684b430c574e712dc791287b28b6`  
		Last Modified: Thu, 28 Mar 2019 08:47:54 GMT  
		Size: 48.5 MB (48538128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0719dd26b4c320ba550888aae2103342ccc681bc3c0cf79b07a23ff9af9e2f`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 1.1 MB (1083083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585eb01cfb9372c2c62a34ad3aa0ab692ea832896dd52ff328d3bdc04ab80f95`  
		Last Modified: Sat, 30 Mar 2019 08:29:14 GMT  
		Size: 87.2 MB (87227846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93340eeffbce04c74bfcd258c6116054e08048d495548cc073a148f659c87aa0`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jre-alpine`

```console
$ docker pull gradle@sha256:863ea7f8a8bcaf2cd780761665f7532f5303a03e4b562397e334a02769989ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:5.3-jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:b957da26715ee90f9969ae4e51e7aa54435e4790a0b53c31fb85d1f29333fa7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144939691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f8440cea7be858498350d43979a09ba8a91d00f722f1348299da86980d26ff`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:43 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:58 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:03 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:03 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:03 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c240607e75953b8f1fa2f21317c1a68d59049527fef1eca5ad2beb90c9e8ba`  
		Last Modified: Fri, 29 Mar 2019 21:24:30 GMT  
		Size: 87.2 MB (87223906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ad490515f66a61343b874e7879d44e6f907d9c8107d616d8f1996408340e8e`  
		Last Modified: Fri, 29 Mar 2019 21:24:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:34d54609645c983be09dda1c35b9bba8e46a31be9528a34c37fe1cbb4c7a46b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142188007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0521307c1a2dbd5c73871e780654b4371f77b44aba9d620ffb4386f70c1e58d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:42 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:47 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:49 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:39 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:51:00 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:51:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:51:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:51:09 GMT
USER gradle
# Sat, 30 Mar 2019 07:51:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:51:09 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:51:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb73e570ec3ef984c7f0a7cd932217fc7d3481039e1fd377177ce522baba673`  
		Last Modified: Thu, 28 Mar 2019 07:50:52 GMT  
		Size: 50.4 MB (50436033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e91841f348d71ab4afc7c8a8fa556586dcfad7c813054da42b8723a9c1f790e`  
		Last Modified: Thu, 28 Mar 2019 07:50:44 GMT  
		Size: 2.0 MB (1986846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908fbe7e6952c46d421a0a4dbef906543d8929e79047762d750125c87a6502e`  
		Last Modified: Sat, 30 Mar 2019 07:52:10 GMT  
		Size: 87.2 MB (87224044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0019b99bf046c9935a11b34d6102b34a7cb58cb25a94e497482bf6a7c2340885`  
		Last Modified: Sat, 30 Mar 2019 07:51:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:d5000f06abd3a403348f9248deb6c844c7e2ec0e6184d73d448486a99b19091c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145625198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64314a2660fa8b22c349b2ef1a73c54a72dd8b60677590d0c39e480b3e6ed32`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:37:51 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:38:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:38:13 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:07:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:19:44 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:19:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:02 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:05 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef74255218309615e9f667e5274026d23052ecd738fca3d2e873afcf38fdf50a`  
		Last Modified: Thu, 28 Mar 2019 08:48:54 GMT  
		Size: 53.1 MB (53149344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81a40256f1669874675017d12810ae274fe4ed6c15dddcff8387b19d150b41`  
		Last Modified: Thu, 28 Mar 2019 08:48:09 GMT  
		Size: 2.5 MB (2472817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7551e864de182451486885b5d97afc58779a208a26260f4214fbf33d6fb0bf`  
		Last Modified: Sat, 30 Mar 2019 08:28:25 GMT  
		Size: 87.2 MB (87223987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7d786be796f5d5c7a7be4cac9855230ea73d0f7f3330c3581a67b33ec56b37`  
		Last Modified: Sat, 30 Mar 2019 08:27:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-jre-slim`

```console
$ docker pull gradle@sha256:23158aa999df4d051ee892741194947d1d6d0498faf287c24893d9ac7886c333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-jre-slim` - linux; amd64

```console
$ docker pull gradle@sha256:b0c7199f40cb7f35e02525162c6ba1bda47ea5177698acac7fef0629e082c91f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167163229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6c40f155b7f63fe43e20ba183e3fdc733fdec00af62cdf42e0947aac98da2e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:49:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:54 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:09 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:13 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:22:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:20 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:20 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ab0e6e34de83f184b5a7929a9009e4523561eea7c090ec5727806fdef8fb2`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 55.9 MB (55885973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9069fe0be4f7aa6ef690aea07ba44620736e02ef89111e24e1b6601d2f37bc0`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 1.1 MB (1097980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0344ef692bd82712b31368bc455e913d064d7d29056012b53a6287813b63018`  
		Last Modified: Fri, 29 Mar 2019 21:24:42 GMT  
		Size: 87.2 MB (87227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca6357d3c18acf4dea9c6128b7ce3b05c742939ad1b0ea8ec8963e720f217ee`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-jre-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:488f934a54d7ae2a801743ef2f078b6f8246d074b0c3d6171f777f0c86522074
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160050822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f29ca114dc5071d17a801960b213f197c3fe91b6d69c4c40b2763aaeaf6bd3c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:49:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:35:19 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:35:24 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:37:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:08:23 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:08:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:20:19 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:20:36 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:20:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:20:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:50 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:56 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:21:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86fba52d14a165b78745a1ddb558414e06684b430c574e712dc791287b28b6`  
		Last Modified: Thu, 28 Mar 2019 08:47:54 GMT  
		Size: 48.5 MB (48538128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0719dd26b4c320ba550888aae2103342ccc681bc3c0cf79b07a23ff9af9e2f`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 1.1 MB (1083083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585eb01cfb9372c2c62a34ad3aa0ab692ea832896dd52ff328d3bdc04ab80f95`  
		Last Modified: Sat, 30 Mar 2019 08:29:14 GMT  
		Size: 87.2 MB (87227846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93340eeffbce04c74bfcd258c6116054e08048d495548cc073a148f659c87aa0`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.3-slim`

```console
$ docker pull gradle@sha256:1b8d2640ca0a9c6c883c042d6210ce728312421316a10e8a2b23300f96fdb246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:5.3-slim` - linux; amd64

```console
$ docker pull gradle@sha256:343df7a1be3b598576f3d06cc59c3d7312d22d004055d0b0676ef4e2e14b60a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178832980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e515233d54d66ce589545bc4bf13f14df4e86ba46de4f7fc5f20379c292742c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:41 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:48 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:21:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:52 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:52 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8801669174663bc1b2c91dbc1f9b87d31ecf8937ef4f2bb8a8b48f0bb169b0`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 1.1 MB (1098990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001d4db8624df86f469723a1383666196bb89947a2439ac69a6c90a0410190c`  
		Last Modified: Fri, 29 Mar 2019 21:24:15 GMT  
		Size: 87.2 MB (87227794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60afe8d034b389ce8cdecda09bb82c087675cdfd924977243f5a175adca1c92`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.3-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:0567643f68b66a190e821c2fa604156f615c1061a881df6b8d8398bf7c29180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169452108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb214066965649211aec04cf2545e284103f6bb400ac28d59110744a7f581d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:18:34 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:18:58 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:19:16 GMT
USER gradle
# Sat, 30 Mar 2019 08:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:19:22 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cfde3e3fa5d595c095222f594ce79148f3dc0b4ca2332a6e37cdc497b15250`  
		Last Modified: Sat, 30 Mar 2019 08:26:57 GMT  
		Size: 1.1 MB (1083974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee04e342dd95af0fb785a76ca53633e39d84e82662529c17029eb6ffd403728`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 87.2 MB (87227836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16785a98997b9dd487e2965ea587802c27c5c7ae540a4c8a6a6f9c27d36e8b90`  
		Last Modified: Sat, 30 Mar 2019 08:26:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:alpine`

```console
$ docker pull gradle@sha256:1ced24d5c5c0261a0827c4eae39b7f40da0b82b13c3cbb7a696e25dc686750a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:alpine` - linux; amd64

```console
$ docker pull gradle@sha256:78b2d854221a0e6b04c03a8a22e8f8f63b9488b7bb4af191e34004026987664e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160728765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80d26bddf3cf5c8bc4109790768cee40aaeb781930183439fca74c407b85dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:31 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:36 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:36 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2e298bc2edc753dd65d4398f4fe965252a9685a995ecaf30f30a0fbe2dab7`  
		Last Modified: Fri, 29 Mar 2019 21:24:01 GMT  
		Size: 87.2 MB (87224004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c1941a21a8b6fccec26c4b66457d6db7035181a4a27ccc64f7c2197c0797f`  
		Last Modified: Fri, 29 Mar 2019 21:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cdc8713a97f0fb79639da378329f4d245372003c8c2abf2f4f7966587ba02f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158002075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751dc619d217cc62d644cb3c4523f7b3273e3a2b20804e8d233f10283f9c2481`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:36 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:21 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:50:43 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:50:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:50:51 GMT
USER gradle
# Sat, 30 Mar 2019 07:50:52 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:50:52 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad7077b71f2530fb8510e9432e06bc9d50bd26356f9c547d022bfc28dc0a05`  
		Last Modified: Thu, 28 Mar 2019 07:50:29 GMT  
		Size: 66.2 MB (66249162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741e26ccd40c42190a186d7d149a198c8e830d6a322c424b2fecd4e61cad318`  
		Last Modified: Thu, 28 Mar 2019 07:50:18 GMT  
		Size: 2.0 MB (1987831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbebfa735d16de9dbad567cb18126212f7a23da0eab0d29ef4c490596cd408`  
		Last Modified: Sat, 30 Mar 2019 07:51:41 GMT  
		Size: 87.2 MB (87223998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d68e2a14d824e9258839e6f4c0181e2959e7909fe931d501cbf51e432745e4`  
		Last Modified: Sat, 30 Mar 2019 07:51:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:017f41aadc83ec01fae8559abe152aa713c054163d02ed3d756b053f4b86fb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161480597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a787cd26faf0056ccd97a232337a1bf0909de59f9a965fd8622ba124f70f21cd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:29:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:29:15 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:06:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:06:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:55 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:18:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:18:12 GMT
USER gradle
# Sat, 30 Mar 2019 08:18:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:18:19 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe450b8ba378ece3582cabe05c8c904987e5055a25f8db191dd3caa2fcedb2dd`  
		Last Modified: Thu, 28 Mar 2019 08:44:48 GMT  
		Size: 69.0 MB (69003437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2840dbe717f1b7f0275fb6b486e84b7dc1458991b1a5b4727da657049594201`  
		Last Modified: Thu, 28 Mar 2019 08:43:52 GMT  
		Size: 2.5 MB (2474068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691ae35fe874c34d2a81a819d7764522ff3ff97de8b44f52bccbb30ad3b3e44`  
		Last Modified: Sat, 30 Mar 2019 08:26:28 GMT  
		Size: 87.2 MB (87224042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87869d0fa01c99547bab2aabb530396faa86be774b703645154b4739006308c`  
		Last Modified: Sat, 30 Mar 2019 08:26:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:d8c4aad8e2273cb3cfe074afe1742f918baca5e29fce12877302766e389db5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jdk` - linux; amd64

```console
$ docker pull gradle@sha256:7e438356f9727bc76c8dd2474090456bf66edfadc8ddf2cad1e0fedb277f6f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333859654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c25675a2b2185256bf3b604e6d45ed21bd4b298d000b9d1f23aea08695d585c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:11:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:11:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:10 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:15 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:15 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b2cabd5f9906b71738f6a6af71944936bb41f70f4be75a32fbfe46b7b4d76`  
		Last Modified: Fri, 29 Mar 2019 21:23:35 GMT  
		Size: 87.2 MB (87227733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef86c52c5b7f1dfb6d28dd2e63307afcb5de959560d296bd499c7237811b21`  
		Last Modified: Fri, 29 Mar 2019 21:23:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk` - linux; ppc64le

```console
$ docker pull gradle@sha256:1b6e4be6f67b39c95ce71365d8ecab78dcdac979ff4c0014386c42ddabcfd52f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323219218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb7a50ede84617c11f9e182f235ee2c35666551cdc87c19a9dddbd71b694187`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:16:33 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:16:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:06 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb891f7fc7def38d3a0f80e3b3e91328e400b247bad0d24db9d405486f705682`  
		Last Modified: Sat, 30 Mar 2019 08:25:02 GMT  
		Size: 87.2 MB (87227889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e714fe63d1c7b6244d81a0ebcefa3e8d7557603ba8e247988626809fbc9a891`  
		Last Modified: Sat, 30 Mar 2019 08:24:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk11`

```console
$ docker pull gradle@sha256:76b2b5cfa30c1ed4af80800ed3f173226134f547f349c16afd9cae225ebaa0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:7fadc570a83b9c224bb39cd85e411c1392978f69b5b23d69705251376ef0b830
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.7 MB (523697361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ad385d281fc22f998653a6c3370bdba9e98dc6ef752f5b777325a4bbabc858`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:44:00 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:44:00 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:44:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 00:44:02 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 00:45:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 00:45:26 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 10:59:40 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 10:59:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:25 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:30 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:30 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:30 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a9d43f5b1c3593b7eb98ccf10e74bc0390cb227befbef3bf13f27d2a79f7f9`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d516f512e0d5c064be962d0f4ee49d9b8675b5a5acd3f70527ea40d60d766f`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818845f741c457054b344e3108bd8e119c3f1f4d8f48b515a610f797b9a20cb9`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c738f464a19882ad215b583752f969af431250f7c54f6b8fa282d8feb5fe484`  
		Last Modified: Wed, 27 Mar 2019 01:07:37 GMT  
		Size: 325.0 MB (325046409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1cdb54980d97c0523fb7ec5482a658ab1925ce72f401c1798e2177fd04f41a`  
		Last Modified: Fri, 29 Mar 2019 21:24:55 GMT  
		Size: 87.2 MB (87227746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aaae0614a4ce6028c8ceda5f1edede5624e8cd920203ca85ef5bd322aa6c9e`  
		Last Modified: Fri, 29 Mar 2019 21:24:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:e1a24e76ed13d836a1990c0c848d4bb7560c907b4f90888b505affca69f84a83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.1 MB (491098325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40603df6ea11f7bc5766bb3ec783037e71eabffaf07095cd12ccdc84daee7953`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:13 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:33:15 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:33:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:33:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:33:26 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:33:29 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 12:33:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 12:37:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 12:37:33 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 19:01:22 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 19:01:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:21:08 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:21:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:21:20 GMT
USER gradle
# Sat, 30 Mar 2019 08:21:22 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:21:25 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:21:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ea5606b0ab0f9785b09523fbab1bc61ea4c3be532697e46b335a41b14ef13d`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6140218cafdbc0a0a55e39346362a87008296ac3b0a734f7e7f74c3fa79918f8`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25aa2cc4e25215380c3203c2681cd0afde017e041cedcc531cb4212666f9e432`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd43a6718775b45fb08007b8f5fa08479a9d12af312e4f0e03dd4ed161b7bf`  
		Last Modified: Wed, 27 Mar 2019 12:54:27 GMT  
		Size: 293.0 MB (293016060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c6931ea947bf318c142a9a779b11568bc8a0c4e586319191ccc544db49120f`  
		Last Modified: Sat, 30 Mar 2019 08:30:03 GMT  
		Size: 87.2 MB (87227790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4d419d332c3bda2bfb623c28f33b352fddf140a0ae81da30f928b5e5d79ffe`  
		Last Modified: Sat, 30 Mar 2019 08:29:37 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk11-slim`

```console
$ docker pull gradle@sha256:36b5a0ab657f096113715d34b8a615e0eab7cd2facb5adf5b3d1254e4f4e7d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jdk11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:eac1896d56ce30c2550ab1f32abc0f63c43ce2a931db2a985c19a8e64f4db7d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.4 MB (382404078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c125ddce0649009dfbb41344e5bfeedcaade072ef9fef5a0449986284ad9fa0b`
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
# Fri, 29 Mar 2019 21:22:34 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:39 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:22:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:43 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:43 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:43 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:c5a65369ad9aabc505d30f091b9e5b6d447a03110bb3da21f0daeec04341bacb`  
		Last Modified: Fri, 29 Mar 2019 21:25:00 GMT  
		Size: 1.1 MB (1100245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857772d5bb739e44ddd9a9e40556547f254fd3a4d58af239945983f36a77d9f4`  
		Last Modified: Fri, 29 Mar 2019 21:25:07 GMT  
		Size: 87.2 MB (87227770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe699e45cc506c791a3e0732e758c665e91667def73a4399f2c307cf84b066b`  
		Last Modified: Fri, 29 Mar 2019 21:25:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:48bb8c958f969af63b2bcad00b0d1cc448ce8375868478b626033e03510c7fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350585433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14ac3f138d6eca8611ebe10dca7d88f0e56a3a9395225f4122e1115a8e8071f`
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
# Sat, 30 Mar 2019 08:21:38 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:21:51 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:21:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:22:07 GMT
USER gradle
# Sat, 30 Mar 2019 08:22:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:22:12 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:57660c62ade57816eea02347445861af7bf9976e8411d1fdb16ce3a862ab22dd`  
		Last Modified: Sat, 30 Mar 2019 08:30:17 GMT  
		Size: 1.1 MB (1085283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03be21593b5474ef832518066a376ef01002113611c28ec3543ae4dc63eb0dc`  
		Last Modified: Sat, 30 Mar 2019 08:31:02 GMT  
		Size: 87.2 MB (87227812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b9d48ae5ffaaf9f8d5c7926deb70b54ef5be409f4f0ee7c568c32bb74d89db`  
		Last Modified: Sat, 30 Mar 2019 08:30:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:d8c4aad8e2273cb3cfe074afe1742f918baca5e29fce12877302766e389db5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:7e438356f9727bc76c8dd2474090456bf66edfadc8ddf2cad1e0fedb277f6f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333859654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c25675a2b2185256bf3b604e6d45ed21bd4b298d000b9d1f23aea08695d585c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:11:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:11:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:10 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:15 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:15 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b2cabd5f9906b71738f6a6af71944936bb41f70f4be75a32fbfe46b7b4d76`  
		Last Modified: Fri, 29 Mar 2019 21:23:35 GMT  
		Size: 87.2 MB (87227733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef86c52c5b7f1dfb6d28dd2e63307afcb5de959560d296bd499c7237811b21`  
		Last Modified: Fri, 29 Mar 2019 21:23:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8` - linux; ppc64le

```console
$ docker pull gradle@sha256:1b6e4be6f67b39c95ce71365d8ecab78dcdac979ff4c0014386c42ddabcfd52f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323219218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb7a50ede84617c11f9e182f235ee2c35666551cdc87c19a9dddbd71b694187`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:16:33 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:16:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:06 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb891f7fc7def38d3a0f80e3b3e91328e400b247bad0d24db9d405486f705682`  
		Last Modified: Sat, 30 Mar 2019 08:25:02 GMT  
		Size: 87.2 MB (87227889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e714fe63d1c7b6244d81a0ebcefa3e8d7557603ba8e247988626809fbc9a891`  
		Last Modified: Sat, 30 Mar 2019 08:24:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8-alpine`

```console
$ docker pull gradle@sha256:1ced24d5c5c0261a0827c4eae39b7f40da0b82b13c3cbb7a696e25dc686750a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:78b2d854221a0e6b04c03a8a22e8f8f63b9488b7bb4af191e34004026987664e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160728765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80d26bddf3cf5c8bc4109790768cee40aaeb781930183439fca74c407b85dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:31 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:36 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:36 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2e298bc2edc753dd65d4398f4fe965252a9685a995ecaf30f30a0fbe2dab7`  
		Last Modified: Fri, 29 Mar 2019 21:24:01 GMT  
		Size: 87.2 MB (87224004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c1941a21a8b6fccec26c4b66457d6db7035181a4a27ccc64f7c2197c0797f`  
		Last Modified: Fri, 29 Mar 2019 21:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cdc8713a97f0fb79639da378329f4d245372003c8c2abf2f4f7966587ba02f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158002075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751dc619d217cc62d644cb3c4523f7b3273e3a2b20804e8d233f10283f9c2481`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:36 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:21 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:50:43 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:50:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:50:51 GMT
USER gradle
# Sat, 30 Mar 2019 07:50:52 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:50:52 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad7077b71f2530fb8510e9432e06bc9d50bd26356f9c547d022bfc28dc0a05`  
		Last Modified: Thu, 28 Mar 2019 07:50:29 GMT  
		Size: 66.2 MB (66249162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741e26ccd40c42190a186d7d149a198c8e830d6a322c424b2fecd4e61cad318`  
		Last Modified: Thu, 28 Mar 2019 07:50:18 GMT  
		Size: 2.0 MB (1987831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbebfa735d16de9dbad567cb18126212f7a23da0eab0d29ef4c490596cd408`  
		Last Modified: Sat, 30 Mar 2019 07:51:41 GMT  
		Size: 87.2 MB (87223998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d68e2a14d824e9258839e6f4c0181e2959e7909fe931d501cbf51e432745e4`  
		Last Modified: Sat, 30 Mar 2019 07:51:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:017f41aadc83ec01fae8559abe152aa713c054163d02ed3d756b053f4b86fb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161480597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a787cd26faf0056ccd97a232337a1bf0909de59f9a965fd8622ba124f70f21cd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:29:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:29:15 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:06:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:06:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:55 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:18:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:18:12 GMT
USER gradle
# Sat, 30 Mar 2019 08:18:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:18:19 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe450b8ba378ece3582cabe05c8c904987e5055a25f8db191dd3caa2fcedb2dd`  
		Last Modified: Thu, 28 Mar 2019 08:44:48 GMT  
		Size: 69.0 MB (69003437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2840dbe717f1b7f0275fb6b486e84b7dc1458991b1a5b4727da657049594201`  
		Last Modified: Thu, 28 Mar 2019 08:43:52 GMT  
		Size: 2.5 MB (2474068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691ae35fe874c34d2a81a819d7764522ff3ff97de8b44f52bccbb30ad3b3e44`  
		Last Modified: Sat, 30 Mar 2019 08:26:28 GMT  
		Size: 87.2 MB (87224042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87869d0fa01c99547bab2aabb530396faa86be774b703645154b4739006308c`  
		Last Modified: Sat, 30 Mar 2019 08:26:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8-slim`

```console
$ docker pull gradle@sha256:1b8d2640ca0a9c6c883c042d6210ce728312421316a10e8a2b23300f96fdb246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jdk8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:343df7a1be3b598576f3d06cc59c3d7312d22d004055d0b0676ef4e2e14b60a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178832980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e515233d54d66ce589545bc4bf13f14df4e86ba46de4f7fc5f20379c292742c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:41 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:48 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:21:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:52 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:52 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8801669174663bc1b2c91dbc1f9b87d31ecf8937ef4f2bb8a8b48f0bb169b0`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 1.1 MB (1098990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001d4db8624df86f469723a1383666196bb89947a2439ac69a6c90a0410190c`  
		Last Modified: Fri, 29 Mar 2019 21:24:15 GMT  
		Size: 87.2 MB (87227794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60afe8d034b389ce8cdecda09bb82c087675cdfd924977243f5a175adca1c92`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:0567643f68b66a190e821c2fa604156f615c1061a881df6b8d8398bf7c29180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169452108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb214066965649211aec04cf2545e284103f6bb400ac28d59110744a7f581d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:18:34 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:18:58 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:19:16 GMT
USER gradle
# Sat, 30 Mar 2019 08:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:19:22 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cfde3e3fa5d595c095222f594ce79148f3dc0b4ca2332a6e37cdc497b15250`  
		Last Modified: Sat, 30 Mar 2019 08:26:57 GMT  
		Size: 1.1 MB (1083974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee04e342dd95af0fb785a76ca53633e39d84e82662529c17029eb6ffd403728`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 87.2 MB (87227836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16785a98997b9dd487e2965ea587802c27c5c7ae540a4c8a6a6f9c27d36e8b90`  
		Last Modified: Sat, 30 Mar 2019 08:26:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:1ced24d5c5c0261a0827c4eae39b7f40da0b82b13c3cbb7a696e25dc686750a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:78b2d854221a0e6b04c03a8a22e8f8f63b9488b7bb4af191e34004026987664e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160728765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80d26bddf3cf5c8bc4109790768cee40aaeb781930183439fca74c407b85dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:31 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:36 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:36 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2e298bc2edc753dd65d4398f4fe965252a9685a995ecaf30f30a0fbe2dab7`  
		Last Modified: Fri, 29 Mar 2019 21:24:01 GMT  
		Size: 87.2 MB (87224004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c1941a21a8b6fccec26c4b66457d6db7035181a4a27ccc64f7c2197c0797f`  
		Last Modified: Fri, 29 Mar 2019 21:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cdc8713a97f0fb79639da378329f4d245372003c8c2abf2f4f7966587ba02f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158002075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751dc619d217cc62d644cb3c4523f7b3273e3a2b20804e8d233f10283f9c2481`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:36 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:21 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:50:43 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:50:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:50:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:50:51 GMT
USER gradle
# Sat, 30 Mar 2019 07:50:52 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:50:52 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:50:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad7077b71f2530fb8510e9432e06bc9d50bd26356f9c547d022bfc28dc0a05`  
		Last Modified: Thu, 28 Mar 2019 07:50:29 GMT  
		Size: 66.2 MB (66249162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741e26ccd40c42190a186d7d149a198c8e830d6a322c424b2fecd4e61cad318`  
		Last Modified: Thu, 28 Mar 2019 07:50:18 GMT  
		Size: 2.0 MB (1987831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbebfa735d16de9dbad567cb18126212f7a23da0eab0d29ef4c490596cd408`  
		Last Modified: Sat, 30 Mar 2019 07:51:41 GMT  
		Size: 87.2 MB (87223998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d68e2a14d824e9258839e6f4c0181e2959e7909fe931d501cbf51e432745e4`  
		Last Modified: Sat, 30 Mar 2019 07:51:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:017f41aadc83ec01fae8559abe152aa713c054163d02ed3d756b053f4b86fb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161480597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a787cd26faf0056ccd97a232337a1bf0909de59f9a965fd8622ba124f70f21cd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:29:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:29:15 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:06:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:06:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:55 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:18:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:18:12 GMT
USER gradle
# Sat, 30 Mar 2019 08:18:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:18:19 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:18:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe450b8ba378ece3582cabe05c8c904987e5055a25f8db191dd3caa2fcedb2dd`  
		Last Modified: Thu, 28 Mar 2019 08:44:48 GMT  
		Size: 69.0 MB (69003437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2840dbe717f1b7f0275fb6b486e84b7dc1458991b1a5b4727da657049594201`  
		Last Modified: Thu, 28 Mar 2019 08:43:52 GMT  
		Size: 2.5 MB (2474068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691ae35fe874c34d2a81a819d7764522ff3ff97de8b44f52bccbb30ad3b3e44`  
		Last Modified: Sat, 30 Mar 2019 08:26:28 GMT  
		Size: 87.2 MB (87224042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87869d0fa01c99547bab2aabb530396faa86be774b703645154b4739006308c`  
		Last Modified: Sat, 30 Mar 2019 08:26:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk-slim`

```console
$ docker pull gradle@sha256:1b8d2640ca0a9c6c883c042d6210ce728312421316a10e8a2b23300f96fdb246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jdk-slim` - linux; amd64

```console
$ docker pull gradle@sha256:343df7a1be3b598576f3d06cc59c3d7312d22d004055d0b0676ef4e2e14b60a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178832980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e515233d54d66ce589545bc4bf13f14df4e86ba46de4f7fc5f20379c292742c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:41 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:48 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:21:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:52 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:52 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8801669174663bc1b2c91dbc1f9b87d31ecf8937ef4f2bb8a8b48f0bb169b0`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 1.1 MB (1098990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001d4db8624df86f469723a1383666196bb89947a2439ac69a6c90a0410190c`  
		Last Modified: Fri, 29 Mar 2019 21:24:15 GMT  
		Size: 87.2 MB (87227794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60afe8d034b389ce8cdecda09bb82c087675cdfd924977243f5a175adca1c92`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:0567643f68b66a190e821c2fa604156f615c1061a881df6b8d8398bf7c29180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169452108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb214066965649211aec04cf2545e284103f6bb400ac28d59110744a7f581d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:18:34 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:18:58 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:19:16 GMT
USER gradle
# Sat, 30 Mar 2019 08:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:19:22 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cfde3e3fa5d595c095222f594ce79148f3dc0b4ca2332a6e37cdc497b15250`  
		Last Modified: Sat, 30 Mar 2019 08:26:57 GMT  
		Size: 1.1 MB (1083974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee04e342dd95af0fb785a76ca53633e39d84e82662529c17029eb6ffd403728`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 87.2 MB (87227836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16785a98997b9dd487e2965ea587802c27c5c7ae540a4c8a6a6f9c27d36e8b90`  
		Last Modified: Sat, 30 Mar 2019 08:26:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:f7f44345202d913ffd174b32fec858941a3c8bbf67ab9812b12fe28f17b76a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jre` - linux; amd64

```console
$ docker pull gradle@sha256:c7cd179edbc63a045a9a9309fe93904394d0b3f0bcc2f4d9d329a912ea378a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270718858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8979dbe46fb9c55de359c997607bb8e655ceab3a2a8f9acf4f32941b380aade5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:03 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:21 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:25 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:26 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4408975e8eb06e69ccb17d21bc73352e89e72f5e4e0f9d11b6cabf8f107cd7`  
		Last Modified: Fri, 29 Mar 2019 21:23:49 GMT  
		Size: 87.2 MB (87227769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfccfecdd44f97da734adc47cf719fc00da2067a3ec115b89fdafe6bfa454d5`  
		Last Modified: Fri, 29 Mar 2019 21:23:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre` - linux; ppc64le

```console
$ docker pull gradle@sha256:2128845fd1299f60444fc6d863a20abb603eee0034f51f40210ba12aac5a1b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262583133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc519bdd01323edb5c25eb1147194ca1404b9bc3f518dd366b3ba77ee3823b7`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:48:16 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:48:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:48:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:48:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:29:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:29:30 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:35:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:51 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:20 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:17:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:37 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:40 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:42 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec55eb306e259c22f5f85e9e1ab2674681fbe25c9f6a46c26306a67256b5279d`  
		Last Modified: Thu, 28 Mar 2019 08:45:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d19db8724fba414a27d7be8145ed3a9c64b5d9f5f1fcc87ee340a4c2ff4e33`  
		Last Modified: Thu, 28 Mar 2019 08:45:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efde2cf64d691f2b71780a6fc9401996c98a1c1c5978140f5c3d6ed0cc31450`  
		Last Modified: Thu, 28 Mar 2019 08:47:01 GMT  
		Size: 114.6 MB (114610443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e92094ce8afd0214de4ab245118d64eff83cd2d749af8e008598825a7dbe08`  
		Last Modified: Sat, 30 Mar 2019 08:25:48 GMT  
		Size: 87.2 MB (87227827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3c8937a6956526456981d4755d3926627999ea6c2cca247da74b4ea66b2a05`  
		Last Modified: Sat, 30 Mar 2019 08:25:31 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre11`

```console
$ docker pull gradle@sha256:99ec8929ed47500eb1d94983876b699d57070a94972b179f4103672c8efbdf21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jre11` - linux; amd64

```console
$ docker pull gradle@sha256:3e9430ccb07126f0858390f07055690e05237172e49329a0f4fd8f05b981b6d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279861663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204b1115bc72bef848a6950b1fa26816d7f8f89ac9102bcdc8d78591bdd73ac4`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:46:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:46:47 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:46:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 00:46:50 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 00:47:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 11:00:19 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 11:00:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:49 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:53 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:53 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:53 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce08128c662b0d9d0f3d9f86364c56f7b387111dd0602f2116e7fefb7bf3322`  
		Last Modified: Wed, 27 Mar 2019 01:08:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b0cf80b370dc3011ff521f948fb212324f4b709f978ce5108193882a1a5a2f`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bd533f444d12d7c517d33e97d3ac0d27d31b2fbf6582dba416e47fcde1efc6`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc053cd8d4e277a71c9aa687ba5acbf1bc488ef70e77c6ad79ca2a6188ab4c8`  
		Last Modified: Wed, 27 Mar 2019 01:08:58 GMT  
		Size: 131.3 MB (131315629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aadec6a8d7b23a80390876fc43ff2bbfc07f9b44a9ce13a520bb68b803b1343`  
		Last Modified: Fri, 29 Mar 2019 21:25:17 GMT  
		Size: 87.2 MB (87227772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4344d4714b45feead2021b0480ed10c614c3e16df450809c3541af86b8046483`  
		Last Modified: Fri, 29 Mar 2019 21:25:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11` - linux; ppc64le

```console
$ docker pull gradle@sha256:85985b65c8ae7c133360b7f29e81574639d0e763ca7c90bc7c5c00e372f4ad78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267417124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a9c881d8f3531ef067bd6890268ea9d332c85ddb6d73b777b23e1cf79fe1ca`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:40:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:40:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:40:51 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:40:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:40:54 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 12:40:55 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 12:44:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 19:03:45 GMT
CMD ["gradle"]
# Wed, 27 Mar 2019 19:03:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:22:27 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:22:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:22:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:22:43 GMT
USER gradle
# Sat, 30 Mar 2019 08:22:45 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:22:48 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:22:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6514601eba88b9755ff17942c0be61cb64680f20b4a891540bbebb6b4547773`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef2acb3bd7521314a968803be3dfd3751ba1b952e38765798137d11cb6b7b23`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9feef0d857e479208222dc7f252bdb1acf94c133fe1dd05df462e3fb137a59`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6741a76bb88e932c9f8b9aa23f22e8cebff884fa3c40ed7a7c55cf9f0a4bf`  
		Last Modified: Wed, 27 Mar 2019 12:58:21 GMT  
		Size: 119.4 MB (119444214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cd2d56e3ecf9b0d2277fd6c8d95b5ddb00543a07331ae90056d86196439057`  
		Last Modified: Sat, 30 Mar 2019 08:31:25 GMT  
		Size: 87.2 MB (87227826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3d15739b9cd58366b672f90da1aad9c77a045783f5bfa85b863d7b992cc442`  
		Last Modified: Sat, 30 Mar 2019 08:31:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre11-slim`

```console
$ docker pull gradle@sha256:dca2d1cb732dacd5eea18412b91acaf8e89185b4bedf6772447625a8f978fbb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jre11-slim` - linux; amd64

```console
$ docker pull gradle@sha256:6e810989abb1b69413bfc3e2c12b40bf9f537cb2efe70f896d14f064d6eb79de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188414172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3beb735b3e6c4d9e3e7a6dc3d595a8600f273abec947e93ca5aa063dc2e98e`
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
# Fri, 29 Mar 2019 21:22:58 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:23:02 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:23:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:23:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:23:07 GMT
USER gradle
# Fri, 29 Mar 2019 21:23:07 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:23:07 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:23:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:96cc6307706817b9251dd36c59c5d93288eac82994c300114f390cc70847ca76`  
		Last Modified: Fri, 29 Mar 2019 21:25:22 GMT  
		Size: 1.1 MB (1099417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd12e0b6cd35573f0c47628facd7795bff6f76d867daddea2f945128919ab616`  
		Last Modified: Fri, 29 Mar 2019 21:25:28 GMT  
		Size: 87.2 MB (87227779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5217a5a0d18d97841608ad4d87bc89cba4cc8dae058b14afab642961a9ec4`  
		Last Modified: Fri, 29 Mar 2019 21:25:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre11-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:03403eb49c43d95e4e446c49c09057f4b1c5edcbd4a8cd7480f2538e3f8e553b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176757444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73391b38d07835efe3687b98b870d88774e3d52ab96a752d0d85a8f49f4b7b08`
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
# Sat, 30 Mar 2019 08:23:03 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:23:15 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:23:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:23:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:23:26 GMT
USER gradle
# Sat, 30 Mar 2019 08:23:27 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:23:28 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:23:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:3a65b31b3548f4d730ee687c735bf89f14a285ec26bc32eb79a73bbdcb862408`  
		Last Modified: Sat, 30 Mar 2019 08:31:40 GMT  
		Size: 1.1 MB (1084367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713e509eb62f790fcb2a6fd0ed42af79581804b756480f5b689c8187d6731a86`  
		Last Modified: Sat, 30 Mar 2019 08:32:04 GMT  
		Size: 87.2 MB (87227841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af992c408280bbbd1dce84990c0717e8159a553f6253e67db3f0e3e4242a0ae2`  
		Last Modified: Sat, 30 Mar 2019 08:31:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:f7f44345202d913ffd174b32fec858941a3c8bbf67ab9812b12fe28f17b76a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jre8` - linux; amd64

```console
$ docker pull gradle@sha256:c7cd179edbc63a045a9a9309fe93904394d0b3f0bcc2f4d9d329a912ea378a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270718858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8979dbe46fb9c55de359c997607bb8e655ceab3a2a8f9acf4f32941b380aade5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:03 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:21 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:25 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:26 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4408975e8eb06e69ccb17d21bc73352e89e72f5e4e0f9d11b6cabf8f107cd7`  
		Last Modified: Fri, 29 Mar 2019 21:23:49 GMT  
		Size: 87.2 MB (87227769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfccfecdd44f97da734adc47cf719fc00da2067a3ec115b89fdafe6bfa454d5`  
		Last Modified: Fri, 29 Mar 2019 21:23:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; ppc64le

```console
$ docker pull gradle@sha256:2128845fd1299f60444fc6d863a20abb603eee0034f51f40210ba12aac5a1b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262583133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc519bdd01323edb5c25eb1147194ca1404b9bc3f518dd366b3ba77ee3823b7`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:48:16 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:48:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:48:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:48:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:29:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:29:30 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:35:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:51 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:17:20 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:17:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:17:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:37 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:40 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:42 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec55eb306e259c22f5f85e9e1ab2674681fbe25c9f6a46c26306a67256b5279d`  
		Last Modified: Thu, 28 Mar 2019 08:45:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d19db8724fba414a27d7be8145ed3a9c64b5d9f5f1fcc87ee340a4c2ff4e33`  
		Last Modified: Thu, 28 Mar 2019 08:45:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efde2cf64d691f2b71780a6fc9401996c98a1c1c5978140f5c3d6ed0cc31450`  
		Last Modified: Thu, 28 Mar 2019 08:47:01 GMT  
		Size: 114.6 MB (114610443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e92094ce8afd0214de4ab245118d64eff83cd2d749af8e008598825a7dbe08`  
		Last Modified: Sat, 30 Mar 2019 08:25:48 GMT  
		Size: 87.2 MB (87227827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3c8937a6956526456981d4755d3926627999ea6c2cca247da74b4ea66b2a05`  
		Last Modified: Sat, 30 Mar 2019 08:25:31 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:863ea7f8a8bcaf2cd780761665f7532f5303a03e4b562397e334a02769989ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:b957da26715ee90f9969ae4e51e7aa54435e4790a0b53c31fb85d1f29333fa7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144939691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f8440cea7be858498350d43979a09ba8a91d00f722f1348299da86980d26ff`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:43 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:58 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:03 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:03 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:03 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c240607e75953b8f1fa2f21317c1a68d59049527fef1eca5ad2beb90c9e8ba`  
		Last Modified: Fri, 29 Mar 2019 21:24:30 GMT  
		Size: 87.2 MB (87223906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ad490515f66a61343b874e7879d44e6f907d9c8107d616d8f1996408340e8e`  
		Last Modified: Fri, 29 Mar 2019 21:24:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:34d54609645c983be09dda1c35b9bba8e46a31be9528a34c37fe1cbb4c7a46b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142188007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0521307c1a2dbd5c73871e780654b4371f77b44aba9d620ffb4386f70c1e58d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:42 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:47 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:49 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:39 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:51:00 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:51:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:51:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:51:09 GMT
USER gradle
# Sat, 30 Mar 2019 07:51:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:51:09 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:51:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb73e570ec3ef984c7f0a7cd932217fc7d3481039e1fd377177ce522baba673`  
		Last Modified: Thu, 28 Mar 2019 07:50:52 GMT  
		Size: 50.4 MB (50436033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e91841f348d71ab4afc7c8a8fa556586dcfad7c813054da42b8723a9c1f790e`  
		Last Modified: Thu, 28 Mar 2019 07:50:44 GMT  
		Size: 2.0 MB (1986846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908fbe7e6952c46d421a0a4dbef906543d8929e79047762d750125c87a6502e`  
		Last Modified: Sat, 30 Mar 2019 07:52:10 GMT  
		Size: 87.2 MB (87224044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0019b99bf046c9935a11b34d6102b34a7cb58cb25a94e497482bf6a7c2340885`  
		Last Modified: Sat, 30 Mar 2019 07:51:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:d5000f06abd3a403348f9248deb6c844c7e2ec0e6184d73d448486a99b19091c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145625198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64314a2660fa8b22c349b2ef1a73c54a72dd8b60677590d0c39e480b3e6ed32`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:37:51 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:38:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:38:13 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:07:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:19:44 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:19:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:02 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:05 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef74255218309615e9f667e5274026d23052ecd738fca3d2e873afcf38fdf50a`  
		Last Modified: Thu, 28 Mar 2019 08:48:54 GMT  
		Size: 53.1 MB (53149344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81a40256f1669874675017d12810ae274fe4ed6c15dddcff8387b19d150b41`  
		Last Modified: Thu, 28 Mar 2019 08:48:09 GMT  
		Size: 2.5 MB (2472817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7551e864de182451486885b5d97afc58779a208a26260f4214fbf33d6fb0bf`  
		Last Modified: Sat, 30 Mar 2019 08:28:25 GMT  
		Size: 87.2 MB (87223987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7d786be796f5d5c7a7be4cac9855230ea73d0f7f3330c3581a67b33ec56b37`  
		Last Modified: Sat, 30 Mar 2019 08:27:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8-slim`

```console
$ docker pull gradle@sha256:23158aa999df4d051ee892741194947d1d6d0498faf287c24893d9ac7886c333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jre8-slim` - linux; amd64

```console
$ docker pull gradle@sha256:b0c7199f40cb7f35e02525162c6ba1bda47ea5177698acac7fef0629e082c91f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167163229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6c40f155b7f63fe43e20ba183e3fdc733fdec00af62cdf42e0947aac98da2e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:49:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:54 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:09 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:13 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:22:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:20 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:20 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ab0e6e34de83f184b5a7929a9009e4523561eea7c090ec5727806fdef8fb2`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 55.9 MB (55885973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9069fe0be4f7aa6ef690aea07ba44620736e02ef89111e24e1b6601d2f37bc0`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 1.1 MB (1097980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0344ef692bd82712b31368bc455e913d064d7d29056012b53a6287813b63018`  
		Last Modified: Fri, 29 Mar 2019 21:24:42 GMT  
		Size: 87.2 MB (87227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca6357d3c18acf4dea9c6128b7ce3b05c742939ad1b0ea8ec8963e720f217ee`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:488f934a54d7ae2a801743ef2f078b6f8246d074b0c3d6171f777f0c86522074
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160050822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f29ca114dc5071d17a801960b213f197c3fe91b6d69c4c40b2763aaeaf6bd3c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:49:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:35:19 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:35:24 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:37:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:08:23 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:08:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:20:19 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:20:36 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:20:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:20:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:50 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:56 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:21:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86fba52d14a165b78745a1ddb558414e06684b430c574e712dc791287b28b6`  
		Last Modified: Thu, 28 Mar 2019 08:47:54 GMT  
		Size: 48.5 MB (48538128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0719dd26b4c320ba550888aae2103342ccc681bc3c0cf79b07a23ff9af9e2f`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 1.1 MB (1083083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585eb01cfb9372c2c62a34ad3aa0ab692ea832896dd52ff328d3bdc04ab80f95`  
		Last Modified: Sat, 30 Mar 2019 08:29:14 GMT  
		Size: 87.2 MB (87227846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93340eeffbce04c74bfcd258c6116054e08048d495548cc073a148f659c87aa0`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre-alpine`

```console
$ docker pull gradle@sha256:863ea7f8a8bcaf2cd780761665f7532f5303a03e4b562397e334a02769989ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `gradle:jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:b957da26715ee90f9969ae4e51e7aa54435e4790a0b53c31fb85d1f29333fa7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144939691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f8440cea7be858498350d43979a09ba8a91d00f722f1348299da86980d26ff`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:12:43 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:58 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:03 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:03 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:03 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c240607e75953b8f1fa2f21317c1a68d59049527fef1eca5ad2beb90c9e8ba`  
		Last Modified: Fri, 29 Mar 2019 21:24:30 GMT  
		Size: 87.2 MB (87223906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ad490515f66a61343b874e7879d44e6f907d9c8107d616d8f1996408340e8e`  
		Last Modified: Fri, 29 Mar 2019 21:24:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:34d54609645c983be09dda1c35b9bba8e46a31be9528a34c37fe1cbb4c7a46b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142188007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0521307c1a2dbd5c73871e780654b4371f77b44aba9d620ffb4386f70c1e58d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 07:49:42 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 07:49:47 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 07:49:49 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 08:06:39 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 08:06:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 07:51:00 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 07:51:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 07:51:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 07:51:09 GMT
USER gradle
# Sat, 30 Mar 2019 07:51:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 07:51:09 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 07:51:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb73e570ec3ef984c7f0a7cd932217fc7d3481039e1fd377177ce522baba673`  
		Last Modified: Thu, 28 Mar 2019 07:50:52 GMT  
		Size: 50.4 MB (50436033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e91841f348d71ab4afc7c8a8fa556586dcfad7c813054da42b8723a9c1f790e`  
		Last Modified: Thu, 28 Mar 2019 07:50:44 GMT  
		Size: 2.0 MB (1986846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908fbe7e6952c46d421a0a4dbef906543d8929e79047762d750125c87a6502e`  
		Last Modified: Sat, 30 Mar 2019 07:52:10 GMT  
		Size: 87.2 MB (87224044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0019b99bf046c9935a11b34d6102b34a7cb58cb25a94e497482bf6a7c2340885`  
		Last Modified: Sat, 30 Mar 2019 07:51:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:d5000f06abd3a403348f9248deb6c844c7e2ec0e6184d73d448486a99b19091c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145625198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64314a2660fa8b22c349b2ef1a73c54a72dd8b60677590d0c39e480b3e6ed32`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 08:37:51 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:38:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:38:13 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 09:07:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:19:44 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:19:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:02 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:05 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef74255218309615e9f667e5274026d23052ecd738fca3d2e873afcf38fdf50a`  
		Last Modified: Thu, 28 Mar 2019 08:48:54 GMT  
		Size: 53.1 MB (53149344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81a40256f1669874675017d12810ae274fe4ed6c15dddcff8387b19d150b41`  
		Last Modified: Thu, 28 Mar 2019 08:48:09 GMT  
		Size: 2.5 MB (2472817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7551e864de182451486885b5d97afc58779a208a26260f4214fbf33d6fb0bf`  
		Last Modified: Sat, 30 Mar 2019 08:28:25 GMT  
		Size: 87.2 MB (87223987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7d786be796f5d5c7a7be4cac9855230ea73d0f7f3330c3581a67b33ec56b37`  
		Last Modified: Sat, 30 Mar 2019 08:27:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre-slim`

```console
$ docker pull gradle@sha256:23158aa999df4d051ee892741194947d1d6d0498faf287c24893d9ac7886c333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:jre-slim` - linux; amd64

```console
$ docker pull gradle@sha256:b0c7199f40cb7f35e02525162c6ba1bda47ea5177698acac7fef0629e082c91f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167163229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6c40f155b7f63fe43e20ba183e3fdc733fdec00af62cdf42e0947aac98da2e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:49:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:54 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:22:09 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:22:13 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:22:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:22:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:22:20 GMT
USER gradle
# Fri, 29 Mar 2019 21:22:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:22:20 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:22:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ab0e6e34de83f184b5a7929a9009e4523561eea7c090ec5727806fdef8fb2`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 55.9 MB (55885973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9069fe0be4f7aa6ef690aea07ba44620736e02ef89111e24e1b6601d2f37bc0`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 1.1 MB (1097980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0344ef692bd82712b31368bc455e913d064d7d29056012b53a6287813b63018`  
		Last Modified: Fri, 29 Mar 2019 21:24:42 GMT  
		Size: 87.2 MB (87227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca6357d3c18acf4dea9c6128b7ce3b05c742939ad1b0ea8ec8963e720f217ee`  
		Last Modified: Fri, 29 Mar 2019 21:24:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre-slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:488f934a54d7ae2a801743ef2f078b6f8246d074b0c3d6171f777f0c86522074
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160050822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f29ca114dc5071d17a801960b213f197c3fe91b6d69c4c40b2763aaeaf6bd3c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:49:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:35:19 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:35:24 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:37:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:08:23 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:08:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:20:19 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:20:36 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:20:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:20:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:20:50 GMT
USER gradle
# Sat, 30 Mar 2019 08:20:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:20:56 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:21:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86fba52d14a165b78745a1ddb558414e06684b430c574e712dc791287b28b6`  
		Last Modified: Thu, 28 Mar 2019 08:47:54 GMT  
		Size: 48.5 MB (48538128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0719dd26b4c320ba550888aae2103342ccc681bc3c0cf79b07a23ff9af9e2f`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 1.1 MB (1083083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585eb01cfb9372c2c62a34ad3aa0ab692ea832896dd52ff328d3bdc04ab80f95`  
		Last Modified: Sat, 30 Mar 2019 08:29:14 GMT  
		Size: 87.2 MB (87227846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93340eeffbce04c74bfcd258c6116054e08048d495548cc073a148f659c87aa0`  
		Last Modified: Sat, 30 Mar 2019 08:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:d8c4aad8e2273cb3cfe074afe1742f918baca5e29fce12877302766e389db5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:latest` - linux; amd64

```console
$ docker pull gradle@sha256:7e438356f9727bc76c8dd2474090456bf66edfadc8ddf2cad1e0fedb277f6f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333859654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c25675a2b2185256bf3b604e6d45ed21bd4b298d000b9d1f23aea08695d585c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:11:52 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:11:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:10 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:15 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:15 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b2cabd5f9906b71738f6a6af71944936bb41f70f4be75a32fbfe46b7b4d76`  
		Last Modified: Fri, 29 Mar 2019 21:23:35 GMT  
		Size: 87.2 MB (87227733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef86c52c5b7f1dfb6d28dd2e63307afcb5de959560d296bd499c7237811b21`  
		Last Modified: Fri, 29 Mar 2019 21:23:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:latest` - linux; ppc64le

```console
$ docker pull gradle@sha256:1b6e4be6f67b39c95ce71365d8ecab78dcdac979ff4c0014386c42ddabcfd52f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323219218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb7a50ede84617c11f9e182f235ee2c35666551cdc87c19a9dddbd71b694187`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:05:15 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:05:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:16:33 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:16:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:17:00 GMT
USER gradle
# Sat, 30 Mar 2019 08:17:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:17:06 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:17:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb891f7fc7def38d3a0f80e3b3e91328e400b247bad0d24db9d405486f705682`  
		Last Modified: Sat, 30 Mar 2019 08:25:02 GMT  
		Size: 87.2 MB (87227889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e714fe63d1c7b6244d81a0ebcefa3e8d7557603ba8e247988626809fbc9a891`  
		Last Modified: Sat, 30 Mar 2019 08:24:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:slim`

```console
$ docker pull gradle@sha256:1b8d2640ca0a9c6c883c042d6210ce728312421316a10e8a2b23300f96fdb246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `gradle:slim` - linux; amd64

```console
$ docker pull gradle@sha256:343df7a1be3b598576f3d06cc59c3d7312d22d004055d0b0676ef4e2e14b60a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178832980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e515233d54d66ce589545bc4bf13f14df4e86ba46de4f7fc5f20379c292742c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:26:34 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:26:35 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:27:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:26 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Mar 2019 21:21:41 GMT
ENV GRADLE_VERSION=5.3.1
# Fri, 29 Mar 2019 21:21:48 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:21:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Fri, 29 Mar 2019 21:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Mar 2019 21:21:52 GMT
USER gradle
# Fri, 29 Mar 2019 21:21:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Mar 2019 21:21:52 GMT
WORKDIR /home/gradle
# Fri, 29 Mar 2019 21:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80aca6b8ec87a87c2200276a5e098ed72ca708e8befa0b8951e019be98a90c`  
		Last Modified: Wed, 27 Mar 2019 23:46:18 GMT  
		Size: 67.6 MB (67554745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8801669174663bc1b2c91dbc1f9b87d31ecf8937ef4f2bb8a8b48f0bb169b0`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 1.1 MB (1098990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001d4db8624df86f469723a1383666196bb89947a2439ac69a6c90a0410190c`  
		Last Modified: Fri, 29 Mar 2019 21:24:15 GMT  
		Size: 87.2 MB (87227794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60afe8d034b389ce8cdecda09bb82c087675cdfd924977243f5a175adca1c92`  
		Last Modified: Fri, 29 Mar 2019 21:24:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:0567643f68b66a190e821c2fa604156f615c1061a881df6b8d8398bf7c29180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169452108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb214066965649211aec04cf2545e284103f6bb400ac28d59110744a7f581d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:26:51 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:26:52 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:28:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:07:00 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 09:07:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 08:18:34 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 08:18:58 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Mar 2019 08:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 08:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 08:19:16 GMT
USER gradle
# Sat, 30 Mar 2019 08:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 08:19:22 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 08:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
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
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b0232d35bdfcfa8568d4f127b4e3cfa6d3871875289b1d809ffc8f84cbf926`  
		Last Modified: Thu, 28 Mar 2019 08:43:25 GMT  
		Size: 57.9 MB (57938530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cfde3e3fa5d595c095222f594ce79148f3dc0b4ca2332a6e37cdc497b15250`  
		Last Modified: Sat, 30 Mar 2019 08:26:57 GMT  
		Size: 1.1 MB (1083974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee04e342dd95af0fb785a76ca53633e39d84e82662529c17029eb6ffd403728`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 87.2 MB (87227836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16785a98997b9dd487e2965ea587802c27c5c7ae540a4c8a6a6f9c27d36e8b90`  
		Last Modified: Sat, 30 Mar 2019 08:26:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
