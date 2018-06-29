## `gradle:jre10-slim`

```console
$ docker pull gradle@sha256:f790ac9830fe70fcb6890ee47348e1d96fa34d213741b309089801c70f20ab70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre10-slim` - linux; amd64

```console
$ docker pull gradle@sha256:7f02551b11993c2563d910c18513d6d528b8ecf798ee4c3e0345129523916200
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179396057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21dd551a0dec5a6b8219420843eb7094188875a4c415fba847ac81d4a8232588`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:47 GMT
ADD file:f6f1518ff68043ed3ca8bae9ce07dcc969ae13bbdbfa6de70c869a9082f53e3c in / 
# Tue, 26 Jun 2018 21:23:47 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:19:36 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:19:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 26 Jun 2018 23:26:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 29 Jun 2018 22:30:45 GMT
CMD ["gradle"]
# Fri, 29 Jun 2018 22:30:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 29 Jun 2018 22:30:46 GMT
ENV GRADLE_VERSION=4.8.1
# Fri, 29 Jun 2018 22:30:54 GMT
RUN apt-get update && 	apt-get install -y --no-install-recommends 		unzip 		wget && 	rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 22:30:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Fri, 29 Jun 2018 22:30:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 29 Jun 2018 22:30:59 GMT
USER [gradle]
# Fri, 29 Jun 2018 22:30:59 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 29 Jun 2018 22:31:00 GMT
WORKDIR /home/gradle
# Fri, 29 Jun 2018 22:31:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:469c03946d59bad3e2f921c73851b892468df0e7358d603dc6cf4cf3754df71d`  
		Last Modified: Tue, 26 Jun 2018 21:34:51 GMT  
		Size: 26.1 MB (26124512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071a53fca24b6a916b853d0e5fc165853317f150c46e8cb23f78f07cbd910cd`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 460.1 KB (460064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abfd2a20a1c0b8700b067a71251d414d178315c2de46c9f6d0c0a85d105c810`  
		Last Modified: Tue, 26 Jun 2018 23:42:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8f3a2da32f1fc8ee5d2a6df817b518c352401ee994eea942cf004321390480`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2712b07288b4694086f2d5ba1b5eba8f06ebdce40a86cbab252721ac8209912d`  
		Last Modified: Tue, 26 Jun 2018 23:47:36 GMT  
		Size: 76.4 MB (76354261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb309fca1c5069e8f9940e3b67650af1ca6bdd185c3a483018b62cc22627e91`  
		Last Modified: Fri, 29 Jun 2018 22:51:55 GMT  
		Size: 581.1 KB (581137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558ac2449858b4c85a39695968aae6c5ad37a3d130852b1fc047dc23eb4ec529`  
		Last Modified: Fri, 29 Jun 2018 22:52:05 GMT  
		Size: 75.9 MB (75875578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0501210eeb1114c1bdb68eb878d832b6d086a303700602f7e86139111bb72e`  
		Last Modified: Fri, 29 Jun 2018 22:51:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
