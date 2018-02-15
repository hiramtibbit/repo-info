## `openjdk:jdk-stretch`

```console
$ docker pull openjdk@sha256:a609d68b2a3e49e8b7b0fa50d562578d8d0197db2d77d7a2ec6e5be2e7695773
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

### `openjdk:jdk-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:a8981b8470d96c229094603064ae83936a885fd61b9dbaf483c37a22c90af98b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294653753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c57090325ccc6961ac13ff009cbf4c6a6f9da65ff4794de75039f80d6d0a4dc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:54:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:21 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:14:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 15:14:25 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 15:14:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 15:15:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 15:15:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50316693559041b3c6895bce352b10c302f31c074495671a820b689d2ce12baa`  
		Last Modified: Tue, 12 Dec 2017 08:04:27 GMT  
		Size: 50.0 MB (50022829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043a12c29ea469f2521637d790e447a11583651eaa1809da1b15cbbdcdccc0ed`  
		Last Modified: Tue, 12 Dec 2017 16:17:47 GMT  
		Size: 892.0 KB (892049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036204524472a3bf48d87444c797e8d0ea5e2b7b7490702a059314d797aa697`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f95baa024b8c0a05ab25a2180f5a37d9cae8284ff70709ca0fcb36d97d9e6`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2018472a1fdc5a8ef25fbbf2cde838d8c9aa99ca9e799c0f38d82552368d8c`  
		Last Modified: Tue, 12 Dec 2017 16:18:35 GMT  
		Size: 182.9 MB (182901918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a25f8a69c882f7cd39cfd819ae28c9d228bfc4255fe39a18a5d6bd41fd60b061`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 272.2 KB (272178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:370eb58e70cceb03f9f0577fdd09444e9fa7150b2a5ec2eb3a7985f01b99571e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259398328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d52cc051d0c6875a37549bae81c619e6b7cb9c7ea55e90faaa3ecd4db024a09`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:59:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:59:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:33:44 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:33:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:33:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:33:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 23:33:47 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 23:33:47 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 23:33:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 23:35:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 23:35:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74be0ad93d15611aa7313f4b3b2f81efdd2d1cebe0f55d451508e2c2e4f7d55e`  
		Last Modified: Tue, 12 Dec 2017 23:10:09 GMT  
		Size: 10.2 MB (10205777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f61dac7c9bed094566a8a214c493eee51438fae13aa7858d076f887bd66e84`  
		Last Modified: Tue, 12 Dec 2017 23:10:07 GMT  
		Size: 4.2 MB (4153069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93919f9ce5190358c03ece52e0513bd8701cc4a4fbcad0d82423ec0aa138b5b4`  
		Last Modified: Tue, 12 Dec 2017 23:10:51 GMT  
		Size: 48.2 MB (48233484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8c9a049c82617b81d6d9361cf95eb72345acd7918235b1c32b311f492992de`  
		Last Modified: Tue, 12 Dec 2017 23:53:06 GMT  
		Size: 884.3 KB (884327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3540906b8a270a3b13ec7a1b90c859ffa7c9f318854bbb9f2f999497b49989a`  
		Last Modified: Tue, 12 Dec 2017 23:53:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11b120eb9c6662c012168f522fa4435d5d99136390c4fa0b7d8c4c7916d7f47`  
		Last Modified: Tue, 12 Dec 2017 23:53:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca70f608d0a11f5f4ffc3f8a611465d1dc47bf3098bb8ad6149ec2d779a56f92`  
		Last Modified: Tue, 12 Dec 2017 23:53:44 GMT  
		Size: 151.8 MB (151839899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f236380075e6783ec2d25ebc5b44971b8626309fdc0bf78faa50913771b98e`  
		Last Modified: Tue, 12 Dec 2017 23:53:06 GMT  
		Size: 272.2 KB (272209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-stretch` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:ec5974eb3b13055d701f1d072e65625e0b6d47a6a8880aa24261fb55ae133a7e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267821735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7ce2fd85588909e7a6cdd2e1b313084c91de758face4b2047071a16612a0de`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 14:22:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:14:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:14:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:14:15 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:14:15 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 15:14:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 15:14:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 15:15:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 15:15:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facba084babd0bca1fb6e0b05f34a2bc16a042cfdb3863d620dd87910bbe902e`  
		Last Modified: Tue, 12 Dec 2017 14:35:07 GMT  
		Size: 46.3 MB (46346753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6dd7ceb079ec6dbe9dfca309304dcf8ae978c6b807c58b1c1045e55293bbcf7`  
		Last Modified: Tue, 12 Dec 2017 15:33:39 GMT  
		Size: 867.5 KB (867478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb8215db670a1f64e31bc690f47c669838d6a2978ac1e962b425951210e38cb`  
		Last Modified: Tue, 12 Dec 2017 15:33:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75c3d32be66345a4667c133b81eb95901356c28cd83fa09be5f7053fb811923`  
		Last Modified: Tue, 12 Dec 2017 15:33:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ad50b1370a42315dceeaff3d803ddd3e0de19876b87d4e1dfaffebcaca2f37`  
		Last Modified: Tue, 12 Dec 2017 15:34:14 GMT  
		Size: 164.7 MB (164748347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79705a32d7b95f402bd51901e3e47f4d4ac9640a64c69b284b7b29dca34cacb7`  
		Last Modified: Tue, 12 Dec 2017 15:33:36 GMT  
		Size: 272.1 KB (272063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f99af24a7520b212ac4f756491d9cd5096204dc33ffde6bef63822579abadccf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274242684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70bc72e9f32c53f462d21c34aab9261d86fb693f97b8fd2fe3250ccafa5ab62`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 16:15:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:53:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:53:36 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 20:53:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 15 Dec 2017 20:53:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 15 Dec 2017 20:53:42 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 15 Dec 2017 20:53:42 GMT
ENV JAVA_VERSION=8u151
# Fri, 15 Dec 2017 20:53:43 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 15 Dec 2017 20:53:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 15 Dec 2017 20:57:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 15 Dec 2017 20:57:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab5498df96eae5ccabdf778692dc41eeee09793f3792efadf0079545233069c`  
		Last Modified: Fri, 15 Dec 2017 17:19:55 GMT  
		Size: 48.0 MB (47983199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1c76e3223fc4909a1a398abbe59db5c4b65930bc2b75d21872790c5b075632`  
		Last Modified: Fri, 15 Dec 2017 21:21:25 GMT  
		Size: 877.2 KB (877202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d722b1595acde54914951f48a8150c89482e3b06441f5cd9ec6849b9ba17d456`  
		Last Modified: Fri, 15 Dec 2017 21:21:23 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744cdcc10f12f7eafd5dab397bfb05f614bd36ecab3e0f848f35db09b9e9f273`  
		Last Modified: Fri, 15 Dec 2017 21:21:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750218e5c22d645286d4841d8104a903bca220262ff85b60a60137bc0e166a84`  
		Last Modified: Fri, 15 Dec 2017 21:22:12 GMT  
		Size: 168.0 MB (168042914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff709e529c363d650449fada8dc9cbe905a4ec86ad995a02b1e7d42c736db17`  
		Last Modified: Fri, 15 Dec 2017 21:21:24 GMT  
		Size: 272.1 KB (272104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:99c411a06df4f7995a18479df79cab4cf01613920f9e135c7857d51d260915ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299709025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120ff0b653cf64a71b105fdbf14a7cde5ef24ecd9c1994c59403f5e21252f7ec`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 14:47:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 15:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 15:10:58 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 15:10:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 15:11:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 15:11:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 13 Dec 2017 15:11:01 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 15:11:02 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 15:11:02 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 15:13:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 15:16:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff393180296f30b7b1cf94c5f67f82d434feb08eaff795346b0f5d3fe18c5ab6`  
		Last Modified: Wed, 13 Dec 2017 15:00:30 GMT  
		Size: 51.6 MB (51553695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497a46c049ca70f02a10ecd1fd969ea9b3043e1e0b7f9c362c82850f52d58338`  
		Last Modified: Wed, 13 Dec 2017 15:30:32 GMT  
		Size: 899.7 KB (899724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefbdd21084e042a6748462c442cbfae4eb96db133cddbb5423434d26d5d62a5`  
		Last Modified: Wed, 13 Dec 2017 15:30:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f1a07b450ded93e6945e245928313f08fff47ce46f42fc5b1b1500bbe01169`  
		Last Modified: Wed, 13 Dec 2017 15:30:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef81539ebeeb166737f8c0d53f4356fa26f33fa3cd08729a84aa3a650da4927c`  
		Last Modified: Wed, 13 Dec 2017 15:31:25 GMT  
		Size: 185.5 MB (185450981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faa2ff9a7b4abb76885e3506ca6345eb33fca169f3eee25f0ee410a113ed376`  
		Last Modified: Wed, 13 Dec 2017 15:30:31 GMT  
		Size: 272.1 KB (272148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:90cf43507408366e60cc6eda322c84250e311a95dd3b94e37e42b1e454721c27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282905342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b3786ca18470cd1b60eb12c9e8751321af8fc1d0742c8a76aaafad9622f08f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:21 GMT
ADD file:10937e86e38fefbf07c9463d2a6837b8404e73135bac36166b7b585c2f8e6359 in / 
# Tue, 12 Dec 2017 01:35:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:32:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:33:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 03:37:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:49:39 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 03:49:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 03:49:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 03:49:47 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 03:49:48 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 03:49:50 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 03:49:52 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 03:56:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 03:56:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:5427ba9c78c891da38836ae1e71d1f22cd1a75cae9cd5a7e1fc55e9b577e3517`  
		Last Modified: Tue, 12 Dec 2017 01:42:09 GMT  
		Size: 45.4 MB (45382357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378a191e90f6d5b2a6f6d9850e8c81ea101737db5c068add4c764f2be3aced2`  
		Last Modified: Tue, 12 Dec 2017 03:55:34 GMT  
		Size: 10.3 MB (10339336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26b1cf177268cff23511322d11143dadc3f4326448d8aceedad9b759e57fb13`  
		Last Modified: Tue, 12 Dec 2017 03:55:32 GMT  
		Size: 4.3 MB (4289552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90080349eff61f95b053aa65da87029e4c36cbccd1ac1d78002110d52ab56ba7`  
		Last Modified: Tue, 12 Dec 2017 03:56:07 GMT  
		Size: 50.0 MB (50029025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1910fe1860bb17191bffaa6297a06e13a8980751435566cc5105fb25a9568241`  
		Last Modified: Tue, 12 Dec 2017 04:19:29 GMT  
		Size: 886.3 KB (886267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc027489a0699cad2cf591f60b05548df4e03b936deb683519da8cc41255f88`  
		Last Modified: Tue, 12 Dec 2017 04:19:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d7c0d16aa4ff88466f2f8e0f49b2f6ac8101ab714651202841b4520dfc163d`  
		Last Modified: Tue, 12 Dec 2017 04:19:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6da45bd8b5cf1256385b9007b5b595d76e0974eef4931e61429119d9d84f82`  
		Last Modified: Tue, 12 Dec 2017 04:20:18 GMT  
		Size: 171.7 MB (171706366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c1bcf310bf2414b0ecaaf9400ddbde2c787fce01f9b1cddbdb3445e75e48f6`  
		Last Modified: Tue, 12 Dec 2017 04:19:29 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:73ef2cf414ad3ffd76b80d2bed43320f6e8eb982afa8c290727fc4d5351184b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265338386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b22008c8b203235138b749ee5afe42a5f64f65f5599e9f0dd135ed18e96107`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:54:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:55:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:23:11 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:23:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:23:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:23:12 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:23:13 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 08:23:13 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 08:23:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 08:23:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 08:24:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8de23eb22736f2b1a1ee7d3e7cb7124762f87e4fa1d2e9848eac12bda54ba4`  
		Last Modified: Thu, 15 Feb 2018 07:00:44 GMT  
		Size: 10.7 MB (10668568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b245666c672793e5b50be400fd6cf3981742c5efc93f7836f0fa7b865e502f5`  
		Last Modified: Thu, 15 Feb 2018 07:00:43 GMT  
		Size: 4.4 MB (4365966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b323d54d0df6efa09cadf041d10bd52a0d84d1768c0b345362243407b46149`  
		Last Modified: Thu, 15 Feb 2018 07:01:03 GMT  
		Size: 50.4 MB (50448019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b6942247295a8e272b7abd4594e39aacb90c501d052f143780281970508db1`  
		Last Modified: Thu, 15 Feb 2018 08:42:16 GMT  
		Size: 903.1 KB (903118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29210e084eddf73531337bc3843d61449f59a113eb70920ecaa022a9ce7c03`  
		Last Modified: Thu, 15 Feb 2018 08:42:18 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfc9c76f20d11c5ec70224396f609ff2ff6ed9ebf1ff326f101ba868c955950`  
		Last Modified: Thu, 15 Feb 2018 08:42:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea50b7c28e20745824f29c422a537055572a426d7397a7a0f834ed409239dd4`  
		Last Modified: Thu, 15 Feb 2018 08:42:41 GMT  
		Size: 153.7 MB (153708281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18bea8c90c6cbc17a4c963be157c9655f57d1c570e3ea36b1cbf9dd35878b71`  
		Last Modified: Thu, 15 Feb 2018 08:42:16 GMT  
		Size: 272.2 KB (272165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
