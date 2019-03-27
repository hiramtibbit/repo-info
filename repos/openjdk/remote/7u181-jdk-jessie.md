## `openjdk:7u181-jdk-jessie`

```console
$ docker pull openjdk@sha256:a19dfeda04ac4a12216d2bc6972ca1aad7a80aeb18bd8175138d746b2afa5259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-jdk-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:f331ad89e7ed47862c8ab55e63df932e83a7974560c27c949907a3974179cf4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213969789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb60d5cc739ac9fdf96fc85735a35e8d9b72e7b969711b13060e4d408a534ce6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:51:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:51:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:51:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:51:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:51:33 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:51:33 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Mar 2019 00:51:34 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 27 Mar 2019 00:53:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe5b9a5ae4df86ade5163499bec6552c354611960eabfc7f1391f9e9f57945`  
		Last Modified: Tue, 26 Mar 2019 23:30:21 GMT  
		Size: 17.5 MB (17541227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc848917b0a4c37d6f00a2db476e407c6b36ce371a07e421e1b3b943ed64cba`  
		Last Modified: Tue, 26 Mar 2019 23:30:34 GMT  
		Size: 43.3 MB (43313715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cac1f45771ba8e8dee2a881fd6ab6e1b9a338720414178a3ad064729976776`  
		Last Modified: Wed, 27 Mar 2019 01:09:40 GMT  
		Size: 828.3 KB (828335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:badf01f9cd8671026a302dcc51e313b9bde9a88685c590e382cf996dc73eb473`  
		Last Modified: Wed, 27 Mar 2019 01:09:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f15d623984e03971476b794267abd8e5de1799f7f051e004fee36485c8fc58`  
		Last Modified: Wed, 27 Mar 2019 01:09:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a47227c5b4b2de7b3d2a12ddc7cfad127f3f2c04211d328eaa63f5c86902ce`  
		Last Modified: Wed, 27 Mar 2019 01:09:55 GMT  
		Size: 97.9 MB (97903222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:9c4d1033cce85f39fd8e44a68e46cad92308ec6caf5c129f79ebdc490275e588
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196552655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f79a8a2517056499d175ec41c1cf6939c8180766b55850c6259aec55f66037e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:50:20 GMT
ADD file:3c356511cef57ac0765cb3dbc44849681160eed0da2bab71abbdfdf87a2f3c66 in / 
# Wed, 27 Mar 2019 08:50:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:37:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:37:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:08:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:08:55 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:08:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:08:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:09:00 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:09:00 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Mar 2019 12:09:01 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 27 Mar 2019 12:11:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:35faed585909f6e9e85497a99e01695f4aeb8262181d87fcafd6f815fe5aa8c8`  
		Last Modified: Wed, 27 Mar 2019 08:56:55 GMT  
		Size: 52.6 MB (52571358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19004d17af2e3c968fdff26408889aa5005d87283ecbfba81c84b0ffebb84b1`  
		Last Modified: Wed, 27 Mar 2019 10:07:13 GMT  
		Size: 17.0 MB (17032562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd59e10a24df3a15e158152abd46f57ef5c0627f24b262fa9e975343159b08e3`  
		Last Modified: Wed, 27 Mar 2019 10:07:36 GMT  
		Size: 41.2 MB (41155805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd60d16b045b8fb72ff37bbb9c6f115adeb5bb77ed79ee102b69f25c176915b`  
		Last Modified: Wed, 27 Mar 2019 12:23:24 GMT  
		Size: 821.6 KB (821621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedd353b26bf1dad8e8e608b1523e9fab50cb2188923ecc6e0f61f655ead390a`  
		Last Modified: Wed, 27 Mar 2019 12:23:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec77bdf024c42a42e1afd9b5cf5c95c9c60e0c86b3bcf2dfd654322de8a1459`  
		Last Modified: Wed, 27 Mar 2019 12:23:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c39019ee6d992a9d6d989a9a85083226836316ab27b4a2792db562b6e83a6e`  
		Last Modified: Wed, 27 Mar 2019 12:23:42 GMT  
		Size: 85.0 MB (84970932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:5492bd9693d02fae993bb1ba08f0bd9c0afc2ff652c8ffd3e3559adb6898555f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.2 MB (191196067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6406f829d7d40bb67df198b891ec743cc95d094746e4df5d1c80f76cef2fa91f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:03:57 GMT
ADD file:4757894eb0296869eee5517ee63abdb019c5b02b28e2de6774336869227076ad in / 
# Wed, 27 Mar 2019 12:03:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:04:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:04:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:05:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:00:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:00:59 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:01:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:01:03 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:01:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 15:01:04 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Mar 2019 15:01:05 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 27 Mar 2019 15:08:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9cb2604037f474632362bf2141b9a7472452b696f2b0974eef3c5208260e6d69`  
		Last Modified: Wed, 27 Mar 2019 12:10:48 GMT  
		Size: 50.3 MB (50294640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbade77d5540720db42ecb08c263abf534c719f427db0c1c3d285765ba1fe238`  
		Last Modified: Wed, 27 Mar 2019 13:19:12 GMT  
		Size: 16.7 MB (16717953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264a4d46bfc19d14756c9c8906b4fad6db8178def3b95df0fdead9ca451cf204`  
		Last Modified: Wed, 27 Mar 2019 13:19:33 GMT  
		Size: 39.8 MB (39765443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b1c7c52825504d6cf739ff61c1780b8c9b1072a9b2eee1208c6e59571f0a11`  
		Last Modified: Wed, 27 Mar 2019 15:18:35 GMT  
		Size: 795.5 KB (795483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0ddd5a61249b859f69b16c4ead5777071ff6b3bf51fd3e6ea56881308bac3b`  
		Last Modified: Wed, 27 Mar 2019 15:18:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d382f4c9b8e173a32df16467e327d381a66515176512144232ae48a191a4ffe`  
		Last Modified: Wed, 27 Mar 2019 15:18:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f2234abd26db071232dc8a4a412abf8cd2861922999defaf5272302b094298`  
		Last Modified: Wed, 27 Mar 2019 15:18:52 GMT  
		Size: 83.6 MB (83622170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:4076d01a6c84016488dbe6e22be042359a371e98216c1dae0beaad7f40d77f94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226821446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837121faccfdb911016d29c12ea5c441337e08846253a6b6a2a93f230cee7e94`
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
# Tue, 05 Mar 2019 21:03:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:25:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Mar 2019 03:25:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Mar 2019 03:25:39 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Mar 2019 03:25:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Mar 2019 03:25:39 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Mar 2019 03:25:40 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Mar 2019 03:29:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:2765aef17b790d1b1e5a81d1b7a6fbd3d6f0977516b506c404ccdbf3e43974b9`  
		Last Modified: Tue, 05 Mar 2019 21:16:01 GMT  
		Size: 44.0 MB (43951800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af46226ba1b4370766d8601ea6d7ba0f3f714508c7bbbabb987ba4871878d2cc`  
		Last Modified: Wed, 06 Mar 2019 03:38:54 GMT  
		Size: 831.3 KB (831264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fc1f0501ec4102fc1f96cb08c90c022c4e52b1c96401f5e39808114d0b91ec`  
		Last Modified: Wed, 06 Mar 2019 03:38:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ccbf6ddbb1c3c57d9bcf05342d82c28690dfb9ad1262381b61368ea77744ae`  
		Last Modified: Wed, 06 Mar 2019 03:38:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296c02d9b15b91c8718ffe3ef5a73b9dee419c957f6e2e128c64b63d66f5493a`  
		Last Modified: Wed, 06 Mar 2019 03:39:10 GMT  
		Size: 107.6 MB (107585638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
