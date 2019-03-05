## `openjdk:7-jre-jessie`

```console
$ docker pull openjdk@sha256:d0c5e27258d1ee2eabf342f2370a87cc5564011361256be51783e6864fa1a89d
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
$ docker pull openjdk@sha256:bc4422560b4aefa7aef63e534777a9e06eb2d0b2ccd41351294fadc4d1991f3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137789166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3920a86a8ba3dff73c6975505ea0d67385a2131b2bf9a1d9910ce770676c1c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 12:59:04 GMT
ADD file:e2ec14698f9dbf6f9e69be1417badea55f51ce760c6134600720d78041923242 in / 
# Thu, 07 Feb 2019 12:59:05 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:30:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 16:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:34:00 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:34:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:34:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:34:03 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 16:34:03 GMT
ENV JAVA_VERSION=7u181
# Thu, 07 Feb 2019 16:34:04 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 07 Feb 2019 16:35:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9800246268d2ef744bda6da9d267fc24b9e904492c8abae95a2ea4e9a64a93ae`  
		Last Modified: Thu, 07 Feb 2019 01:20:17 GMT  
		Size: 50.3 MB (50291667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a417a1381c3b2efadb424349e0ed96d849692fb1454d122112ddb3f26f93e59a`  
		Last Modified: Thu, 07 Feb 2019 15:49:32 GMT  
		Size: 16.7 MB (16714301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f524ac8a4618fd0ed09998d53e5767cc65264e85266029a77d346922729643d`  
		Last Modified: Thu, 07 Feb 2019 16:36:32 GMT  
		Size: 762.5 KB (762525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083e9b0515eb0da25cb537a51ae45994ab154980443e61302c50b8e4ce9a9101`  
		Last Modified: Thu, 07 Feb 2019 16:36:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5dbf96fdba7e83a69c629b3ad15d7643be9f3b6fe5ff27c241e7d836076455`  
		Last Modified: Thu, 07 Feb 2019 16:36:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40999a81ad5cceb22e1fda1261f3506b3ba7eac24d230ad4ca14157c96db9bdc`  
		Last Modified: Thu, 07 Feb 2019 16:36:46 GMT  
		Size: 70.0 MB (70020297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:478e15c30ec28bdfdc2e0e24eb8c2f044983f5c62d8faab3019a9b42f5ee0b4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166922326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ef3a2669a405ab4ddb50ead0433edd9d09a11b6ccd932c5f3786a754d9f1c3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:36 GMT
ADD file:7ee301fb17cb469725296eb34fd4c88b06658dab08befc626157c94e1b1264ae in / 
# Wed, 06 Feb 2019 11:58:37 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:37:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:37:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:34:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:34:28 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:34:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:34:30 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:34:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:34:30 GMT
ENV JAVA_VERSION=7u181
# Thu, 07 Feb 2019 06:34:30 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 07 Feb 2019 06:37:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:0d2c60a99fbfd5389008365663b1914f58c65ad5174908669d2fd547813d4df9`  
		Last Modified: Wed, 06 Feb 2019 12:04:25 GMT  
		Size: 54.6 MB (54599595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f8a1642cca50fb512e186f15c61d2abd8bcf91ea3f8de5b6f58faa9de847ac`  
		Last Modified: Thu, 07 Feb 2019 02:00:51 GMT  
		Size: 19.8 MB (19846893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc046b01f8fb56cc870992326fb0ad9baba544226c64eebf5b95f0b7643c0a89`  
		Last Modified: Thu, 07 Feb 2019 06:42:16 GMT  
		Size: 798.2 KB (798178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4932cfb690c1120e723f4a9aed7adf98bc39c9572ae8eb189e4c5b1f54ff9dff`  
		Last Modified: Thu, 07 Feb 2019 06:42:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58d5aa00f6dd55026f1daf486d00154bf2690efbd6bd90f1fba71b0558a5183`  
		Last Modified: Thu, 07 Feb 2019 06:42:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc119601fe5cfe236f903143d96846a9bc1a37db7208b490bcbae5ef89e2e95d`  
		Last Modified: Thu, 07 Feb 2019 06:42:33 GMT  
		Size: 91.7 MB (91677282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
