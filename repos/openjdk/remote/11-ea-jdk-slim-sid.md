## `openjdk:11-ea-jdk-slim-sid`

```console
$ docker pull openjdk@sha256:9031d9c050c373bee050d03ba993ba7a73f42e0066c2d2f4d8cb6215b82f3e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `openjdk:11-ea-jdk-slim-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:0eaeb4428fd47f3f2eb6bb4a343f5e8f26ccc72a15de985c9d8d7e10fc900b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174615108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1452fddd0a33027cdb14be14493212c7ac7245c31880db32b3f05a6d843cb72a`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 00:25:12 GMT
ADD file:f91110c5482cb29a759356df06fea755606755e05306ca55f921f44a5b9470fb in / 
# Tue, 17 Jul 2018 00:25:12 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:09:54 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:09:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:09:55 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:09:56 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:09:56 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 06:09:56 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 06:10:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:10:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:21c77be511c9830e11f7da7f8796340d6103e5b1e4124bb1639947aa0f11c19e`  
		Last Modified: Tue, 17 Jul 2018 00:40:27 GMT  
		Size: 26.2 MB (26153708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a9bc4c131a474462e235e575844d60055d3904745b1cd7e9bcb0bbd1ed82b7`  
		Last Modified: Tue, 17 Jul 2018 06:33:28 GMT  
		Size: 460.1 KB (460144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85403034af41f2da36b479c531eb04f843b0af4715e65ee84a91e1fbb5f1bf9`  
		Last Modified: Tue, 17 Jul 2018 06:33:27 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd5e0c34299187bbde044e4b8e5f7de695a016f6b69d6794a3ea6142e320d1a`  
		Last Modified: Tue, 17 Jul 2018 06:33:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f443b9879f3b1bcc595960b857bf6b84f7c48bfb9d96a3fd1660ae515ccdc1`  
		Last Modified: Tue, 17 Jul 2018 06:33:58 GMT  
		Size: 148.0 MB (148000888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jdk-slim-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c0d8a778b8e2a732aa9d6ba795abab6a4a5d4e838366c743e07d24dac02192b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162445745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5b3f3b75f4ab20b15c816734a57be4aaf761830605c0c2f6daa4b9f19f5e0a`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 08:44:27 GMT
ADD file:7441783fb02cfd0ec33462b944c21331e3ad1da6f38a9c835f677cb88c6dd7ec in / 
# Tue, 17 Jul 2018 08:44:33 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:56:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:56:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:57:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:57:03 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:57:04 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 09:57:05 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 09:57:06 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 09:58:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 09:58:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:458ba916572f94d66f19aa3ff0115bc9864ed4d91c67787dcfcbb4b00bfbdb97`  
		Last Modified: Tue, 17 Jul 2018 08:53:47 GMT  
		Size: 23.5 MB (23468736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e2b81cd49e56ea3c4cae916184f441c675aa527aa693a54010d266d76746f7`  
		Last Modified: Tue, 17 Jul 2018 10:23:50 GMT  
		Size: 445.0 KB (445018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a478f77447653d89e7bb16b1270e51445b598b0c48ed8f7046fcc124bae1ae83`  
		Last Modified: Tue, 17 Jul 2018 10:23:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9f58532813326e8baa3cbeec0ebfb917decee942701852fd3967c2502cc4a`  
		Last Modified: Tue, 17 Jul 2018 10:23:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03817db3db7f7c297a1e210d2c11d8839c83738190549ef658efbe7e2e56c553`  
		Last Modified: Tue, 17 Jul 2018 10:24:21 GMT  
		Size: 138.5 MB (138531623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jdk-slim-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:9ca7f73a3a3d3b072b55a47b6056ff32183d0fc949f86e3db3824b429bda4a2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158129591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f893e80770118d1aafa6464e7746db5f0b49464388ed3d5ead0c60c2399566`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:51 GMT
ADD file:2854a5536a6cd3d364473dbde290890875599447fe57e02214642a7ea4c4199a in / 
# Tue, 17 Jul 2018 08:18:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:49:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:49:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 08:49:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 08:49:39 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 08:49:40 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 08:49:41 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 08:51:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 08:51:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c0079deb5131e41ff48e218a11dc6d4aaf2ee6f48d4674431d4da149f01bd944`  
		Last Modified: Tue, 17 Jul 2018 08:24:11 GMT  
		Size: 27.4 MB (27423639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf7a34d4ae23534bc74ed18c6c3b2d4528589acd4a6c4ed1172442e070315e5`  
		Last Modified: Tue, 17 Jul 2018 09:43:03 GMT  
		Size: 454.8 KB (454843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2189ec7f1e039011f776c44f0becd3e5065e0a06e25dca83d56e0698d7c16fdc`  
		Last Modified: Tue, 17 Jul 2018 09:43:02 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a24d44be9692f4c723c652f3ab74ad80496ecfa0a51aecc2f812334ba67821`  
		Last Modified: Tue, 17 Jul 2018 09:43:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f445e341aeacf373137ba793aeeed6cab56e6278beec9b927e2f93b69c1901c`  
		Last Modified: Tue, 17 Jul 2018 09:43:46 GMT  
		Size: 130.3 MB (130250740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
