## `openjdk:11-ea-jre-sid`

```console
$ docker pull openjdk@sha256:162253dd88f6a6e59c010fc760e507e7c8e4eab832e0a7e7e4cdb19ed7a77246
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

### `openjdk:11-ea-jre-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:72f1b78b72ade4788ca2adc0bd808760fdb61efcfc9b14c1326297973e935307
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244074043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cca7476bbeb01b94065b06a9ed5458bce98d5578eeafc369641e6239def73fe`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:51 GMT
ADD file:6b6ece05e75fbdccfdd76433844e066f0ec636fb62e74326f1747ccde948c381 in / 
# Tue, 04 Sep 2018 21:20:52 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:31:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:16:45 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:16:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:16:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:16:46 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:16:46 GMT
ENV JAVA_VERSION=11-ea+27
# Wed, 05 Sep 2018 01:16:46 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Wed, 05 Sep 2018 01:17:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5164339600396c4bdb97f111e5236c5fc64911bbd2bfe6d2343ce45fe79ea7d8`  
		Last Modified: Tue, 04 Sep 2018 21:24:41 GMT  
		Size: 49.1 MB (49071704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083ed1d8baf85dbda1151434e9afe28ad5efa36397cda6ff66cc5e7a888d2a4f`  
		Last Modified: Tue, 04 Sep 2018 22:51:37 GMT  
		Size: 7.4 MB (7350084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973ddf6ced7131822a05e3dd20803610fd06a8c695d3d814713f6ece58d616fd`  
		Last Modified: Tue, 04 Sep 2018 22:51:38 GMT  
		Size: 9.3 MB (9303992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24688a9f67e8a6e21d2aff3d1944d6b2c25df7f34e8a832ac69543243fcf3fd`  
		Last Modified: Wed, 05 Sep 2018 01:33:32 GMT  
		Size: 849.3 KB (849288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b207299ef18671a38b8fa1309272a5329503a6d6b096c03c4e75741c6042ce`  
		Last Modified: Wed, 05 Sep 2018 01:33:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e43cfb6a766c67bee065cea2132995d86599b09eac8fa8d8f97bc721d4c15f`  
		Last Modified: Wed, 05 Sep 2018 01:33:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c15f9746b7d6838d0622b8c02fdc0a53de0479ad9d6aa1a6c65d3a7e2c6d9af`  
		Last Modified: Wed, 05 Sep 2018 01:34:11 GMT  
		Size: 177.5 MB (177498606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:884eb594a8878c67e0f83b7918275a08e5ca5d9e8546fce4840dba66d351719a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224067139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acdca561d7422d90f8c4c811b34a42c74ac35c6366318f5a9ccf5bc096a7e441`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:53:54 GMT
ADD file:feed6b12801621af72a787e98590f6fd783022a609efc8254532712521e6c570 in / 
# Tue, 17 Jul 2018 08:53:55 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:46:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:46:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:35:12 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:35:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:35:15 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:35:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 08:54:25 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 08:54:25 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 08:55:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b6112397569f950be7cab355fd3cb9fb3b089c080499c1eebc269ecb7cc3715c`  
		Last Modified: Tue, 17 Jul 2018 09:06:21 GMT  
		Size: 46.6 MB (46645580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe7203031bf40ede6b42be5c3fda4ca4d75813d5bd4b1b964031a91101f44bc`  
		Last Modified: Tue, 17 Jul 2018 11:59:56 GMT  
		Size: 6.6 MB (6628142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70fcc6b3abd37d971fff823418e9e34f70cffa0160a3baf8d7e2eea079fcf3a`  
		Last Modified: Tue, 17 Jul 2018 11:59:57 GMT  
		Size: 9.0 MB (8987743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2ae4496c0916db99e22c0245b34d245a7318740ae4c9f23250d636cf66291a`  
		Last Modified: Tue, 17 Jul 2018 12:52:07 GMT  
		Size: 840.2 KB (840227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0810e84c1a090066340c5d857bf3de97486a9c67a19884712150c85db8d04f`  
		Last Modified: Tue, 17 Jul 2018 12:52:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7c233f2419ba4df692b504b8b98a4d15eb2b67544501d2212f586b784b5f5a`  
		Last Modified: Sat, 21 Jul 2018 11:14:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf13e8a54d1ebee7fa7bcda2d88e48fd61f529038d3d7e9bf1406ef3a94a290`  
		Last Modified: Thu, 23 Aug 2018 09:01:38 GMT  
		Size: 161.0 MB (160965080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:d6dcd34cfc02e04c1530371e1741c700f7c102676861e8f09a91c6cb4d7475a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219156299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfce7d6bef3ff9abfed70c2d435d5821568ff5b39373a7d9805fcb2d407bf0f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:03:18 GMT
ADD file:016411fa531d65b2271f50aee3e350fc858e61add73997af4a83556197c9abd5 in / 
# Tue, 17 Jul 2018 12:03:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:44:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:44:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 16:11:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:11:24 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 16:11:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 16:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 16:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 12:01:02 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 12:01:03 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 12:01:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a4e0ee0fbc8087144c4cdef3f0495ffebba2e3ee7dfa11ff0d5a4b165ff41f7c`  
		Last Modified: Tue, 17 Jul 2018 12:15:37 GMT  
		Size: 44.5 MB (44512160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e3242d163ccebb1e24dafc2e4deb3b8913ee65303f56b15736a14018c6fcf6`  
		Last Modified: Tue, 17 Jul 2018 14:08:01 GMT  
		Size: 6.4 MB (6418813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d90194ec002d2dcbfc99ba120dcf8f01ef9037e35164e5ceb9c8ceac378ec1c`  
		Last Modified: Tue, 17 Jul 2018 14:08:01 GMT  
		Size: 8.7 MB (8703423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c9089005de6fd50a3d8cad35dc43b757155e17fa10676e63c2528f513646ff`  
		Last Modified: Tue, 17 Jul 2018 16:32:26 GMT  
		Size: 823.3 KB (823281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7551abecfba34ecb6d5b52f240f03d79d286e26b9aed276c0e21beee6197359e`  
		Last Modified: Tue, 17 Jul 2018 16:32:26 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22132281f5baf9c78e724865205347e37288f463bef7e37f53dac4584617c720`  
		Last Modified: Tue, 17 Jul 2018 16:32:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac0f243d8922991a91bfd5bc716ed0eed719af38a05835e0b6ca85cd4fc75ed`  
		Last Modified: Thu, 23 Aug 2018 12:14:28 GMT  
		Size: 158.7 MB (158698255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a95d3f17b4f0568229e88af1d7619bbf2082c8bc5992b8dc0623d70009fd860a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232346678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f7c284810114ddf8e1aca58abab0c39e9884af8a80c064e858f7ebb2fd891c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:43:33 GMT
ADD file:1145a1860bba8a4d148966c227a31ee5ee05c524c8af7a2c0963bb5671b11ad7 in / 
# Tue, 17 Jul 2018 08:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:40:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 19:56:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:56:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:56:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 19:56:40 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 19:56:41 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 09:43:45 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 09:43:46 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 09:52:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:719cf01a9d639f6fad37c3abd73d6746ec6483c438952c7daf2503b9dccde689`  
		Last Modified: Tue, 17 Jul 2018 08:53:02 GMT  
		Size: 46.0 MB (45967380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075accf774284e7b667dd405cd13b8eeb55056113680340e3245fbd09d5d03fa`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 6.6 MB (6647895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6bf6cdca1c47f36a5665bfdb0fb046730a62f0d3c944aecf285c441be0ea93`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 9.0 MB (8981452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c840a5bdd30532a63df60e5079cbbe12a8fce1db657e5b27202622471ed9c7`  
		Last Modified: Tue, 17 Jul 2018 20:40:10 GMT  
		Size: 831.8 KB (831820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84f1479c592353313a7a93277681daa575a4af657abf7514207ccfbf82e462e`  
		Last Modified: Tue, 17 Jul 2018 20:40:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8029dd7284fa85df3e47a0e9b8dfcde08c81578bdf2e0421735eb084d56944ae`  
		Last Modified: Tue, 17 Jul 2018 20:40:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f138d86a6e53c3d475d2136af091dd2671885a22b7f80f7ce3f348e8e08e0e`  
		Last Modified: Thu, 23 Aug 2018 10:09:38 GMT  
		Size: 169.9 MB (169917764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; 386

```console
$ docker pull openjdk@sha256:f0b1f16ce4f10397fe4d80f875b5028375d5b14e689223334065f1fa7439ec70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256390092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2639c28288898f7a2badf363041a1c9b6f6404437b0e0f8f3a4e27c77ee43109`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:46:37 GMT
ADD file:9a56907f76deea3f2b22068eae8c6cc31bed7f9c7b3de38c6e99c54e77d0822e in / 
# Tue, 17 Jul 2018 10:46:41 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:30:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:31:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:10:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:10:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:10:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:10:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:10:50 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 11:14:02 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 11:14:02 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 11:15:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c4a6da94b3de8d8ecc301930050dce3da90b886c8443b00166765e0873f7abf6`  
		Last Modified: Tue, 17 Jul 2018 11:03:38 GMT  
		Size: 49.5 MB (49529462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804bb32a028b43835bbfcaa803b7de3d0dac5cb91ca5192d83ff39548d87dc5`  
		Last Modified: Tue, 17 Jul 2018 15:11:50 GMT  
		Size: 7.2 MB (7186448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6b791854fa42fd340bfb473b8a46084be17fd760aec34df82fd303f96a9ca5`  
		Last Modified: Tue, 17 Jul 2018 15:11:52 GMT  
		Size: 9.5 MB (9527986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c7f6b57a91274b87e9359f6087b58be7100abe66a9ba7c584dafc42f56a9a3`  
		Last Modified: Tue, 17 Jul 2018 18:31:02 GMT  
		Size: 854.3 KB (854311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3902ef34602a870d6143f6aea2221db68a6c781338755c2559f085728962d5d`  
		Last Modified: Tue, 17 Jul 2018 18:31:02 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9504ea1c3fe592856da4c89403b65064040b103a2d264ef6cec53a9b5fc1d2`  
		Last Modified: Tue, 17 Jul 2018 18:31:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63e4f77c4bb76a617b7ec4e541db2901f1ef8b1a50e69ea39d770027a060cfe`  
		Last Modified: Thu, 23 Aug 2018 11:27:56 GMT  
		Size: 189.3 MB (189291519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:853ee1993d36ab518e486f7fe1ff95fd35c9c03c368643ec4cde0d3da3c615ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241198332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dace58d4d7631ed5361d0b1188706bb28dd70c3c86d7bb79150e662797ba63af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:22 GMT
ADD file:94ebec540eca8b99572e5842e1f1f2fe8cf7a62fb1366b2459edb37903e41200 in / 
# Tue, 17 Jul 2018 08:18:31 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:56:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 16:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:21:38 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 16:21:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 16:21:52 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 16:21:53 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 08:57:15 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 08:57:16 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 09:00:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2d7cf41bf039d34ad7c6efe6cb9dc3370c5f55c39226a13fd409d52eb991f335`  
		Last Modified: Tue, 17 Jul 2018 08:23:43 GMT  
		Size: 50.2 MB (50185044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17647cf140d6db3c9f1f92652456b5a6bb54c33ca54b10d4dfb98f2b9f8e5c4`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 6.9 MB (6876422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd26110f5fee83517301d699e51fa0068429ef004ebc1a0f923f23ededc8621`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 9.5 MB (9494855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fdca2392dba04cb5aca6b662a42e69264bc5866b553b75b013e019a70b8bcd`  
		Last Modified: Tue, 17 Jul 2018 17:27:19 GMT  
		Size: 841.6 KB (841558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d24a83bd75f6287213ae1609820714c57b8749ccdd46b8d244a7ad258cbfea9`  
		Last Modified: Tue, 17 Jul 2018 17:27:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf6c75c5753af17b26cdc2c3554b2506ea9bf9c78f92ea7357cf76341736b26`  
		Last Modified: Tue, 17 Jul 2018 17:27:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f933fbd4a9a71697e0a7b13ab001c75ddb971829ff55cbd0bf14553615544920`  
		Last Modified: Thu, 23 Aug 2018 09:08:22 GMT  
		Size: 173.8 MB (173800084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:f24485ca7d46239544f130ff95d286f3d3becd5ccb0924d9ad9b07e79580f55c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207035205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12997df0351f1269044e7fa7157078854cc5c6752a4ec5f45f078e4b66bc0459`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:42:12 GMT
ADD file:cc7dc0768817446033aeb138e188af680cfedc409e223f9784d76e615feb4c11 in / 
# Tue, 17 Jul 2018 11:42:15 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:19:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:19:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:14:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:14:01 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 14:14:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 14:14:02 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 14:14:02 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 12:07:43 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 12:07:43 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 12:08:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7ce421c266a7f090ea9857f4226f9f791cb56ece2becee63129b019e9786527d`  
		Last Modified: Tue, 17 Jul 2018 11:45:34 GMT  
		Size: 47.7 MB (47674254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07abb9f11de8a7cf3609cab93301ed88a0a66c6f9946a1b865a2738460537a15`  
		Last Modified: Tue, 17 Jul 2018 13:29:20 GMT  
		Size: 6.8 MB (6764457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958d9bc09e39d650d733b01f7aa4174021f01ef9e69f65e9ee399c5f4a6903f`  
		Last Modified: Tue, 17 Jul 2018 13:29:20 GMT  
		Size: 9.2 MB (9183018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3d7bcfef978c9842098735a554b09d072f09f794304956349268091b22914`  
		Last Modified: Tue, 17 Jul 2018 14:21:59 GMT  
		Size: 857.6 KB (857612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b104098d4ef083f9643039cc962c73e8510ba62946e1067bba1f35dbef2914`  
		Last Modified: Tue, 17 Jul 2018 14:21:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220c30dc1f5f0eaad606ba67af9121d12c842ddb9778e474077ab8fb31852880`  
		Last Modified: Tue, 17 Jul 2018 14:21:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9d502d19692042bb28749f8bcf922db22086b65add8b7e2da7d57c25d2a93c`  
		Last Modified: Thu, 23 Aug 2018 12:19:37 GMT  
		Size: 142.6 MB (142555494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
