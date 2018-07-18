## `gradle:jdk10`

```console
$ docker pull gradle@sha256:6e11991257d5fcfabf64f44714a757b2935dfe0375ba2d73474afc92274275f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `gradle:jdk10` - linux; amd64

```console
$ docker pull gradle@sha256:377f50d2ac8fafc2c380ce1295f1ea503d270680b461184e195a6b843da10c03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.9 MB (455870850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e5f37710d87901697d60d5ce017a3b110aa0c5116e470e3fd3ed3d942c6af`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 00:24:39 GMT
ADD file:f04b64a73c29541d70cda855be7033dbd8e0b173ab11cd93458f3400fd270d85 in / 
# Tue, 17 Jul 2018 00:24:40 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:09:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:09:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:08:04 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:08:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:12:39 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:12:39 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:12:39 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 06:12:40 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 06:13:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:13:48 GMT
CMD ["jshell"]
# Tue, 17 Jul 2018 16:33:46 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:33:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 23:30:32 GMT
ENV GRADLE_VERSION=4.9
# Tue, 17 Jul 2018 23:30:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Tue, 17 Jul 2018 23:30:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 23:30:38 GMT
USER [gradle]
# Tue, 17 Jul 2018 23:30:39 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 23:30:39 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 23:30:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:e367ac4072dc48836ab52faeb39e943b075e21aa02c1a88f838651b9b384de50`  
		Last Modified: Tue, 17 Jul 2018 00:39:42 GMT  
		Size: 48.7 MB (48725588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a57779b5dbaefdeb5306372ffa77aee257957dd74042f9ea2572052c5cc9201`  
		Last Modified: Tue, 17 Jul 2018 03:50:25 GMT  
		Size: 7.0 MB (7035962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c28c5ff25d086ba826711dd56a6652542b6dd75f3c5a4bb6daa1c8977bf7e`  
		Last Modified: Tue, 17 Jul 2018 03:50:27 GMT  
		Size: 9.2 MB (9245784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8bf5e9a1f1f0c917d4b4cacd63eb974e31d4bb74c6b35ac2905c39c7568f37`  
		Last Modified: Tue, 17 Jul 2018 03:51:19 GMT  
		Size: 51.4 MB (51432749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e45f9a301efabcdf81e1b0b3ab3803d71b47963b8900551c9956c55fd7853c0`  
		Last Modified: Tue, 17 Jul 2018 06:29:35 GMT  
		Size: 898.4 KB (898412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70656c3c93966b66d9f46242ea274d59996a24e5d3b3deb9d0a9307c58845f1e`  
		Last Modified: Tue, 17 Jul 2018 06:29:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eb305208dacb547f76784b0f566b47942d453cac0a89cce5335b85912f57c3`  
		Last Modified: Tue, 17 Jul 2018 06:40:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e022358c7c3e4f5727b2d46a880b0cd0d596d93a2a309b23197f7217d79c2f8e`  
		Last Modified: Tue, 17 Jul 2018 06:41:37 GMT  
		Size: 262.2 MB (262209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e175036b0eccc1d325c4720d26459293a01372d9239b81280869e263769f30ff`  
		Last Modified: Tue, 17 Jul 2018 23:54:24 GMT  
		Size: 76.3 MB (76322630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2297c1b87289c703a06291699489afebf774bc379d49196d7997940ee71cbca9`  
		Last Modified: Tue, 17 Jul 2018 23:54:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; 386

```console
$ docker pull gradle@sha256:a4ff538bdc086d032ff51353407fee128717cba83ada3cf5eb5570b90336d992
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.4 MB (465384355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721771c70a9232d77cb9a15fce66e82490705927c931246fe0a3a249a22e1ca3`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 10:46:37 GMT
ADD file:9a56907f76deea3f2b22068eae8c6cc31bed7f9c7b3de38c6e99c54e77d0822e in / 
# Tue, 17 Jul 2018 10:46:41 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:30:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:31:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:08:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:08:27 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:08:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:12:39 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:12:39 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 18:12:39 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 18:12:40 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 18:13:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:13:50 GMT
CMD ["jshell"]
# Tue, 17 Jul 2018 19:24:19 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 19:24:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Jul 2018 00:55:01 GMT
ENV GRADLE_VERSION=4.9
# Wed, 18 Jul 2018 00:55:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 18 Jul 2018 00:55:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 18 Jul 2018 00:55:18 GMT
USER [gradle]
# Wed, 18 Jul 2018 00:55:18 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Jul 2018 00:55:19 GMT
WORKDIR /home/gradle
# Wed, 18 Jul 2018 00:55:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c4a6da94b3de8d8ecc301930050dce3da90b886c8443b00166765e0873f7abf6`  
		Last Modified: Tue, 17 Jul 2018 11:03:38 GMT  
		Size: 49.5 MB (49529462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804bb32a028b43835bbfcaa803b7de3d0dac5cb91ca5192d83ff39548d87dc5`  
		Last Modified: Tue, 17 Jul 2018 15:11:50 GMT  
		Size: 7.2 MB (7186448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6b791854fa42fd340bfb473b8a46084be17fd760aec34df82fd303f96a9ca5`  
		Last Modified: Tue, 17 Jul 2018 15:11:52 GMT  
		Size: 9.5 MB (9527986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40279f54426d9ac9a22689660bb34d8bc986a2f929cee2ed860920321d5ffc1d`  
		Last Modified: Tue, 17 Jul 2018 15:13:01 GMT  
		Size: 52.9 MB (52940134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336ac680bc5748d60157816fa95cefea339c0c3720c857556ccdf17043be6778`  
		Last Modified: Tue, 17 Jul 2018 18:25:37 GMT  
		Size: 906.0 KB (906033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70767d7e7737bbadef44f25783a0ad50abdad299c166e58d93c14d536dd09869`  
		Last Modified: Tue, 17 Jul 2018 18:25:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fb6c94528b3f4f32927d4221a78c7054ad1e42f657be9ee76cb4e427642618`  
		Last Modified: Tue, 17 Jul 2018 18:34:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b5415028ed0d33e33951922721c85c0e4ecd0820fc59b435fe15a7305908e9`  
		Last Modified: Tue, 17 Jul 2018 18:35:31 GMT  
		Size: 269.0 MB (268971129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d129da067003300e3b4ed73b7203d8c56f9190e894d3069ba3d6112b1b5a98a`  
		Last Modified: Wed, 18 Jul 2018 01:23:08 GMT  
		Size: 76.3 MB (76322658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272fe4965d203ea060415692b21b7959ff884fff9e94753d9b93cf273e8aa77`  
		Last Modified: Wed, 18 Jul 2018 01:22:57 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; ppc64le

```console
$ docker pull gradle@sha256:60f1733c6c06f8fc6023652c73e58c945255c15d918e949f86f9d25faff565e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.4 MB (443391068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d481aea71c9b397f14f9d9597a8c00a9a0c813edc20e836060177cb0e351b09e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:22 GMT
ADD file:94ebec540eca8b99572e5842e1f1f2fe8cf7a62fb1366b2459edb37903e41200 in / 
# Tue, 17 Jul 2018 08:18:31 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:56:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:57:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:07:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:07:15 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 16:07:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 16:33:17 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 16:33:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 16:33:44 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 16:33:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 16:53:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:53:39 GMT
CMD ["jshell"]
# Tue, 17 Jul 2018 18:18:43 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 18:18:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Jul 2018 01:03:24 GMT
ENV GRADLE_VERSION=4.9
# Wed, 18 Jul 2018 01:03:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Wed, 18 Jul 2018 01:03:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 18 Jul 2018 01:03:35 GMT
USER [gradle]
# Wed, 18 Jul 2018 01:03:36 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Jul 2018 01:03:38 GMT
WORKDIR /home/gradle
# Wed, 18 Jul 2018 01:03:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2d7cf41bf039d34ad7c6efe6cb9dc3370c5f55c39226a13fd409d52eb991f335`  
		Last Modified: Tue, 17 Jul 2018 08:23:43 GMT  
		Size: 50.2 MB (50185044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17647cf140d6db3c9f1f92652456b5a6bb54c33ca54b10d4dfb98f2b9f8e5c4`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 6.9 MB (6876422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd26110f5fee83517301d699e51fa0068429ef004ebc1a0f923f23ededc8621`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 9.5 MB (9494855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c5d2aceb0a30850066a60ad00c4acf7c902e57f834ceaa3d53eab67f5b9ee7`  
		Last Modified: Tue, 17 Jul 2018 14:14:35 GMT  
		Size: 54.1 MB (54097468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56eba754269ec00bd5b182353c6ab928b62d60d1f637e6d431eb449b24cdde2a`  
		Last Modified: Tue, 17 Jul 2018 17:24:18 GMT  
		Size: 892.9 KB (892865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21deca8c5964f5721227b1836137a06c27194532e34d1ec53f8fd9933beb7c56`  
		Last Modified: Tue, 17 Jul 2018 17:24:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d126f971c69dbc34b6acc043659682e06f16adbff6e25bcd2fa04f3ce48ae541`  
		Last Modified: Tue, 17 Jul 2018 17:29:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85106f44cad2deffd447c6d12295d45934f1ae38873dffec52cd5504dd50431`  
		Last Modified: Tue, 17 Jul 2018 17:35:02 GMT  
		Size: 245.5 MB (245520899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70c34a47d07830edcbb71599982b58ac94705fc96b60791ae72c4b917791b06`  
		Last Modified: Wed, 18 Jul 2018 01:15:50 GMT  
		Size: 76.3 MB (76322908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5262ba14a54eea5d4fe2d4502effa74c137cd3dfcc399932b6b2a49d6b6f01c`  
		Last Modified: Wed, 18 Jul 2018 01:15:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
