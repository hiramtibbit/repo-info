## `openjdk:11-slim`

```console
$ docker pull openjdk@sha256:c74013298afc322e9eb1ea46e4b67054588f5fb9af0c3ff5c1d89bfe162b30d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:11-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:134e90566d4221e625f3df1da7924c16cfef19cafd1806871e7c66bf05562d28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250665891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1c09a2d3b12c3cb3d29f6280cf773947c5e7b45d36369d4b0393e3c83bbbcb`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:43 GMT
ADD file:abc56f5a5510633481f0de7469b312f4f4cdcfbbe92bf1d7bddb5d716a2a5820 in / 
# Tue, 13 Mar 2018 22:21:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:56:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:30:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:30:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 19 Apr 2018 22:27:02 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 19 Apr 2018 22:27:03 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 19 Apr 2018 22:27:03 GMT
ENV JAVA_VERSION=11-ea+9
# Thu, 19 Apr 2018 22:27:03 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Thu, 19 Apr 2018 22:49:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 19 Apr 2018 22:49:03 GMT
CMD ["jshell"]
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
	-	`sha256:31aaf5b382af90e713d7581c352ac81060358c641b90a3708b45268486ae3911`  
		Last Modified: Wed, 14 Mar 2018 12:30:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b61eae6c1fb184254e9ee2a151f4c52bbe95ac381a58fadda6b4d23579f585`  
		Last Modified: Fri, 20 Apr 2018 00:13:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bc7e330cce494d8eeb6b6b631cc26870046d95f64d71c59213a4f00aa415a2`  
		Last Modified: Fri, 20 Apr 2018 01:00:31 GMT  
		Size: 224.5 MB (224492083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:61553cb25017c47bd0701675c6cfffdc54b91bd308093928424ae1552a2bd02a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218773608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7091254e33f541d78df49a7cca937a7654d54ccf784c4040395c54ee1b6f8043`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 19:59:20 GMT
ADD file:b829fe1b85a76eaae255627baf7572a89310e31a86d94c40353cdf5184a08296 in / 
# Wed, 14 Mar 2018 19:59:21 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:37:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:42:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:42:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 08:54:58 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 08:54:58 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 20 Apr 2018 08:54:59 GMT
ENV JAVA_VERSION=11-ea+9
# Fri, 20 Apr 2018 08:54:59 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Fri, 20 Apr 2018 08:58:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 20 Apr 2018 08:59:00 GMT
CMD ["jshell"]
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
	-	`sha256:3d53ef6ceaeefa22395981d0871593abdf315d62946258906c10c78378424bd2`  
		Last Modified: Wed, 14 Mar 2018 23:01:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cb48b0f72d888ee7bf85b6ed56609d93daa39d4aadb1a08f739062f2760ea6`  
		Last Modified: Fri, 20 Apr 2018 09:06:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3922b60ce612dadbe24b18b3c90368df2069767838d3a75e217cc3904c5f4d7d`  
		Last Modified: Fri, 20 Apr 2018 09:09:51 GMT  
		Size: 194.6 MB (194599877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:08c83ec578f894092ba1c3dd5c3bcb2a33223344444d43837eed36c5d5075376
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234981231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9611b2f6a97b3c7ccf66e36b0f61332e02f59559d8344d52cfe863e2fc549e80`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:55 GMT
ADD file:e890898916a686430a0d7cea9f16c3859f35938952b26ba20163570f64ab383c in / 
# Wed, 14 Mar 2018 00:33:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:18:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 08:34:01 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 08:34:02 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 20 Apr 2018 08:34:02 GMT
ENV JAVA_VERSION=11-ea+9
# Fri, 20 Apr 2018 08:34:03 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Fri, 20 Apr 2018 08:46:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 20 Apr 2018 08:46:06 GMT
CMD ["jshell"]
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
	-	`sha256:84cd6dec31efd7f104c93e0092e096437e0fd71c847ebb04861345763d94a407`  
		Last Modified: Thu, 15 Mar 2018 06:00:00 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc5fcec3cf8f86ccac8d90918dd53779babe41c0e890de5db6e5977721a74a9`  
		Last Modified: Fri, 20 Apr 2018 09:04:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5336446b819ebd769419b6becc48bfdddc5471fafac5727f8c101e90bdbeec0`  
		Last Modified: Fri, 20 Apr 2018 09:09:00 GMT  
		Size: 207.6 MB (207583429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:1c2075648ee27b853a94bc8c324f869826065691a94a4b849ffdb2830232b7ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208897154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53bf9444cf0f52b20059ec9c65123f0d60e651fdfffde304ba5c29638aab7f5`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:08 GMT
ADD file:6f68d1b98f1844e4f556be18e2db7a2f1262097f9dea14071f46d5f8dfbd22e7 in / 
# Wed, 14 Mar 2018 05:23:08 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:35:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:39:52 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 11:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 11:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 20 Apr 2018 11:55:57 GMT
ENV JAVA_VERSION=11-ea+9
# Fri, 20 Apr 2018 11:55:57 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Fri, 20 Apr 2018 11:59:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 20 Apr 2018 11:59:01 GMT
CMD ["jshell"]
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
	-	`sha256:145731487640b0c37253c269f62de8cb9a3e791ad045f4100fe13271ed4fe7ac`  
		Last Modified: Wed, 14 Mar 2018 06:53:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d97c4ceede46e6f8dfa63a5f0cde5ec26a464c1711eeaaf4e12f6cf6283a5c1`  
		Last Modified: Fri, 20 Apr 2018 12:03:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6380eb2b849fee7aeb24629f1a6c0b459310c310bf8c75c9ef7d273bf0847de8`  
		Last Modified: Fri, 20 Apr 2018 12:05:57 GMT  
		Size: 183.5 MB (183544110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
