## `gradle:jdk10`

```console
$ docker pull gradle@sha256:a7745b320c30d3b73c8bcfb65ce15a7dc68f08a50452125e30f887497283b164
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

### `gradle:jdk10` - linux; amd64

```console
$ docker pull gradle@sha256:2b420cd439e94f46711595bfa62724368b869d3b6b56eed11a290fad22970287
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.5 MB (455489782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5c37c9fd5779f92dd911e5eec47a3fc0525a86add2fede00eb52a9ad7be403`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:26 GMT
ADD file:10ef22e92828bf2e3e64f0617e248ec4f9885da94b826c950bdc8416d67d96cd in / 
# Tue, 26 Jun 2018 21:23:26 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:14:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:18:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:18:32 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:18:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:21:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:21:44 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:21:44 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 26 Jun 2018 23:21:45 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 26 Jun 2018 23:23:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:23:26 GMT
CMD ["jshell"]
# Fri, 29 Jun 2018 22:29:36 GMT
CMD ["gradle"]
# Fri, 29 Jun 2018 22:29:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Jun 2018 22:29:36 GMT
ENV GRADLE_VERSION=4.8.1
# Fri, 29 Jun 2018 22:29:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Fri, 29 Jun 2018 22:29:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Jun 2018 22:29:43 GMT
USER [gradle]
# Fri, 29 Jun 2018 22:29:43 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Jun 2018 22:29:43 GMT
WORKDIR /home/gradle
# Fri, 29 Jun 2018 22:29:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:26254fbb7f1ecf87788ab9644ed2990fda0f5efe4ce585efa529013e3e61b8f3`  
		Last Modified: Tue, 26 Jun 2018 21:34:18 GMT  
		Size: 48.6 MB (48648929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb95abe62cf617072cd93a562dd3c073f8fabba929bb1aa8f0573971554b41a5`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 7.0 MB (7033853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbb6315c68fc7776b3dd34584b03f3a00f3e9fcd9058dbed42208d2843b593`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 9.2 MB (9245186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e01fadb90415cfdce67b9b4b78f9daa661339be8a44aa55b8d53d01ccc6ab73`  
		Last Modified: Tue, 26 Jun 2018 22:28:16 GMT  
		Size: 51.4 MB (51430356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e90a4730ea93a961d2497a76e4b79f02b749f6851e905bb8650ef05071a59`  
		Last Modified: Tue, 26 Jun 2018 23:39:07 GMT  
		Size: 897.5 KB (897511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651184a99bc562294783d09f028acd4d42b2a1bc3fb337bd831a0776dcfaa6e9`  
		Last Modified: Tue, 26 Jun 2018 23:39:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dc67c9797a812b7d8a619845050ee902ffe3db2a8fdfb51ef6d40e719b9893`  
		Last Modified: Tue, 26 Jun 2018 23:39:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f46b78bb5fc6e7b8c57165c33dbe6386493a2cd64033ff4d2e04beb92778294`  
		Last Modified: Tue, 26 Jun 2018 23:40:12 GMT  
		Size: 262.4 MB (262357662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca48327a5fbf0eb8331ceb3e384e790934e8c3876b82b003f7cdd73875b2b3`  
		Last Modified: Fri, 29 Jun 2018 22:49:15 GMT  
		Size: 75.9 MB (75875781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c1fe116a295aea0c31042d88bf3ff698c33a217429b85d4998a08dde8b3d12`  
		Last Modified: Fri, 29 Jun 2018 22:49:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; arm variant v5

```console
$ docker pull gradle@sha256:32a2efba026509d184f453d408cbee8badef80b037545b748609c559631e880a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.1 MB (420105123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71925877a7d25db2bd14749eb394f95afe69f32ff0f490c5c50e1ebced2dcee`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:05 GMT
ADD file:ff4224e770f51d0f3be1aecc1f129a7f389ab6fb2a02c33f71754bcecaa8eed6 in / 
# Wed, 27 Jun 2018 08:52:06 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:35:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:24:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:24:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:24:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:27:52 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:27:52 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:27:53 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 12:27:54 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 12:29:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:29:29 GMT
CMD ["jshell"]
# Wed, 27 Jun 2018 15:06:31 GMT
CMD ["gradle"]
# Wed, 27 Jun 2018 15:06:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Jun 2018 15:06:32 GMT
ENV GRADLE_VERSION=4.8.1
# Wed, 27 Jun 2018 15:06:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Wed, 27 Jun 2018 15:06:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Jun 2018 15:06:38 GMT
USER [gradle]
# Wed, 27 Jun 2018 15:06:38 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Jun 2018 15:06:39 GMT
WORKDIR /home/gradle
# Wed, 27 Jun 2018 15:06:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:7decc6d2fc57efa1361d37f5ad2c7aa7c3781d38053c8cbb4f5f4f0efb8f6509`  
		Last Modified: Wed, 27 Jun 2018 09:01:05 GMT  
		Size: 46.6 MB (46603040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9691ec6c700eaec782847d7533f59b108859f65b19cbf9fdba233042347c72f2`  
		Last Modified: Wed, 27 Jun 2018 09:46:46 GMT  
		Size: 6.6 MB (6626612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b974f70f947561f9652d18f74b53b01eae62f2eff92385378a0fefb51f2ae8a1`  
		Last Modified: Wed, 27 Jun 2018 09:46:46 GMT  
		Size: 9.0 MB (8986694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccce33860d56681a683fce54e7c4df590d01e1f0d09e0dc0bfc16c739c37866`  
		Last Modified: Wed, 27 Jun 2018 09:47:19 GMT  
		Size: 48.7 MB (48706276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2393b9d714a7a86fde5cc5f58eeb34dbcaa0fe23263774dceae7b0d058d6f233`  
		Last Modified: Wed, 27 Jun 2018 12:45:34 GMT  
		Size: 890.6 KB (890615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e42c24bc9c4742b65cb6e9e4d2344b47c00c379f8e6499d2491c6dded3450d`  
		Last Modified: Wed, 27 Jun 2018 12:45:34 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c82d049f021a98fee4fa5c51f10df162e9cace849f23968b1ef5b83c52011e`  
		Last Modified: Wed, 27 Jun 2018 12:45:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5abbfad16c3b35aa0f3f3ea5eb962644a37094e1a46574fbb14ddc6e82744f6`  
		Last Modified: Wed, 27 Jun 2018 12:46:23 GMT  
		Size: 232.4 MB (232415367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb081eef130fa1e40cbd363ee557d5646ca0d60a93268672e80eade2382addf`  
		Last Modified: Wed, 27 Jun 2018 15:11:00 GMT  
		Size: 75.9 MB (75875919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b072cb8b8d27fde4e703e6c6c8fa8dd572ff73d1022048bc1be75349e80917`  
		Last Modified: Wed, 27 Jun 2018 15:10:45 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; arm variant v7

```console
$ docker pull gradle@sha256:c9ff4994f03a616ed60816a3219f99b908b9812b2e2faeed2322162c275d5afa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.0 MB (419018268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdacb0c83e78f10331e8369053b7957576b25f8360d22dfe0852695b4e856cc2`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 12:02:19 GMT
ADD file:b8fa078b9ddc39737b1c9eaeea11c4d1a71fb53d2ac6747fa0eab346280119a5 in / 
# Sat, 28 Apr 2018 12:02:20 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:10:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:10:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:11:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:50:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:50:09 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:50:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:54:19 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:54:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 12:54:20 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 12:11:38 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 12:11:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 12:11:24 GMT
CMD ["jshell"]
# Wed, 20 Jun 2018 12:03:13 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 12:03:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 11:59:09 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 11:59:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 11:59:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 11:59:15 GMT
USER [gradle]
# Tue, 26 Jun 2018 11:59:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 11:59:16 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 11:59:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:bd36ef86ab3a0249a38384d63e39dbf85bd3f64d4e9ae0179795e2da5754d3fc`  
		Last Modified: Sat, 28 Apr 2018 12:13:46 GMT  
		Size: 44.2 MB (44193727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2182099ef994efdc26b1608eeb96ebb41405847c6f253e40c752ec9246cce60`  
		Last Modified: Sat, 05 May 2018 12:33:28 GMT  
		Size: 7.5 MB (7535807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5fedbfebaf2860a81e319ee9a8c18137fb801f56d7729af7b4698f98e05c62b`  
		Last Modified: Sat, 05 May 2018 12:33:28 GMT  
		Size: 8.9 MB (8899307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496b1250aadf8322a3300af60aa0258966c4b2c12109c11bd182477c5514ef26`  
		Last Modified: Sat, 05 May 2018 12:34:02 GMT  
		Size: 47.9 MB (47926773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629e5fac21e671f199fc1cac252e622d21a20f37e79fe3630532931d2bb40e5f`  
		Last Modified: Sat, 05 May 2018 13:12:55 GMT  
		Size: 871.5 KB (871492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7a7248d3ef3e6ee57ebcf46bc34d79eb8c65a74f73193128b9736553a5e46d`  
		Last Modified: Sat, 05 May 2018 13:12:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de89152980cab32e413ac53ff8e637b08ae9e52e2faee33192d07438741943`  
		Last Modified: Sat, 05 May 2018 13:20:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4eff30625d836150eed97c5e420c0c2745a20fabe5324c028fc7c8a284ca4`  
		Last Modified: Tue, 15 May 2018 12:44:25 GMT  
		Size: 233.7 MB (233714697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446a90a6435e0ed72ee396f20011e66449a296254d4603cb5c6501e69ba5a311`  
		Last Modified: Tue, 26 Jun 2018 12:03:12 GMT  
		Size: 75.9 MB (75875863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34767187d8d696bdc54b02b65b5088387bb4e0a69efadcbd57cf823512fc1ef`  
		Last Modified: Tue, 26 Jun 2018 12:03:02 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:52d32846e55d1ae9059767234c18d76725b77a871816b439cafa60e1680ade7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.3 MB (428280046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e2c9a8a6999fe1cdb0943dc06f26249366d599dbbe8e2ae5b7e44f462ec363`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 30 Apr 2018 23:27:31 GMT
ADD file:ebaa7f02c60ac8138d085ce979847d36a1a8ce243bcef9b7e81e3e667d060dcb in / 
# Mon, 30 Apr 2018 23:27:34 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:28:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:20:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:20:11 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 11:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 11:39:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 11:39:59 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 11:40:00 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 10:24:33 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 09:25:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:25:09 GMT
CMD ["jshell"]
# Wed, 20 Jun 2018 09:31:25 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 09:31:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 08:55:15 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 08:55:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 08:55:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 08:55:26 GMT
USER [gradle]
# Tue, 26 Jun 2018 08:55:27 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 08:55:29 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 08:55:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ed5c004c8effeb24e6eee983af18662b0d28341fbbd46983746399c6df3358c8`  
		Last Modified: Mon, 30 Apr 2018 23:47:36 GMT  
		Size: 45.6 MB (45610129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023415c45ba32335bb869e25328b3b2c70e3ad264f1129bb133addb1fbfef4a`  
		Last Modified: Sat, 05 May 2018 10:25:46 GMT  
		Size: 7.9 MB (7867437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793192206e4ab032f5152356b71ea402af9d6cfd3812ad4e29857c76a039af6`  
		Last Modified: Sat, 05 May 2018 10:25:45 GMT  
		Size: 9.2 MB (9190303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e033c04a8296917467f1a5f58f33424a0c62e7f1ad7bc521d1a04a30491463`  
		Last Modified: Sat, 05 May 2018 10:26:49 GMT  
		Size: 50.8 MB (50809602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8751d53eb40e199ecd3910be45e09c6c039df9cf93ff8d670dbeea5b482f73af`  
		Last Modified: Sat, 05 May 2018 12:42:04 GMT  
		Size: 881.3 KB (881341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1938d575c214b836cf8b48efd7a34cc415cc6910744792cbf930f8a0db1a557d`  
		Last Modified: Sat, 05 May 2018 12:42:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f233056ca4e8e4182f4e424772fe1bbb116f4a12222adeaaceec03a398d5f3b1`  
		Last Modified: Sat, 05 May 2018 12:51:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4fa745d17ac9138fc1e54a324706492b6c90e4e9dfcfed08c3f31c95eac537`  
		Last Modified: Tue, 15 May 2018 10:45:44 GMT  
		Size: 238.0 MB (238044801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2e80d049fe85c3b9fff222bfda1b007b4b5f67557895ee7f88d630283cb537`  
		Last Modified: Tue, 26 Jun 2018 09:05:19 GMT  
		Size: 75.9 MB (75875856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b1cf50448b5d3126b8bd9ff57086b5d3edbf7ae633600a0f8efec6a50ecbae`  
		Last Modified: Tue, 26 Jun 2018 09:05:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; 386

```console
$ docker pull gradle@sha256:058c0e8a013e462cede5e74597784b488ad066395008394ec0c48359f5f5aed9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.8 MB (468832352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f6dd9809a13f1770452f7ab8dd0ec5446791b8a3f901d5e628d60e3a499ef5`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:49 GMT
ADD file:cb21908d8f286f1381ea180209120314676afa1ce4d5d480e0310fe70a4c96d4 in / 
# Sat, 28 Apr 2018 10:40:49 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:38:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:17:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:17:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:17:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:22:12 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:22:12 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 13:22:12 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 06 Jun 2018 13:22:12 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 06 Jun 2018 13:24:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:24:17 GMT
CMD ["jshell"]
# Wed, 20 Jun 2018 11:12:00 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 11:12:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 10:46:34 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 10:46:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 10:46:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 10:46:42 GMT
USER [gradle]
# Tue, 26 Jun 2018 10:46:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 10:46:42 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 10:46:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:33fb16074d5de3f73c0e2941c01c03e5dc69cfb8f568b7fbc3e29926b575fef0`  
		Last Modified: Sat, 28 Apr 2018 10:47:25 GMT  
		Size: 49.1 MB (49090181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a686f4eb752c82ac41a17df9c6701b1f073f7a2d9e420555cd2a5cb0dcbbea8a`  
		Last Modified: Wed, 06 Jun 2018 12:14:55 GMT  
		Size: 7.2 MB (7182217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9c2ebf9e0747fb0a03a84261c3698af2618b3c2fb833bdee559337f846c39f`  
		Last Modified: Wed, 06 Jun 2018 12:14:53 GMT  
		Size: 10.7 MB (10657958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fde487e4c90bba22453b5178624bff1a2fa7bd6f0b83fb4d605b1f4198e932`  
		Last Modified: Wed, 06 Jun 2018 12:15:40 GMT  
		Size: 56.0 MB (55957246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc753c52779b4d5229b7f48908ad306e4cff4aff3c6b3cbb29cbd7de06a0c29`  
		Last Modified: Wed, 06 Jun 2018 13:39:40 GMT  
		Size: 902.9 KB (902867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779bb512bf82746866821a79e233f33fea211925f996d9fc3d7a48ef50841fd`  
		Last Modified: Wed, 06 Jun 2018 13:39:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bdab517a7dd05a6a815053bb8daa7d096e0fb4a15a5eab75c632ce4ccd17a6`  
		Last Modified: Wed, 06 Jun 2018 13:47:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda47556b65b7f444fe9f61737a8bd4346ab480681065ac35048b7545a6a89ef`  
		Last Modified: Wed, 06 Jun 2018 13:50:03 GMT  
		Size: 269.2 MB (269165533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e952ab693d7a218688dc1230de5c67e540c6944d4b057d90b56e31f283d63e2c`  
		Last Modified: Tue, 26 Jun 2018 11:07:17 GMT  
		Size: 75.9 MB (75875844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3ff183febecd80d395261a1b02e7403554788a7f12eddfa8863163cb1495eb`  
		Last Modified: Tue, 26 Jun 2018 11:07:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; ppc64le

```console
$ docker pull gradle@sha256:ded17f1d41294c65f3d8b5f271e85d5941d975eabc72c1d4694cd7b35c89e132
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.0 MB (443013424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:168a18762313c6d665095c346254afd8e862331ae4c1af702b3f2c5bfa04413c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:22 GMT
ADD file:2290834b1e0a2945693bb58e4627798b949f493e7041453e398114cbfba8d224 in / 
# Wed, 27 Jun 2018 08:19:24 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:08:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:08:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:08:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:12:59 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:13:00 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:13:03 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:13:05 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:24:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:24:06 GMT
CMD ["jshell"]
# Wed, 27 Jun 2018 19:07:35 GMT
CMD ["gradle"]
# Wed, 27 Jun 2018 19:07:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Jun 2018 19:07:36 GMT
ENV GRADLE_VERSION=4.8.1
# Wed, 27 Jun 2018 19:07:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Wed, 27 Jun 2018 19:07:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Jun 2018 19:07:52 GMT
USER [gradle]
# Wed, 27 Jun 2018 19:07:53 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Jun 2018 19:07:55 GMT
WORKDIR /home/gradle
# Wed, 27 Jun 2018 19:08:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b01a63a902832a614dcb8b935dd9404b1ae8932297cbba3e28949a6027626e87`  
		Last Modified: Wed, 27 Jun 2018 08:28:47 GMT  
		Size: 50.1 MB (50116795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cafec902fddf0414f78aeec5b7010de3851b5c2154d22465a9d16a11f5bdc57`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 6.9 MB (6874206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d7ffceef9b2678d017627071cd185ba2ab411812b48be8a3fdb04bdfd50a33`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 9.5 MB (9494113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca6c95e08f084bd97bd6207857494e04ed100bbdd7faae7c904c5ae6a9c42bf`  
		Last Modified: Wed, 27 Jun 2018 10:27:11 GMT  
		Size: 54.1 MB (54090982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155ba5d3b470fb9324bdfdfbf3b91b3b8234f8ad9aa6f503a97be86c3a0b4e68`  
		Last Modified: Wed, 27 Jun 2018 13:57:07 GMT  
		Size: 892.2 KB (892214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4e52f908c91b7e3dc7519eec7e7a965e9f4639ea41e23ad37732e0aa3511bc`  
		Last Modified: Wed, 27 Jun 2018 13:57:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75db535c498b18ac26023915e607a2ce0ea7342dee6589ef218313fd8c547db`  
		Last Modified: Wed, 27 Jun 2018 13:57:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ef40756802d21c597db7ea1fa51eda14409db6ee300ea3269302023d8e4708`  
		Last Modified: Wed, 27 Jun 2018 13:58:15 GMT  
		Size: 245.7 MB (245668536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a69107c0d770e0d1def86f88e7779db76fe9f9836274e5c254303e34a5fdc1b`  
		Last Modified: Wed, 27 Jun 2018 19:12:21 GMT  
		Size: 75.9 MB (75875969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42adac5e2e547834bf2120da2c87c9992d316be5f1c0ecff7eb240c833ef6f3`  
		Last Modified: Wed, 27 Jun 2018 19:12:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk10` - linux; s390x

```console
$ docker pull gradle@sha256:43ee5b5e6b36ad1f60cf94678afc2947872469f9802b5e2db42d95e208bc85d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.6 MB (411560693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538141a8a1d4079b3263186f8801c91cbaac404114e689f024a35943a438dc76`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 27 Jun 2018 11:47:48 GMT
ADD file:e5fdd44acf3c50e200fa8721ef36ce18dcde4c041d59482bff0f2fcd7ff32082 in / 
# Wed, 27 Jun 2018 11:47:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:18:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:19:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:49:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:49:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:51:31 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:51:32 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:52:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:52:48 GMT
CMD ["jshell"]
# Wed, 27 Jun 2018 17:20:54 GMT
CMD ["gradle"]
# Wed, 27 Jun 2018 17:20:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 27 Jun 2018 17:20:55 GMT
ENV GRADLE_VERSION=4.8.1
# Wed, 27 Jun 2018 17:20:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Wed, 27 Jun 2018 17:20:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 27 Jun 2018 17:21:00 GMT
USER [gradle]
# Wed, 27 Jun 2018 17:21:00 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 27 Jun 2018 17:21:01 GMT
WORKDIR /home/gradle
# Wed, 27 Jun 2018 17:21:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:80e8bd77eaf2fb43b1f457021472f2481479fee109d88246d06d3fdf6743f24f`  
		Last Modified: Wed, 27 Jun 2018 11:52:08 GMT  
		Size: 47.6 MB (47624129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7d7034306ce1638f02d455b492c16264ae4ddcc59326d23eb8d825dc058dd2`  
		Last Modified: Wed, 27 Jun 2018 12:24:06 GMT  
		Size: 6.8 MB (6762215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea8ed63ea6a254d75d360e4f11bac40c8208127ce5493ac2c599e4e5b4b7a0c`  
		Last Modified: Wed, 27 Jun 2018 12:24:06 GMT  
		Size: 9.2 MB (9182247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f694915af45389dcad33e203ba61c5460e43d788c6a76e14ffa252bf927300`  
		Last Modified: Wed, 27 Jun 2018 12:24:25 GMT  
		Size: 50.8 MB (50771059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845618b03e5f8d517909cc1ece764d824b0a86e08f983be8563d392e550fe3c3`  
		Last Modified: Wed, 27 Jun 2018 14:00:38 GMT  
		Size: 908.0 KB (908042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c2f5bc11a98334862a3062b750dcc08b48d25fa6fc72cae70fe71c479f8fca`  
		Last Modified: Wed, 27 Jun 2018 14:00:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05bf91b00622dd513ac12a5d9115beb3a6a8cd03a0df6c2b357dc1dcfc28d09`  
		Last Modified: Wed, 27 Jun 2018 14:00:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3faefd583a1fbec1894dd317b9ff519d1be74032744bf78eda1a8915798905d`  
		Last Modified: Wed, 27 Jun 2018 14:01:10 GMT  
		Size: 220.4 MB (220436669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1064b6f250dedea79f4948b10d743c5a592aa21a679df03b254a8b2d39dc1188`  
		Last Modified: Wed, 27 Jun 2018 17:23:45 GMT  
		Size: 75.9 MB (75875756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5f84c6a53e778e9a413907ae261db9f506e331dad43a1a73ec1a75bcfd2051`  
		Last Modified: Wed, 27 Jun 2018 17:23:25 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
