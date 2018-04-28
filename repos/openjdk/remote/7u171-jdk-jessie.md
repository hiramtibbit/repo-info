## `openjdk:7u171-jdk-jessie`

```console
$ docker pull openjdk@sha256:cc27c21432823bf78444c462060a5a9db3eea50ed0999f56f22c20486eb2c95e
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

### `openjdk:7u171-jdk-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:620f08ffa2e2cb52eafb9f831972af1bbb3a2710a33bee093333888f06fc4bf0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245597232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8da12bfcb37616fb419edca97ed754d1d96e0b9885a478e9e42e293364ecccc9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:39:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:17:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:17:16 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:17:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:17:18 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:17:18 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 04:02:02 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 04:02:02 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 04:03:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb899b4df216ab398fb05547f86dc371db944cf53dea7913d2f4261ed09e2be`  
		Last Modified: Wed, 14 Mar 2018 00:34:40 GMT  
		Size: 19.3 MB (19266189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eaa8be7221e87fae8804464be5f691955f582b6b4efe703095a2c9b041696a`  
		Last Modified: Wed, 14 Mar 2018 00:37:48 GMT  
		Size: 43.3 MB (43254408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7be20ca4c60d4b1bdeaa16f01e7c057d17a2abf947b5d18d8ba314643738bcd`  
		Last Modified: Wed, 14 Mar 2018 13:19:50 GMT  
		Size: 828.7 KB (828714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8a0c25768cd457b272cfde167ce6dda903e7fc4d8f02ed87d65409f7a716d5`  
		Last Modified: Wed, 14 Mar 2018 13:19:49 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8449367f126ca8237a10277d1ed86840137f134b28044248a06ec39a6f54511`  
		Last Modified: Wed, 14 Mar 2018 13:19:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81af614b694437fff357bafc11b7d5d2625ab536cea7283af5d0ab5308299c48`  
		Last Modified: Tue, 10 Apr 2018 04:35:34 GMT  
		Size: 129.6 MB (129639024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jdk-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:96ff04409733ece84b084b3b075ae386268b495e5a51f0a1b9db941afe9eed9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (216018510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a131057f3ff2032c9e913593b731bf2c47ca72a64144656ea426937c261e302`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:24:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:24:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:56:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:56:53 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:56:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:56:56 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:56:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:56:56 GMT
ENV JAVA_VERSION=7u171
# Sat, 28 Apr 2018 12:56:57 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 28 Apr 2018 12:58:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229392eca0ea6fd4f2cc8f7d0d7ae06b4ee3b653f27de84082dfa6c08f937eb3`  
		Last Modified: Sat, 28 Apr 2018 09:38:39 GMT  
		Size: 17.1 MB (17054111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c50069643e7ba8c967fb7fe1d1d9a2f42e28ededf3d5c2744f7751f7371905e`  
		Last Modified: Sat, 28 Apr 2018 09:39:06 GMT  
		Size: 41.1 MB (41103326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04baab6490d64207af45c8888b3cb629c8e206e86fe46e7c086e66b72f15e3ab`  
		Last Modified: Sat, 28 Apr 2018 13:30:59 GMT  
		Size: 821.2 KB (821210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b63c4c8cfd5a88398e29e1c37872dbc5ec79c7ce76fd9e655c53d580cb8c03`  
		Last Modified: Sat, 28 Apr 2018 13:30:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab14fc3b5d61eb452bf584bf6e7eac54e2ed4fe68d732283c610dc4ebb9b075a`  
		Last Modified: Sat, 28 Apr 2018 13:30:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a35b148fd246635cb33f8c7859d52171d6123a7a8e8f64690059ea8431b700b`  
		Last Modified: Sat, 28 Apr 2018 13:31:22 GMT  
		Size: 104.6 MB (104583448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jdk-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:e5bc05e31c76819f563532d19df94697db5f2577948605972d996729021784e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220491510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1923170b64899bce2aa1b3df6890fb63f46c58b9d636845d6a78f546ce125a76`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:36:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:36:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:59:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:59:58 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 13:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 13:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 13:00:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 13:00:02 GMT
ENV JAVA_VERSION=7u171
# Sat, 28 Apr 2018 13:00:02 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 28 Apr 2018 13:01:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8594897c8bf4818e6046e6e628a380bf5e4460a7bbd5db964170e47643d78fcc`  
		Last Modified: Sat, 28 Apr 2018 13:03:02 GMT  
		Size: 16.7 MB (16738795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8d9b47a39f0c687594e30f9584bb58074510ab097a17f8f852f16da395908`  
		Last Modified: Sat, 28 Apr 2018 13:03:27 GMT  
		Size: 39.7 MB (39727093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef0272ce28906e34cb64ac14f4639b57aaed33d4ad65d30e3668719dc712afe`  
		Last Modified: Sat, 28 Apr 2018 13:28:59 GMT  
		Size: 795.1 KB (795139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd14ec28b169d4d3d4305399c1d6ee52a8aa1964daa47a6643dd855e2cdf6a4`  
		Last Modified: Sat, 28 Apr 2018 13:28:59 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7053dbe1e4b66db8ee573619e06992fdb94142f2939d21dca74e654b33db3b`  
		Last Modified: Sat, 28 Apr 2018 13:28:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635db2b83017cddee41c0f87e68880a00336d0b4543262ca38d5b193df4e9bc8`  
		Last Modified: Sat, 28 Apr 2018 13:29:20 GMT  
		Size: 113.0 MB (113034409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jdk-jessie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6e703a3d690e2fc1cf13bc8192d751cd9ec002ed7eeee97a1141567977973354
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215497681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517abbcc63480648d631b5bec9da52e62d358ed88c00ad01d490b7db9a462131`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:23:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:25:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:57:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:57:06 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:57:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:57:10 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:57:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 03:53:32 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:53:33 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:59:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c0a429742ffe0333a0070020d4aa3cfeaa1d0f87e652544b8b823ab168f1bd`  
		Last Modified: Wed, 14 Mar 2018 19:01:35 GMT  
		Size: 18.7 MB (18739890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0143ab4c445a576c0bf58f4eee3c9dac1bbf68c311dc22f8a0ad7397a257c25e`  
		Last Modified: Wed, 14 Mar 2018 19:02:34 GMT  
		Size: 41.0 MB (41022023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a11c58033acf6b511b8cc034f108a007483fb386fa0bcb7f87ab071bcb5e5f4`  
		Last Modified: Tue, 10 Apr 2018 04:14:52 GMT  
		Size: 823.7 KB (823745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e912cbe74039f60583dcdc317c7980ae154296e7a8da6c2ccb36a975e987aa`  
		Last Modified: Tue, 10 Apr 2018 04:14:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e4951bc63f1fe282ceec6f96267ba6d96888ec7af46137fea5623d493d23ef`  
		Last Modified: Tue, 10 Apr 2018 04:14:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a05d1275b08a84a2ce3ceb68551168ff45ea63ce04e3bad259b1b0cb6792281`  
		Last Modified: Tue, 10 Apr 2018 04:15:15 GMT  
		Size: 105.0 MB (104978181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jdk-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:fb63038d07fd3552af5fea1583e089bb4fbdee32909ff40bd1e5a4e16de7087e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259909520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b481e2f46b051f6067c23a546e4ed23e4dc756bbc0d9298aff99b743f62ddb6e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:08:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:08:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:09:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 03:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 03:04:18 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 03:04:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 03:04:20 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 03:04:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 03:04:20 GMT
ENV JAVA_VERSION=7u171
# Sat, 14 Apr 2018 03:04:20 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Sat, 14 Apr 2018 03:05:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999887f7abea7a24e20fa216412c9f2b4a39d253e61385df57c922ba2a6550d5`  
		Last Modified: Fri, 13 Apr 2018 22:28:37 GMT  
		Size: 21.6 MB (21597462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5616688b0911eb981e4ba09cf2c6fad5129d8bf23f46055a8453f839706245d`  
		Last Modified: Fri, 13 Apr 2018 22:29:01 GMT  
		Size: 43.9 MB (43918705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c83fe1da8d7541c3ea7e26b464b356d02b3386dae6660ef72de011176521e86`  
		Last Modified: Sat, 14 Apr 2018 03:25:33 GMT  
		Size: 831.6 KB (831638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20cdf8986756431d00e00ef301d0d75dc55cb1ac0a6080e9a017c384e9ee2c1`  
		Last Modified: Sat, 14 Apr 2018 03:25:33 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33095354fb6b35ccb245c0a5ae3efdbc0f52c131447b3055b1848c759812fca`  
		Last Modified: Sat, 14 Apr 2018 03:25:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bea3cd4f0d0cbc2c31345271c813656a20779a8a7e75fd03245b357de7ded46`  
		Last Modified: Sat, 14 Apr 2018 03:26:01 GMT  
		Size: 140.8 MB (140773711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jdk-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:50f9bf631461d092332dbcfc76c9ea9bec701c59c1b0a86ca58301e2c103e093
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221245423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21994f44ee5a5c228eb96436542a16a8d18c5f73364aa8f3f1843aca034f1b22`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:36:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:36:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:39:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:36:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:36:20 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 05:36:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 05:36:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 05:36:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 02:51:03 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 02:51:04 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 02:59:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86648639f69004413e64c4fcb6ad3ffd98348d0c786a9efc5722c3ce5732e7c`  
		Last Modified: Thu, 15 Mar 2018 02:29:25 GMT  
		Size: 19.2 MB (19203303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb8f3b52990756515e29d9ee1dbf0cb2ba787aae0a952609c385d2f1d11f6ec`  
		Last Modified: Thu, 15 Mar 2018 02:29:50 GMT  
		Size: 42.8 MB (42759015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56367cb7ab689caf7b6bd5dfa33c4dd72097d9046f81213711a7a15f789001db`  
		Last Modified: Thu, 15 Mar 2018 06:12:15 GMT  
		Size: 824.7 KB (824742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff2539e61a7674de8c32e5c870bc5af4cd64d1830faf047689f4425f523984`  
		Last Modified: Thu, 15 Mar 2018 06:12:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd515c55fcc2e1bb34804b0ff1af5239f5d99255ba093f533b9fa369db5e2656`  
		Last Modified: Thu, 15 Mar 2018 06:12:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ebdfecf9cc767a6a2f7f7ef2f7feccf377f60edb72a6e5c87bb913c53c2cdb`  
		Last Modified: Tue, 10 Apr 2018 03:15:49 GMT  
		Size: 106.6 MB (106640818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jdk-jessie` - linux; s390x

```console
$ docker pull openjdk@sha256:aca337e137f7afca94d2edb1e6aedbd5c6f8649c9fd9ae05daefeb4c301105b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222113455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2d7b9b0a2b244e22b0d0119dd9ff1628172915e1f7f3c3ee620c558fc5518c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:50:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:50:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:46:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:46:52 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:46:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:46:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:46:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 18:14:44 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 18:14:44 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 18:15:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a685ac71022aa1adebd3c61832ae0c6225f8634316998ccff12b61e2db87b964`  
		Last Modified: Wed, 14 Mar 2018 05:58:56 GMT  
		Size: 19.5 MB (19472068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb8d238930b380a590123e7f02135ce37730c646dfedf9f689dee9182c7735c`  
		Last Modified: Wed, 14 Mar 2018 05:59:11 GMT  
		Size: 43.4 MB (43388484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3373f77a573af2235f386f5a42877a3905f1d0fc441d59ba4d76b88ad91f2ac`  
		Last Modified: Wed, 14 Mar 2018 07:00:44 GMT  
		Size: 837.9 KB (837945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab0f755d0868df9a82556eca37b820e1de90083f33f4a70324b2082339d3984`  
		Last Modified: Wed, 14 Mar 2018 07:00:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd859333a79926a79e7cd66258e9fab7daa97e380b708adbd1b85787c0f6c3`  
		Last Modified: Wed, 14 Mar 2018 07:00:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4758cd053376a3a5db677e7d5d10ebd470b686944d98985affd5358ed00444`  
		Last Modified: Tue, 10 Apr 2018 18:19:12 GMT  
		Size: 105.6 MB (105619106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
