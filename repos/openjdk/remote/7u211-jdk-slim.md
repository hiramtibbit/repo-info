## `openjdk:7u211-jdk-slim`

```console
$ docker pull openjdk@sha256:fa93c5983ec374c189df8d567cded8a579e9dbb23769ff02d70f87dd9689b4e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7u211-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:770301b6033102be9c63362024ea309d73c34560fe7796357c09a44d506f1746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115908449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e973e748dedba85b7262e5483d2c0458d0a48e409f93958a605a6a4abe4d7e7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:55:37 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:55:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:55:40 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:55:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:33:29 GMT
ENV JAVA_VERSION=7u211
# Wed, 27 Mar 2019 23:33:29 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 27 Mar 2019 23:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edd645c00d35e53c38bc96fb6f6cf80634b42d9f60c1d1ee17a802e8b8c0df8`  
		Last Modified: Wed, 27 Mar 2019 01:09:59 GMT  
		Size: 463.8 KB (463796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f0e3de735d46f7f989a70581fdde01a547c1668a8ff9e44b0f7b307e230844`  
		Last Modified: Wed, 27 Mar 2019 01:09:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae22bc8cb03d5cecd7e80eb9662861bd11336f6d1777c3db0a1f271c5a8ff717`  
		Last Modified: Wed, 27 Mar 2019 01:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ac7c26f1a6e4d2411da2dc1171e339a0cd7fcb20ea1966fb3fc9f2a3ce79fb`  
		Last Modified: Wed, 27 Mar 2019 23:48:25 GMT  
		Size: 85.3 MB (85289693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
