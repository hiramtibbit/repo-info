## `openjdk:10-ea-jre-slim-experimental`

```console
$ docker pull openjdk@sha256:3435155d4dd0cf59d97425a5b4ad9b582ba2a92c05bdaac3dd3c0fe68a3b1719
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

### `openjdk:10-ea-jre-slim-experimental` - linux; amd64

```console
$ docker pull openjdk@sha256:9a4d1d93410ca712d9c02b7e53b80ce942857c743f78af6731f59c85344f5620
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102939548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20c0b89753cd0737968a3ab3dba061fd63d58ed5d77f6036144cdad8725ff7c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:43 GMT
ADD file:abc56f5a5510633481f0de7469b312f4f4cdcfbbe92bf1d7bddb5d716a2a5820 in / 
# Tue, 13 Mar 2018 22:21:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:56:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:56:18 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 09:56:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 09:56:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 09:56:20 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 09:56:20 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:40:29 GMT
ENV JAVA_VERSION=10-ea+46
# Wed, 04 Apr 2018 18:48:12 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Wed, 04 Apr 2018 18:48:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8d602e635a7063b254ddcd64997153b2e8f74c29ff4648089ae116a4ca3ea8e3`  
		Last Modified: Tue, 13 Mar 2018 22:50:19 GMT  
		Size: 25.7 MB (25713113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b0cb5bfff7921055b3160e463c0cbbd0da8804c54c0e81870e32789de17696`  
		Last Modified: Wed, 14 Mar 2018 11:50:29 GMT  
		Size: 460.3 KB (460326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26ada49ec06a1dec9a075d442391f0ce99d1ec64a76e6c0fb0c8bd1e60da7eb`  
		Last Modified: Wed, 14 Mar 2018 11:50:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31d298f44c943806253bc4fc8d46cb0d7ef576db265d0c8d84c3343f5ea5f16`  
		Last Modified: Wed, 14 Mar 2018 11:50:29 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2866b060e948cf97801eae50f99d28f677cf48e9ce68e76acecf9c9c06e8f8`  
		Last Modified: Wed, 14 Mar 2018 11:50:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29717ec1ace191a4e9ec16f4adbf44d727d6ee97beae5f4d1ed38d428516a6b`  
		Last Modified: Wed, 04 Apr 2018 20:21:07 GMT  
		Size: 76.8 MB (76765520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:2545e29456b8d89dba3dd932e954f9ba1bf96906a4d60c940546c61499dafa71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85784636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6a5952bfb015237156868e89d94272570643f56d6627268fe6820de2d92537`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:59:20 GMT
ADD file:b829fe1b85a76eaae255627baf7572a89310e31a86d94c40353cdf5184a08296 in / 
# Wed, 14 Mar 2018 19:59:21 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:37:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:37:39 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 22:37:39 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:37:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:37:41 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:37:41 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 08:06:12 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 06 Apr 2018 18:00:29 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:01:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1df428c58793052c39aa67c5a0cfc437c4f5e97e12915970ffa3b5a637915c81`  
		Last Modified: Wed, 14 Mar 2018 20:10:52 GMT  
		Size: 23.7 MB (23719570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea34fa7879bc512ea22a1ff5fd2caeccec4a4a30a175ae662a07c22e57532a`  
		Last Modified: Wed, 14 Mar 2018 23:01:39 GMT  
		Size: 453.8 KB (453792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776bfc1a4d82edc51af7414f4ba86c5a55a2fea41d0435b1156d0a45f9314cdf`  
		Last Modified: Fri, 16 Mar 2018 08:13:23 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd4eae367488fd6282f6411d1881f884a7bdd5a8edeb8e726a29ea5a1f26c69`  
		Last Modified: Fri, 16 Mar 2018 08:13:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909d8cb63b9fa000d247c5f22cb48d46f6d4a11c4076742a3ce5538816b9706f`  
		Last Modified: Fri, 16 Mar 2018 08:13:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4862c311c4e0960c917604c3948cea2f34e2b4f2b6e46bf04d6e1a721855074c`  
		Last Modified: Fri, 06 Apr 2018 18:12:25 GMT  
		Size: 61.6 MB (61610684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:04039ef91a6e15632396752d9833c58cb37c388d2a84d187ebd1e545f979a024
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85710479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5e8fbb7c37cd059204569a37d7cca6da6653f90992e72fb228ca133ffdbe7f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:30:51 GMT
ADD file:01a57c20f154d841f3d0067187339035634947891cdd63b93cf26c052ccec8a9 in / 
# Wed, 14 Mar 2018 12:30:52 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:49:47 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 13:49:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:49:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 13:49:51 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 13:49:53 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 01:25:43 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 06 Apr 2018 18:00:02 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:00:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:eb4d24f57aa2e9887d736ab5ae837254043a7420798488e113011250c3d45c6b`  
		Last Modified: Wed, 14 Mar 2018 12:42:40 GMT  
		Size: 21.7 MB (21736182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6632e794ba04784b0b45265566f4f18a26d40bdfdd4aa6726c2df55600f62e`  
		Last Modified: Wed, 14 Mar 2018 14:18:56 GMT  
		Size: 436.4 KB (436377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26c0e249a49e408893c222a4071e831d9959c016bda599d2e774b78084f3574`  
		Last Modified: Wed, 14 Mar 2018 14:18:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9b299374d7501067c56288dda6111b30b796922317319edfddd816199e278`  
		Last Modified: Wed, 14 Mar 2018 14:18:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4132579df0f58e592491642768b2a8efbc4f35d457c56866659e56e8134a203`  
		Last Modified: Wed, 14 Mar 2018 14:18:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29850e7168ab9279acbf41a555c828e05b7521cf7194dfbfbba20afbbea1e93a`  
		Last Modified: Fri, 06 Apr 2018 18:12:54 GMT  
		Size: 63.5 MB (63537326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7b1643d28ef14acbf4dd1a0b9aa8f85c0ac9b9b862f7c4462d2a4791681ead2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88604219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c793e57c1735e5dfbd22e8a68969c8da0b76960e272790575f2e40290ded7a54`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:28:31 GMT
ADD file:e02f4f3766155e52cc84a63120d6a2789b8ecbc9d3d5311e6fde66f676f7bb09 in / 
# Wed, 14 Mar 2018 17:28:32 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:56:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:56:11 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 19:56:12 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 19:56:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 19:56:17 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 19:56:32 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 10:50:51 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 06 Apr 2018 18:07:28 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:09:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:793dde53d6e905ab81ddaae8c8ff711e51c5782e6ff5c8065a2f2017b116e00c`  
		Last Modified: Wed, 14 Mar 2018 17:43:12 GMT  
		Size: 23.1 MB (23087383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd912422d8771b9bce422bc6af0c49132976576aa3834e0baccfc7c50ebd2ef9`  
		Last Modified: Wed, 14 Mar 2018 21:04:08 GMT  
		Size: 445.1 KB (445107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e11e8b0ffa30a0ca891271ff40cdafa4e61dccc84daf31298279540c94ba10`  
		Last Modified: Wed, 14 Mar 2018 21:04:08 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c249deefae88505d177a444f9addf4d020a3196cf9043bc3fc914c35ae7daf53`  
		Last Modified: Wed, 14 Mar 2018 21:04:08 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64d58067f6bff6c9a88c62ca85c97f15c56346c6da6792451711cbc71988f2a`  
		Last Modified: Wed, 14 Mar 2018 21:04:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72cc115db7e1454db8416f765e24d5e0e9b0d62b4176529cfd5e73c9c0d4718b`  
		Last Modified: Fri, 06 Apr 2018 19:05:55 GMT  
		Size: 65.1 MB (65071137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; 386

```console
$ docker pull openjdk@sha256:f184a2d4e2d0c0ed84c79a5cf598c31881dc58766990b0d1fe94439dd3bb1618
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108128344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e94574730924ad38f3c3521a08b3d2b2140c34f167816600d63337b8755447`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:31:00 GMT
ADD file:d1c19ab632aa3b287544e9da0740ffc15f79bb20b8c85b2a152d294a61a3aff4 in / 
# Tue, 27 Mar 2018 15:31:00 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:47:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:47:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Sat, 14 Apr 2018 02:47:09 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:47:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:47:10 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:47:10 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:47:10 GMT
ENV JAVA_VERSION=10-ea+46
# Sat, 14 Apr 2018 02:47:11 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Sat, 14 Apr 2018 02:47:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:bfa9140a49a214e9eec99cc78f98d2b195eb9bcaff910fee3ae80f19dcd425b4`  
		Last Modified: Thu, 15 Mar 2018 01:13:45 GMT  
		Size: 26.4 MB (26401611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71818a32b1cd6739ae5ab427d699dae5ea7139c618d7360dc08e3febf6a7c4c`  
		Last Modified: Sat, 14 Apr 2018 03:09:51 GMT  
		Size: 468.9 KB (468935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a35f450ff491708be9b905d67d313e0f8857a2d57e53c22cf8feadc8aa7da00`  
		Last Modified: Sat, 14 Apr 2018 03:09:51 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90d9cc100b7316396b5b586b5935db505d88a7229b1960174beb8c0db9ee768`  
		Last Modified: Sat, 14 Apr 2018 03:09:51 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0c19dd2d9b7886dc25e8bccb9833d3841d244400f42de819aa89083144280a`  
		Last Modified: Sat, 14 Apr 2018 03:09:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b180b62750f2d6c92535de05d7984ec99afb19d75b4c601d593a1ba4f1437ce`  
		Last Modified: Sat, 14 Apr 2018 03:10:11 GMT  
		Size: 81.3 MB (81257209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; ppc64le

```console
$ docker pull openjdk@sha256:4d87f06e6bee8bdc0107ceb6f41735d29931a65d72303d40cd74d72ba8864a53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93741520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2f398ada1ffca3953670c0f3e150ce38e9a47541323661d05841af94f81824`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:55 GMT
ADD file:e890898916a686430a0d7cea9f16c3859f35938952b26ba20163570f64ab383c in / 
# Wed, 14 Mar 2018 00:33:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:03:37 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Mar 2018 04:03:39 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:03:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:03:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:03:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 10:49:03 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 06 Apr 2018 18:09:55 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:14:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b3949de4c16b03531582180df6c78e53e16851fa35f1a3ab12ac83a511cae577`  
		Last Modified: Wed, 14 Mar 2018 00:41:23 GMT  
		Size: 26.9 MB (26942453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecfa491131fe3c43d09dfae52d8bf81576df7e7c5fa65cc8ca02dd14a07330c`  
		Last Modified: Thu, 15 Mar 2018 06:00:01 GMT  
		Size: 455.0 KB (454980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06dac87c74e35896811fdfcaf4d4fe49898e4d48d8197bac986765cf44f1993e`  
		Last Modified: Tue, 20 Mar 2018 12:03:46 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df90f60e4a4df061b1d3b00245cf5f5191ae8c4f336f1e039e93a9c51635373`  
		Last Modified: Tue, 20 Mar 2018 12:03:46 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31895c4a8e516ef2b5ca725a139946697af6811d223c3e20449c53a6b00510dd`  
		Last Modified: Tue, 20 Mar 2018 12:03:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678752a46bf4af499e18ef68695832e75ac9d922689d6ad5095fd04c88e250f4`  
		Last Modified: Fri, 06 Apr 2018 19:10:06 GMT  
		Size: 66.3 MB (66343495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-slim-experimental` - linux; s390x

```console
$ docker pull openjdk@sha256:5db67b828402977d78a9009a345a10f3a56c4fb84fe0f8160fafa2de200c9be7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.4 MB (91417969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3916fd5b9521c0ac187ebab943125379a0a7c62d68014e2cc5fc7b0be624511`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:08 GMT
ADD file:6f68d1b98f1844e4f556be18e2db7a2f1262097f9dea14071f46d5f8dfbd22e7 in / 
# Wed, 14 Mar 2018 05:23:08 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:35:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:35:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 06:35:37 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:35:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:35:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:35:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 05:42:23 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 06 Apr 2018 18:00:26 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:01:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:298af72285f6bd87726f47a71d44a9089da15048e0eb38a6b2ad0d5f6eef4cff`  
		Last Modified: Wed, 14 Mar 2018 05:27:48 GMT  
		Size: 24.9 MB (24881607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fa0f98e9ab2b7efe654e711de6bbee6c0afc5d2a8d62d21d8f7b9f5dd611b9`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 471.1 KB (471066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf9bd37faf4b01e8ce07fbb2e78b05f74bc20c16bd189b199c1844b9af4eb2d`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fb1f77914d3a0c3d99ff5e81cb4b402918a8dbff220dc8f3b6aaf00250723d`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f6516fe841568983cb1d49b9d42fa55b5c6fbba2c31e52c82df6c602a1763`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a7cf138b946ed2bc6740d29c91bd5940459abd1636410d582d3c4a29a92cc9`  
		Last Modified: Fri, 06 Apr 2018 18:13:59 GMT  
		Size: 66.1 MB (66064708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
