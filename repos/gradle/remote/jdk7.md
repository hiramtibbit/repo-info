## `gradle:jdk7`

```console
$ docker pull gradle@sha256:aef279d068383ac2b02bee03ca6182dfa2e38c9295389db9641c80a156589842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:958792c87946812a06f0520196d16ee3c8669a8a51f6f96dc3c5aaafa0523f42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290045715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e743c5c8905cbdaf195e8ab941b8960dfd0fd4c22d43a46e2779266b722bb71`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:06:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:21:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:21:31 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:21:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:21:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:21:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:21:33 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:21:34 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:22:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:26:02 GMT
CMD ["gradle"]
# Tue, 17 Jul 2018 16:26:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 23:19:38 GMT
ENV GRADLE_VERSION=4.9
# Tue, 17 Jul 2018 23:19:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Tue, 17 Jul 2018 23:19:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 23:19:44 GMT
USER [gradle]
# Tue, 17 Jul 2018 23:19:45 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 23:19:45 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 23:19:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebaeb0745895220f609d4aa703e4563c39de239a2d00b85bece23a3ca3ac735`  
		Last Modified: Tue, 17 Jul 2018 03:48:27 GMT  
		Size: 43.3 MB (43297880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba483765e5a5940bdbe52f7a5b5e591842365f723606f5121ba1f900b42efa13`  
		Last Modified: Tue, 17 Jul 2018 07:10:16 GMT  
		Size: 828.2 KB (828239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fdf2277bd55505d828f7765ec2f4e8f24183129636afeaa5b3389d7008ae99`  
		Last Modified: Tue, 17 Jul 2018 07:10:16 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a778f99270e0adcb63e2696dcc5cda72de4c88878d0765c9d5232fc1aeece07e`  
		Last Modified: Tue, 17 Jul 2018 07:10:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0884f4286e6c07cd530102e34f90e200e8a496296e8b11453cc1af93432b4dfb`  
		Last Modified: Tue, 17 Jul 2018 07:10:38 GMT  
		Size: 97.8 MB (97805729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd60058c5af6e37945e8ca466a409233dd527ca6223a436519578b6fd970f51`  
		Last Modified: Tue, 17 Jul 2018 23:34:45 GMT  
		Size: 76.3 MB (76323150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e563f1fa0cb54b1efc913bd35b2b8290c79f6845ee6f133a1b8a887af8ad86`  
		Last Modified: Tue, 17 Jul 2018 23:34:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
