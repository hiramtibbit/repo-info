## `openjdk:10-experimental`

```console
$ docker pull openjdk@sha256:e16fa0dc77db4b050668ce9e132038a33da2bf396ab4a1c35826bdb481b8eaab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `openjdk:10-experimental` - linux; amd64

```console
$ docker pull openjdk@sha256:b19cee289baf0043bf3ec838c04a2ae7c31ccc68680fe98aecbab99db298ecf9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400723502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a138555d722e8746a01b13adcd97efbb786f4fd1d066dbdab8e2305093c82759`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-experimental` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:242e3497b1594b032da1cf4dc916f018af31b3d4b6230a304f5ff898b5901a35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.2 MB (366210788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4ecc89806fcd2f66b1642ba49516a55d99c00221323af3ea78b723ab8db493`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 19:58:54 GMT
ADD file:0c259893711fbbb74d52158310e6405ffafee1cf80df0c5023f0f262fedaae44 in / 
# Wed, 14 Mar 2018 19:58:55 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:43:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:38:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:38:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 22:38:42 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:38:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:38:43 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:38:44 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 08:07:07 GMT
ENV JAVA_VERSION=10-ea+46
# Tue, 20 Mar 2018 09:58:57 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Tue, 20 Mar 2018 10:00:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:00:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:709e01ad8801f6d1fc3e64805651a95479961d03211125705eadb61df54191e9`  
		Last Modified: Wed, 14 Mar 2018 20:10:21 GMT  
		Size: 46.1 MB (46055043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cabfe63914ea326825c026f366ea50e79289864c2497b91e2974b96bc934f1`  
		Last Modified: Wed, 14 Mar 2018 20:54:36 GMT  
		Size: 7.8 MB (7806745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e862bd65c86e50e663d9f9f50f85f442d2c632cf810c672f7898ce71d7e69`  
		Last Modified: Wed, 14 Mar 2018 20:54:37 GMT  
		Size: 8.8 MB (8849409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73cbaff32c495dbf820d75a2ab92f48e706690972a32075399e7cc921171f6a`  
		Last Modified: Wed, 14 Mar 2018 20:55:03 GMT  
		Size: 47.0 MB (47039468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ab72241b5eb79748aed02f2dbfa944d2ea85614427a6cc7b30765605f936c8`  
		Last Modified: Wed, 14 Mar 2018 23:03:12 GMT  
		Size: 886.6 KB (886553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca07967d8da7f7131c11d9bb1ab59ea2a998a3bc632a6b62cce2fabb9e41098`  
		Last Modified: Fri, 16 Mar 2018 08:14:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc3ba0ffda199269ad61a2ed4fc796898b10d954a48b60be25e2e328c72e1ca`  
		Last Modified: Fri, 16 Mar 2018 08:14:43 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6ebcf28d27f5d574d8a11cc316cc0fd19cf5cda77ce9f9e02ff3e65e48abea`  
		Last Modified: Fri, 16 Mar 2018 08:14:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355c6f8fdd391b8bdc74b3ebd3d99443d7354e7d75305fb8c0e07d5da29d1e69`  
		Last Modified: Tue, 20 Mar 2018 10:17:49 GMT  
		Size: 255.6 MB (255572977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-experimental` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:38e8ec5cb33d2bf0f91e537260eed515d692b25f778c61961deb1040488826c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.5 MB (362538269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437bfc7811aa15665f759e8f5f712f8682ea0300dcb3ee5585ae4f9009c9291e`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 12:30:24 GMT
ADD file:cf4220476786ea80d7a6f84bd9dc94b6d6ac8945750c25c3bfaacd81d179ad18 in / 
# Wed, 14 Mar 2018 12:30:25 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:16:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:17:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:50:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:50:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 13:50:55 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:50:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 13:50:57 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 13:50:57 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 01:26:29 GMT
ENV JAVA_VERSION=10-ea+46
# Tue, 20 Mar 2018 01:26:33 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Tue, 20 Mar 2018 01:27:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 01:27:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4bebe725acb1248d8ff52284d58dd16fdca68548a367bc396431ad7bc5d34cdd`  
		Last Modified: Wed, 14 Mar 2018 12:42:11 GMT  
		Size: 44.0 MB (43986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0693f5a3991162a5990e13b166d617b8f1fe371f4d92a04086448d19f61284b`  
		Last Modified: Wed, 14 Mar 2018 13:28:33 GMT  
		Size: 7.5 MB (7530551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56df267e9bb7c177688d09890d4bb7057540af666c61d9a1e741b8e886ece4cb`  
		Last Modified: Wed, 14 Mar 2018 13:28:33 GMT  
		Size: 8.6 MB (8563576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf9be025345a2e4ee4e9624a19b5f502e453281cdbbcc863a7fb162e2c960d6`  
		Last Modified: Wed, 14 Mar 2018 13:29:01 GMT  
		Size: 45.0 MB (45032882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29526685384522669b03ca17621c63977bff53de2b4cf3b1a1004d9a1b28dec`  
		Last Modified: Wed, 14 Mar 2018 14:20:17 GMT  
		Size: 869.2 KB (869181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8d79ba5138330b1c7e4dba47f97d66456b33566c8c080a973c0f70a386e473`  
		Last Modified: Wed, 14 Mar 2018 14:20:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be91b267c9216ad04aeab31a7800cd12efa760285c521d65c85f15bb4faec4c5`  
		Last Modified: Wed, 14 Mar 2018 14:20:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078060b66c68b2c6d4b17b5296812d45052dcd16923e9ca046f844929ec16d6`  
		Last Modified: Wed, 14 Mar 2018 14:20:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5125d923534a3367c7d29cf07822876dff00b1c5065aba029091082d76d87d`  
		Last Modified: Tue, 20 Mar 2018 01:46:39 GMT  
		Size: 256.6 MB (256554931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-experimental` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:755dd87adc665389db6661111a387a73e53b307edbba6123d25b94f7f06515ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.4 MB (371412013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23121b62cd88a8e5a0623281a0c88f65b389ea488ededb274d7679bddbc843e3`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 17:27:51 GMT
ADD file:c8a410dfd7a3136f565a9b629d0a835719a68ad80b782a9281d1759c6eb8f4ef in / 
# Wed, 14 Mar 2018 17:27:52 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:37:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:39:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:58:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:58:39 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 19:58:40 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 19:58:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 19:58:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 19:58:45 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 10:52:25 GMT
ENV JAVA_VERSION=10-ea+46
# Tue, 20 Mar 2018 10:10:05 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Tue, 20 Mar 2018 10:16:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:16:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:885529e16b447a9a1d0e77e83ee5f3a4ded117a603fc735a386b40c6af050fd4`  
		Last Modified: Wed, 14 Mar 2018 17:42:26 GMT  
		Size: 45.4 MB (45374529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af181fc68ef0c1305345dda1947e4560354a950ca8826a733d8ff9b4f123be4`  
		Last Modified: Wed, 14 Mar 2018 19:02:58 GMT  
		Size: 7.9 MB (7852691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77236b6977166cb08e885fe34b4cd11cd8ca232506de32b79dc0261614f26e4e`  
		Last Modified: Wed, 14 Mar 2018 19:02:58 GMT  
		Size: 8.8 MB (8837983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9448bb102ab7b0e233b516a8c24aa132d505f71aabccc853b5596b4e1672a7`  
		Last Modified: Wed, 14 Mar 2018 19:03:35 GMT  
		Size: 47.5 MB (47507133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edbdfd4c9e4284d3bb3ec6e424431fe9992c80dd6d0f993f7cecdad82b23055`  
		Last Modified: Wed, 14 Mar 2018 21:07:24 GMT  
		Size: 878.8 KB (878765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3fefd8c0e33dea3d829b9b8241fa97d947330dd0223d61e49912604e08d851`  
		Last Modified: Wed, 14 Mar 2018 21:07:23 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5fbc645ff45877b4b2ffcb4a85f9762aad4a3e8a12e83a3cbf8287a64846ce5`  
		Last Modified: Wed, 14 Mar 2018 21:07:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49dbf733a10e2958f3d65a19dd66f55613efe9c94a5d26713c818a61b0f698f`  
		Last Modified: Wed, 14 Mar 2018 21:07:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1876fcd09308c912b058230a91625b708de4cd9e7c97bcf5231ed41afdc4a4d`  
		Last Modified: Tue, 20 Mar 2018 11:26:10 GMT  
		Size: 261.0 MB (260960323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-experimental` - linux; ppc64le

```console
$ docker pull openjdk@sha256:7859bb3c7929fae962dd445e4579a87c9f6e6f1feeb4e7b261857f4d57041aae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.1 MB (388110903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516082d5c46b540d39813ffc48597b318f8e4a354004c99c1b8787b5c9ebe430`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:40 GMT
ADD file:fd074388a1e87afa5199386a81dd5480d59e87c99744d1503003e1cf82eeeeaa in / 
# Wed, 14 Mar 2018 00:33:42 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:55:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:57:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:05:04 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Mar 2018 04:05:07 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:05:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:05:18 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:05:21 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 10:49:52 GMT
ENV JAVA_VERSION=10-ea+46
# Tue, 20 Mar 2018 11:00:47 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Tue, 20 Mar 2018 11:10:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:10:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:caeed743812fb8916f058220350e305c0e940ed0a62904c7cd30f479de34194c`  
		Last Modified: Wed, 14 Mar 2018 00:41:02 GMT  
		Size: 49.5 MB (49465766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aaececf1154f36498af71895dbfe2455b71b0652ce6a3048ac81822992106d`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 8.2 MB (8210793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a71fba1af38f62545037942242f7cc1e558fa18154f937e68d6d61ed9d625`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 9.3 MB (9339565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfcc456225ab24cf578ce5446afe1a019b9e41ff7ca89d22777947029b2c2b5`  
		Last Modified: Thu, 15 Mar 2018 02:31:05 GMT  
		Size: 52.1 MB (52111302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfa1ad5283396a1b16dce28dedec9e4a37bd6ec358f28ce99c3873faf052f5e`  
		Last Modified: Thu, 15 Mar 2018 06:01:04 GMT  
		Size: 888.6 KB (888644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcfe4dd98cd5fb9097a619346ac22659120012ec47ffff94c5ba1c8af0f7ba5`  
		Last Modified: Tue, 20 Mar 2018 12:04:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91538c8cec0a79aae7fa63fcb7e5df07c633cd600c3607e130edd1959796f40`  
		Last Modified: Tue, 20 Mar 2018 12:04:46 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf65ba5d8f911eac80be065c1868ca210abeb84edbbcd1212cf93e6113cbd3f`  
		Last Modified: Tue, 20 Mar 2018 12:04:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9befb4cce0f4a01d2085c0b529b57fcaef5e5c8da4028fd5a2cc867db0226a01`  
		Last Modified: Tue, 20 Mar 2018 12:05:36 GMT  
		Size: 268.1 MB (268094239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
