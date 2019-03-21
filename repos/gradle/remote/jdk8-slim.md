## `gradle:jdk8-slim`

```console
$ docker pull gradle@sha256:71d30201876243c99f312e2803af31b7c2293dff39415e5748d2e5220505aba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk8-slim` - linux; amd64

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
