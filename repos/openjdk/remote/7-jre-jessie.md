## `openjdk:7-jre-jessie`

```console
$ docker pull openjdk@sha256:ec7a657e457e654e46c5a16da7855816b178b6f7bb6a2d26cd0a9700e8a07d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jre-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:8a68be593b14bb50d307fea536e2f85b07a14eada8e3d1916ad0ca3b4b1a1d9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154538242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5574a0455ab4e5ddcc246299da8fbf368e8d58e0c8d3a3bd1a40d6eca8e05c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:26:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:17:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:17:03 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:17:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:17:05 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:17:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:17:06 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 04:17:06 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 04:19:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aca5925aec20fece01837f6f93c55c62c38dfba443d19404e7be3a37f3bdf85`  
		Last Modified: Tue, 05 Mar 2019 02:41:52 GMT  
		Size: 17.5 MB (17539744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2804cbb1435bc2e32a66d185b3a714b9c3f97141f1d4a8c09a3675f213c004da`  
		Last Modified: Tue, 05 Mar 2019 04:29:03 GMT  
		Size: 795.2 KB (795158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d24da622655ce6014113d76763828275ccc5cd50156517ed85b9fb273749c6`  
		Last Modified: Tue, 05 Mar 2019 04:29:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602ecacd96f4b325230dbae121fe62fc8a03f775f91f886514eba5ebe29cdcd0`  
		Last Modified: Tue, 05 Mar 2019 04:29:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa0bc495b76d17d820e3a8fbc02c09b53742381874f6237e416ded5498127ac`  
		Last Modified: Tue, 05 Mar 2019 04:29:17 GMT  
		Size: 81.8 MB (81821305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:981196d93c29a3dda8da85529570a1922f1146e605b8c2ae8534a74169810463
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141875944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c324d836370900dbf857906408ead1877decc57e4c732882513661689f782a5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:50:03 GMT
ADD file:66cba1ce0f57ac1885e087b1deba2b541e37c4eaf6eacf3f6677cb41af388c87 in / 
# Tue, 05 Mar 2019 09:50:05 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:32:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:55 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:32:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:32:58 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:32:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 11:32:58 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 11:32:59 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 11:34:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b7c40827a2a74bdfea27defa43e5568bacb59e6f9773735453da8b888b31d953`  
		Last Modified: Tue, 05 Mar 2019 09:59:19 GMT  
		Size: 52.6 MB (52568284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf75e00cc6a814dff9dda90a02a717aaff0d1ff8982516e907a703574296a1e`  
		Last Modified: Tue, 05 Mar 2019 10:40:38 GMT  
		Size: 17.0 MB (17030963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d697d1b8be3edff6937f9b589f72cc1a383e0fb95734910a33a0f19e0d7a6b4`  
		Last Modified: Tue, 05 Mar 2019 11:43:55 GMT  
		Size: 788.0 KB (787981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2733ec1595297ac233332cda9270b850d5be82c9be41aa2154d66a7de5940a`  
		Last Modified: Tue, 05 Mar 2019 11:43:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058bc94a9597f4304c7c5d1b5275632f33096a2ebc746532d6e3301cf430a8da`  
		Last Modified: Tue, 05 Mar 2019 11:43:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1021ea9ae881ce03fbbb19c0f28ec1c7a88de737678bdd7f01f3b2e5219e5f0d`  
		Last Modified: Tue, 05 Mar 2019 11:44:10 GMT  
		Size: 71.5 MB (71488337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:0aef4af86ca4a544988cbe604c7cd338a48b51b5e694254163a5c950caed70bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137792925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f66cd90c387ac16867806753f35a9f1a808b8b154c6ea234574b1cf8100a099`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:05:29 GMT
ADD file:57888dd979a80adc65c1fdc390ca77df7dbb7549c7ce655276ef11f54284319a in / 
# Tue, 05 Mar 2019 13:05:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:40:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:40:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:36:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:36:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:36:10 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:36:11 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 14:36:11 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 14:36:12 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 14:37:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:27fb1932f7b947e1aae56957f613528117f9be31e33b703972bcca01326c7045`  
		Last Modified: Tue, 05 Mar 2019 13:15:24 GMT  
		Size: 50.3 MB (50293558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6fb81616fd7699aa8083e0f181a045340e3b72ce596c8e46aafee6cc994cc6`  
		Last Modified: Tue, 05 Mar 2019 14:00:26 GMT  
		Size: 16.7 MB (16715898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f25a3ea5b59b09ddb22fd7794a2edf7d9268ee3cfcdd46e557b18b09b7c4a3`  
		Last Modified: Tue, 05 Mar 2019 14:43:30 GMT  
		Size: 762.5 KB (762530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73179b7e54991d3f0c27a2c30ad2f30a89a77026e563efc36fd002cf33d4bae`  
		Last Modified: Tue, 05 Mar 2019 14:43:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d0d821ceccb612d739122725e8ae94dde30a6b2f0b9f071b20060c8638d312`  
		Last Modified: Tue, 05 Mar 2019 14:43:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea10cc4e8eab9bde119d1fa5ba719435ae43003d50dd1dfaf5d6d4273c01e055`  
		Last Modified: Tue, 05 Mar 2019 14:43:44 GMT  
		Size: 70.0 MB (70020560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:a777b81893769e1f1bb8c510d9f05582169e54dea494e365dbafd84fc0698a06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166928320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61ce99208015d31c208564d63a963e638ff8be0fa2cdd5b5b422a1218763cc08`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:40:55 GMT
ADD file:195af36095959161134ae0fc4d9bcb4aee6197916a6ee7b54451a229d2db3e89 in / 
# Tue, 05 Mar 2019 11:40:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:59:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Mar 2019 03:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:31:57 GMT
ENV LANG=C.UTF-8
# Wed, 06 Mar 2019 03:31:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Mar 2019 03:31:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Mar 2019 03:31:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Mar 2019 03:31:59 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Mar 2019 03:31:59 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Mar 2019 03:35:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f7ce4d781f3676a0be48b8d3d34d6f425e873120e0e4f57aa109f394b797292d`  
		Last Modified: Tue, 05 Mar 2019 11:51:08 GMT  
		Size: 54.6 MB (54604426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a0d5b8eca14fd26922c4d3f67119113f60045f853d3af1882dca1ad76136d`  
		Last Modified: Tue, 05 Mar 2019 21:15:47 GMT  
		Size: 19.8 MB (19847940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313ed9e9764204bfc765a5d932bc64f2c9d4cdcfe882c2e0b990669c61a14211`  
		Last Modified: Wed, 06 Mar 2019 03:39:17 GMT  
		Size: 798.2 KB (798167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0391b8782fe2735aab018af561adc17c31ddfde83aae74b70afddd9f207ae42`  
		Last Modified: Wed, 06 Mar 2019 03:39:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fbff692061471c423726c310582211a190d832067cf8f68920f0adf9cec196`  
		Last Modified: Wed, 06 Mar 2019 03:39:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ed32c0c050bf03ebb3c4604a107dbb9633db5c3185b7320e5e751dd1788c74`  
		Last Modified: Wed, 06 Mar 2019 03:39:31 GMT  
		Size: 91.7 MB (91677409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
