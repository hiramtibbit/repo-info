## `openjdk:7u181-jre-jessie`

```console
$ docker pull openjdk@sha256:2f072ad54f927e5497b42a8cc0f362dba7f143b793f750c3acca58566798729e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-jre-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:800bd372c3c71f924dc8a3a421a500da5b51298e0f56b5b086354240c0639d27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154539176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed6690e0eadabe47bb1e0d9e4dbfe05c1016a88a3cc6f24120720e174ed9a6b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:43:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:42:43 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:42:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:42:45 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:42:45 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:42:45 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Feb 2019 08:42:46 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Feb 2019 08:45:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f85cbc0218759652e5a51e5c5a13006ac20b8ab141c05f1e67a1444a9e62a`  
		Last Modified: Wed, 06 Feb 2019 06:00:08 GMT  
		Size: 17.5 MB (17539308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bc51c8ce6e0239d8dba25acf6df1aa19b6d0796260977b73f1aee076bb61f0`  
		Last Modified: Wed, 06 Feb 2019 08:56:13 GMT  
		Size: 795.1 KB (795150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7032334b0b248028287687815babf69db51a75707a458e9a9ca143f69f15bf`  
		Last Modified: Wed, 06 Feb 2019 08:56:12 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8f4d571fd374b50d3f0a03a27625446ea0aa3d85254331f4e2b1b7fe07b1ad`  
		Last Modified: Wed, 06 Feb 2019 08:56:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72b1c4306a80534eb9012c3312b87d1cdbce0f84b5f19844bb856edf5a9ccf`  
		Last Modified: Wed, 06 Feb 2019 08:56:28 GMT  
		Size: 81.8 MB (81819689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:5cb7174de57e222db0afb34d885bbd27d5072cbc6178746af410b9445852d49e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141877722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fed7c0522349e0050bd44dd6f79fb865102287c8178769cd789107beeb0489b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:01:03 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:01:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 13:01:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 13:01:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 13:01:07 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 13:01:07 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 13:02:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359813d020b0d9ce651f05a10df633df9b32819ce2a73abd95d616e4c97aae0`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 788.0 KB (787968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf087ed004deb2058d24ae6cd910445d78d754ce9d873d663a291d9909a03d0`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c18c846b876ec307325eaf8af3c9e7164a6dc0098df74bf3a7081af1e7d40f`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b6b8b572290c49d1e79a6a89b740fdbbae1cea4e9b4959f808f7c4ec5934c9`  
		Last Modified: Wed, 23 Jan 2019 13:13:08 GMT  
		Size: 71.5 MB (71484477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-jessie` - linux; arm variant v7

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

### `openjdk:7u181-jre-jessie` - linux; 386

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
