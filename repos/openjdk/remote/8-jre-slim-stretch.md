## `openjdk:8-jre-slim-stretch`

```console
$ docker pull openjdk@sha256:6d97f8acdd437a7e7d656f81e85a3331259ac970f5d31a57b8078d779fe24537
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

### `openjdk:8-jre-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:ae372e0e92765f1da7d1c9cc64fac528e5e889da1f2fa525b46b2476ee6b39bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78795055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bafe4a0f3a02911b1d2dbf5497b058fa7108bdda9854cc9209587868ba61e691`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:17 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:05:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:05:36 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:05:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d40fc3cf34dee2b2a441314fdd5adc73396c783b33d34a1385953d753bb2fb`  
		Last Modified: Tue, 05 Mar 2019 04:24:41 GMT  
		Size: 454.9 KB (454887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235bdb95dc99038adcc0ea3e3d78e781356c9a1d133a19da70120af738ccaaa`  
		Last Modified: Tue, 05 Mar 2019 04:27:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9ecf5ba38f4bf4157f41b104010963118089027eef2062a1faa0b846b2c857`  
		Last Modified: Tue, 05 Mar 2019 04:27:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91327716c4615550687570e0c9f7c9f4825feaab4746346f8f5dab20c57ee1d5`  
		Last Modified: Tue, 05 Mar 2019 04:28:13 GMT  
		Size: 55.8 MB (55843755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-slim-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:1bef9e01635a6293a7e59cf405380d752c17fc8ea1f8270f19ad979cc1393bd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68192096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc9d431e448765990cce8fe2e14155cae700992cb1797e5ce3cda85abb81887`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:14:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:22:47 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:22:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:22:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:25:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 11:25:10 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 11:25:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 11:25:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f869b46eab286139f4fa4b83e8c6db80016c89228e72c955364ca31cabeae7`  
		Last Modified: Tue, 05 Mar 2019 11:38:20 GMT  
		Size: 447.8 KB (447761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e57c035ee45742ebdc446484629b8e05f62d7eb674625d49f489106e4dc9d1e`  
		Last Modified: Tue, 05 Mar 2019 11:41:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20859a20ce50308496c2a1f9b7b4baa6577b286a104cfbb610af793a2800f5e7`  
		Last Modified: Tue, 05 Mar 2019 11:41:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d398a17496329f55baada6b7ab5c8db1a7e6bbacaaca0c89b1cac3125711c35`  
		Last Modified: Tue, 05 Mar 2019 11:42:55 GMT  
		Size: 46.6 MB (46583408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-slim-stretch` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:9afafc770a5dfb740c3cc9fdd981393ffce1bcc82cdae95b1cd464db38b1fe23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65704263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903b08c8c1d17b47bbd5e9d245802c714d1257ad2bf635b68db92ede2627e3e6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:23:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:26:16 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:26:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:26:19 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:28:17 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 14:28:17 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 14:28:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 14:28:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0521b55e58101891fe3bdcc6fd848218b3c82779e098759b9c6012d3c62c278`  
		Last Modified: Tue, 05 Mar 2019 14:41:11 GMT  
		Size: 430.6 KB (430609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c9564a7a9c1c176cdc06947f537ce24974acb1c56fe27189978b14a7798034`  
		Last Modified: Tue, 05 Mar 2019 14:41:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3891ad026bce160e4e740f9ababb510c98f74c77879772c67140b36910f3eff5`  
		Last Modified: Tue, 05 Mar 2019 14:41:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f1291dc426b4bd47f1875291922987c683095ae83538d460d182f533d7f1bd`  
		Last Modified: Tue, 05 Mar 2019 14:42:30 GMT  
		Size: 46.0 MB (45990781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:3ef9c5fa283340b2f746f43c6482e5d9c08a1bb826bd3c2c3a5434b62066dfb5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68807133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4a86acc3429960cb5001b63c3d4a267d7d4627fb49ab43b51cc36138d67233`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:18:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:18:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:18:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:28:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:28:17 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:28:24 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:31:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857c9abd17ad597c20509970fbf55c7260550d870bd68c188e4aef3de5e7e24`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 440.9 KB (440887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af475183dd776a3bc6f1848588e7bed68865d8ed0a3b9d7443228cabd1a92cf3`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efcd9790a6dbfb5bc228474fdafa0870db0d257c606550c02ec06fee85650f2`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8efee4b97b2c8150a89a35adaa4a0cd72bdfa37ea59837f5cdf302091dd43`  
		Last Modified: Wed, 06 Feb 2019 12:44:34 GMT  
		Size: 48.0 MB (48015709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:018c79e870d4b4d71dba59ea2fb33d735e85d7d68c5fa2496571a3b437183f03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (79003738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e36d1cb8d0382e0f88ed46fd3ed3cc7bdd214347ec0dee2cccbb5688fb6b56`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:16:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:20:22 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:21:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 13:21:28 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 13:21:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 13:22:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aa004e8e8a109b6c6d8294b4dcbf5c50576fb117f1e102a8631294a99214f`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 463.5 KB (463543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8618e15556ce477fa6285b881cc9fc48a12885f10859576498803366bd157060`  
		Last Modified: Wed, 06 Feb 2019 13:42:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b2b6cbdddad219f75c5e6a41abe0ca28fdba63f254d491b72f81a7582e4151`  
		Last Modified: Wed, 06 Feb 2019 13:42:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cb325f95fbc452c571a61898381736e02c6ce4383f9b56d238c8f72b7ef235`  
		Last Modified: Wed, 06 Feb 2019 13:43:35 GMT  
		Size: 55.4 MB (55392845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:eb99cc27794a1b1b9b8200737130d0f24d3f63405b54fe49818efbe3b3a28d24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71681092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2965c1527d7be402ebb1240d384a2fab609db14302effc1eb532ee392c6173`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:22:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:28:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:28:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:28:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 11:30:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 11:30:56 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 11:30:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 11:32:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dc20b3ce8c37688658ff595852548d704112b0ebb0d3af8f062192264d7928`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 449.8 KB (449778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df626ed30eb0652e5b003b710a3985d4da8fab9380d73d6a527844dd558869f3`  
		Last Modified: Wed, 06 Feb 2019 11:40:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54567a4b75a7a615e048f4a48fd5d655f74096e529371baffad947f1bcb99d8`  
		Last Modified: Wed, 06 Feb 2019 11:40:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a965720baa7310cb30338d049ce534c88b9e8634d343901505d968282677ee44`  
		Last Modified: Wed, 06 Feb 2019 11:41:25 GMT  
		Size: 48.5 MB (48475541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:69dfc0d8286127184c2691b1dbb8ab163f5e6b6fa7a13ffd7e8db6049501e07f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70505488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733eaba92649881b3377a213151d71e190ba8444dc128a7fa0bebb8e2e734f38`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:17:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:19:52 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:19:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:19:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:20:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 13:20:32 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 13:20:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 13:20:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c438cc50f33a89006d37f9ee58571a62bf167eff7389eff6777b14be5377e640`  
		Last Modified: Wed, 06 Feb 2019 13:22:43 GMT  
		Size: 465.8 KB (465790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d29dfcdade1d644eb5b4cf276402047d11d0b87fa7ba193dd958e26fe60d3e`  
		Last Modified: Wed, 06 Feb 2019 13:24:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfa5c9223ed8aaf543da528ea97f3ec76a14e416035b95f2425c1622647d48`  
		Last Modified: Wed, 06 Feb 2019 13:24:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ca1cf185f5517bb6b7ca7d419d854b8b6f9456bc00db2e60ae31d400d496b`  
		Last Modified: Wed, 06 Feb 2019 13:25:30 GMT  
		Size: 47.7 MB (47685985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
