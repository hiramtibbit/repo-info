## `gradle:jre-slim`

```console
$ docker pull gradle@sha256:f55d19d731f2d7287f5feff3c6fe3a746ce9b02aecb7fb7bae6c68022a914473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre-slim` - linux; amd64

```console
$ docker pull gradle@sha256:b1825ebed807cefb853b1a403ad1f16d90fb553c19ffe861d81cbe53747132f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167033204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95eb6651e72156baa7faf7d9fccd22d4d71b95d68ba80e7b0734539feef73417`
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
# Sat, 27 Apr 2019 00:26:14 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 27 Apr 2019 00:26:18 GMT
RUN apt-get update &&     apt-get install --yes --no-install-recommends         unzip         wget &&     rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:26:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 27 Apr 2019 00:26:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 27 Apr 2019 00:26:23 GMT
USER gradle
# Sat, 27 Apr 2019 00:26:23 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 27 Apr 2019 00:26:24 GMT
WORKDIR /home/gradle
# Sat, 27 Apr 2019 00:26:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
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
	-	`sha256:3256ec407539c9a0add292b0671b50ca053b81fbe41c5bbd366ea73eb9dfd64b`  
		Last Modified: Sat, 27 Apr 2019 00:29:59 GMT  
		Size: 1.1 MB (1097960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d43bc3aea998fe992ec6d39f78b950f068bd34a707d6578995e06f73722b0d`  
		Last Modified: Sat, 27 Apr 2019 00:30:10 GMT  
		Size: 87.1 MB (87097820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b607a79aa011f4aa47e1999a3fafd09740f704395c5413b94951714d63d7c3a`  
		Last Modified: Sat, 27 Apr 2019 00:29:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
