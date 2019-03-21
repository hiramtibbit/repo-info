## `gradle:slim`

```console
$ docker pull gradle@sha256:9ecdbc1a1b1e4435428ef9ffba2fca2a105405bbe79e353af6d093963b693a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `gradle:slim` - linux; amd64

```console
$ docker pull gradle@sha256:826434b8690387be377777d7e6023d07f9cc994f47d33f3e8352363de799efa7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178784921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970d3b934e67aef50357a598f51466778e51576509bdd4bf5f35d2553600563d`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:17 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:18 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:04:19 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:19 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 13:18:10 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 13:18:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 20 Mar 2019 22:51:57 GMT
ENV GRADLE_VERSION=5.3
# Wed, 20 Mar 2019 22:52:05 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Wed, 20 Mar 2019 22:52:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Wed, 20 Mar 2019 22:52:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 20 Mar 2019 22:52:11 GMT
USER gradle
# Wed, 20 Mar 2019 22:52:11 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 20 Mar 2019 22:52:11 GMT
WORKDIR /home/gradle
# Wed, 20 Mar 2019 22:52:14 GMT
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
	-	`sha256:b235bdb95dc99038adcc0ea3e3d78e781356c9a1d133a19da70120af738ccaaa`  
		Last Modified: Tue, 05 Mar 2019 04:27:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9ecf5ba38f4bf4157f41b104010963118089027eef2062a1faa0b846b2c857`  
		Last Modified: Tue, 05 Mar 2019 04:27:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cf7535df66405ffc237795633b423682249444c5718b4b09a9a76a8dee0065`  
		Last Modified: Tue, 05 Mar 2019 04:27:20 GMT  
		Size: 67.5 MB (67507932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dac5680d8a1d3e0d43949f0558758a1359d692763003320254012740ea4f50f`  
		Last Modified: Wed, 20 Mar 2019 22:55:41 GMT  
		Size: 1.1 MB (1098922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc5bd7a3d21d539bb848d467fd38c3b3ae5f8fcae54eaa5f7ed5907df85b7be`  
		Last Modified: Wed, 20 Mar 2019 22:55:49 GMT  
		Size: 87.2 MB (87226628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7ad40407ba4a35257a12e0c48dc416d484de36bdf199de87b65eef1cf82264`  
		Last Modified: Wed, 20 Mar 2019 22:55:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; arm variant v5

```console
$ docker pull gradle@sha256:559e584b4b916ab4d898409067dc66921dfc9762ff46675254f46ba24f53b2fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165827285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c622f6d63e41c10da38851898dd487728cb4faa8a19704c61d6a1ab2eab33570`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:14:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:22:47 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:22:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:22:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:22:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:22:51 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 11:22:51 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 11:23:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 15:21:13 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 15:21:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 08:49:01 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 08:49:13 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 08:49:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 08:49:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 08:49:22 GMT
USER gradle
# Thu, 21 Mar 2019 08:49:22 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 08:49:23 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 08:49:26 GMT
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
	-	`sha256:1e57c035ee45742ebdc446484629b8e05f62d7eb674625d49f489106e4dc9d1e`  
		Last Modified: Tue, 05 Mar 2019 11:41:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20859a20ce50308496c2a1f9b7b4baa6577b286a104cfbb610af793a2800f5e7`  
		Last Modified: Tue, 05 Mar 2019 11:41:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428bfb50cc3112583610e19ec3db6335e5c5cb5cc6c1535184967025ae74f486`  
		Last Modified: Tue, 05 Mar 2019 11:41:46 GMT  
		Size: 55.9 MB (55930578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284f4775f382ba9e5978a35d2fcbf627b1020f95698763ed360109986de65686`  
		Last Modified: Thu, 21 Mar 2019 08:53:07 GMT  
		Size: 1.1 MB (1060966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6f9a345df4a4f1b2dd1f0a832ade1716b2da9ae8d625a4f3c0102fcd2707dc`  
		Last Modified: Thu, 21 Mar 2019 08:53:19 GMT  
		Size: 87.2 MB (87226883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6eebe12b140ef5bbfe62a347036cf2520abab4efe818e8d338f40ccbbf3b03`  
		Last Modified: Thu, 21 Mar 2019 08:53:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0bb0c0409f06a15c9db94ac0ffdbbe8f05edf66cb57b5bcc2f53c89f6218fab3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166420746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce986901c7cb439da142746a45c6434b0609fdbdf61346dfa7b230fa5727108`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:18:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:18:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:18:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:18:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:18:40 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:18:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:20:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:55:47 GMT
CMD ["gradle"]
# Thu, 07 Feb 2019 06:55:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 09:34:53 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 09:35:10 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 09:35:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 09:35:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 09:35:23 GMT
USER gradle
# Thu, 21 Mar 2019 09:35:24 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 09:35:25 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 09:35:31 GMT
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
	-	`sha256:af475183dd776a3bc6f1848588e7bed68865d8ed0a3b9d7443228cabd1a92cf3`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efcd9790a6dbfb5bc228474fdafa0870db0d257c606550c02ec06fee85650f2`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe266144f6e27bd5f2c238c2345fa03258299af48b867b9b334328734f02f15`  
		Last Modified: Wed, 06 Feb 2019 12:42:20 GMT  
		Size: 57.3 MB (57347794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e76d426ef8299d93af1e6f386b86205bbc67f8a5abe6494df8506f7e265cb0a`  
		Last Modified: Thu, 21 Mar 2019 09:42:28 GMT  
		Size: 1.1 MB (1054739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47467c231b34474611eaa393cf64f7148c014a39afec5252ffe3a66b05a9c87b`  
		Last Modified: Thu, 21 Mar 2019 09:42:41 GMT  
		Size: 87.2 MB (87226651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06588e886d096f9fcfb1afb3af972f410519fa24e2292eab5822d5dc08caa9`  
		Last Modified: Thu, 21 Mar 2019 09:42:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; 386

```console
$ docker pull gradle@sha256:93be85e9f12fc6ae5eacbe5a853489b5257a8bbf7613fb13282a582246961ff9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178667082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3e636de0ad0c1dff75bb883ddc0a86d776ec9ba336438b7f757ce2b47f9c6a`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:04:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:06:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 17:06:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 17:06:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 17:06:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 17:06:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 17:06:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 17:06:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Mar 2019 00:24:11 GMT
CMD ["gradle"]
# Wed, 06 Mar 2019 00:24:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 11:39:23 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 11:39:28 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 11:39:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 11:39:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 11:39:33 GMT
USER gradle
# Thu, 21 Mar 2019 11:39:33 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 11:39:34 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 11:39:35 GMT
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
	-	`sha256:77eb7233c56af916b52013392131c40f4af7d65425eb931c52b7024ab25339a1`  
		Last Modified: Tue, 05 Mar 2019 17:19:29 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01218695064ac9b69b96ca92a9a8419c94b861dd26e34218ef938ef0163ac2d4`  
		Last Modified: Tue, 05 Mar 2019 17:19:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115ef034b2197cc19a779b27389d369874b010e6f8de26811934c3692bd71155`  
		Last Modified: Tue, 05 Mar 2019 17:19:42 GMT  
		Size: 66.7 MB (66729993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f0b1470321e8bb5d5a1bc9dd5b41c3a211ead8bf7b9f96d3be4ec3679037ec`  
		Last Modified: Thu, 21 Mar 2019 11:42:03 GMT  
		Size: 1.1 MB (1120704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41f5b046fb2c8b623880f8fd8ed04f7ee98bef0b6e962fcc7f1b3f4f32d9a6`  
		Last Modified: Thu, 21 Mar 2019 11:42:10 GMT  
		Size: 87.2 MB (87226646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb4735bfb74177fdb1c594416291534617c59b407245bc9384d912cd381e11e`  
		Last Modified: Thu, 21 Mar 2019 11:42:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:slim` - linux; ppc64le

```console
$ docker pull gradle@sha256:740eb6b23b0687d5b0615d636e348ced197a4b6bc29424f08013f881763b9e40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169378424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c01077e2a25c7efb39fcb2fe7beabee1a299f7d57d6bf597eec7c8fb7a1bb414`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:47:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:02:09 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:02:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:02:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:02:49 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 15:03:02 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 15:03:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 15:06:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 20:41:36 GMT
CMD ["gradle"]
# Tue, 05 Mar 2019 20:41:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Mar 2019 08:38:21 GMT
ENV GRADLE_VERSION=5.3
# Thu, 21 Mar 2019 08:38:47 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 08:38:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
# Thu, 21 Mar 2019 08:39:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bed2bdd3955be5a09ca7e0201e9d131f194f7f6c466e1795a733733ccfb09f25
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Mar 2019 08:39:11 GMT
USER gradle
# Thu, 21 Mar 2019 08:39:15 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Mar 2019 08:39:19 GMT
WORKDIR /home/gradle
# Thu, 21 Mar 2019 08:39:30 GMT
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
	-	`sha256:0cf2b802166768f82b3230127b77208c4a2a12d1f7038f5f1b90d7001106645a`  
		Last Modified: Tue, 05 Mar 2019 15:25:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87c409c9faa8eb3d271bc78e9e9c82f4d195d6f7eff604f6813d0844468f324`  
		Last Modified: Tue, 05 Mar 2019 15:25:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6689e2ad2c247a8863939311bf0307d9031c741ad8967192a7b8a6ba47eff056`  
		Last Modified: Tue, 05 Mar 2019 15:25:35 GMT  
		Size: 57.9 MB (57865582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7d532944ebf5f0b9754621c345b19da8e65101296d95946ff6c5d49e4412ff`  
		Last Modified: Thu, 21 Mar 2019 08:51:38 GMT  
		Size: 1.1 MB (1084033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3038cc4ebe064c6711a0f66718c6867f11ea35c379ee12077b66b4d6c1bbbf7e`  
		Last Modified: Thu, 21 Mar 2019 08:52:03 GMT  
		Size: 87.2 MB (87226924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94731d5b0927d3e980165ba23b73ad0731f6565c286352a65bd240007bd5992c`  
		Last Modified: Thu, 21 Mar 2019 08:51:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
