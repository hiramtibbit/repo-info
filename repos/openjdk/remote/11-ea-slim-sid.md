## `openjdk:11-ea-slim-sid`

```console
$ docker pull openjdk@sha256:cd58c6cc5ea348262d431c2f2e05ad5cfb9f8c3bce7dab2ce554f85b5f9a324b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:11-ea-slim-sid` - linux; amd64

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

### `openjdk:11-ea-slim-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:9bbe6c855065c35e2bfbbef2462fadfd58d8061f4ef4a38a4758b7b283028e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218461957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46208635bd536ff71cd29b5e0274c51441b1a949b5d7cf864b96f4053cf1b7c9`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:57 GMT
ADD file:4bb0a1afcce11262886b693c92f368728f7ca179f516dcfd86a6a74d9941a2bd in / 
# Sat, 28 Apr 2018 08:51:57 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:33:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:33:18 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:33:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:33:20 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:33:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:33:20 GMT
ENV JAVA_VERSION=11-ea+9
# Sat, 28 Apr 2018 12:33:21 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Sat, 28 Apr 2018 12:36:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 12:36:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d8a6a213c8dfd9e72ad11408970d74e2be7ffdfbac3683ed1a40c28534145e4a`  
		Last Modified: Sat, 28 Apr 2018 09:00:19 GMT  
		Size: 24.0 MB (23990346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe23918d5c3df5c5737b91e6e16035342f47e61426f3dd0265882e998ef16a4`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 454.0 KB (453984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3278875f078d656ef3d6c8ce9702f8344f1343454d75403da10d4e583f90931`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3187c0aebb98dbd566b2d1153935c739a4bb54682bec8dd2cc1e96c824df4c5a`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fd287e65cb6c183d52b301d3d5ed92d575f79d562b500e25c6cd6119b6fea2`  
		Last Modified: Sat, 28 Apr 2018 13:05:58 GMT  
		Size: 194.0 MB (194017259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-slim-sid` - linux; ppc64le

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

### `openjdk:11-ea-slim-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:80e890dd24537037d9af70963ebe2ac7f92cecf5de5b0e80244e43bbc1f34875
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209073225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35612e542b7c19ee33042cb43caaf3cb23f9fb1da7dd35a60f4151685a1f687`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 11:44:07 GMT
ADD file:e38be352b5f5592b16e7137f372c3c15b62fa18d58036f3756f302a0b0bb631b in / 
# Sat, 28 Apr 2018 11:44:07 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:19:52 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:19:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:19:53 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:19:53 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:19:53 GMT
ENV JAVA_VERSION=11-ea+9
# Sat, 28 Apr 2018 14:19:53 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Sat, 28 Apr 2018 14:22:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 14:22:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bff59799036649cecf076e4900a64b601dd41fb4774da5d260797609e96f77d2`  
		Last Modified: Sat, 28 Apr 2018 11:50:00 GMT  
		Size: 25.1 MB (25056085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00321480668e2c88c597070fd4a0503df76d083adfe3488d69f82f37cf3a1143`  
		Last Modified: Sat, 28 Apr 2018 14:37:59 GMT  
		Size: 471.3 KB (471260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b7fa65f7725d173d1d9261b5c223d16d2f1f2a2850391fb2cd3eca5082060`  
		Last Modified: Sat, 28 Apr 2018 14:37:58 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c09a94002d348fe59f5834ba1288aeccf40840c95c0f0b837a011df6d6edc48`  
		Last Modified: Sat, 28 Apr 2018 14:37:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3476b368f5532cb474ac674191a253c694b23130117bbd7ef22636a932185c`  
		Last Modified: Sat, 28 Apr 2018 14:40:37 GMT  
		Size: 183.5 MB (183545514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
