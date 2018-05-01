## `openjdk:9-jdk-sid`

```console
$ docker pull openjdk@sha256:386d9d28b6554c85872b920b7796eea8774e491df95ba158c307122a26f03c18
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

### `openjdk:9-jdk-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:60a6a7f236a8d73c98ea0dc38c0aeb0d2f5f5c5635168db70019e28d8cf7aa4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393553474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43a3c4291c5db2b31bace1ef83aed020ee0b6a051a24cf04324200439ff43a8`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 16:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:41:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 16:46:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:42:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:42:29 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 09:42:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 11:23:29 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 11:23:29 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 11:23:29 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 11:23:29 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 01 May 2018 11:24:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 01 May 2018 11:24:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d9e4316522ac259c31b51deac1204cdf4e714ddff3a1d4a1bce1d0d5cfce90`  
		Last Modified: Sat, 28 Apr 2018 20:33:31 GMT  
		Size: 8.6 MB (8617077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e07faf2012b70a40ec906e76db167c387c5d2bd39160622144d2bdd95cb490e`  
		Last Modified: Sat, 28 Apr 2018 20:33:31 GMT  
		Size: 9.5 MB (9459618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91ab815ef7b7e0e7551caccda6cc9f0786b976d357c51cece2970085f174f40`  
		Last Modified: Sat, 28 Apr 2018 20:34:32 GMT  
		Size: 52.5 MB (52525431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60793303ad305cc7f0c7ea23ebb72e10cde83ff2f8d6af25d5b4efc27de655`  
		Last Modified: Tue, 01 May 2018 14:12:13 GMT  
		Size: 895.0 KB (895018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5383c80457c52055cf8cda378b162ae1478b2b590f9ff1a46c3896d7bff0addd`  
		Last Modified: Tue, 01 May 2018 14:12:12 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec43e518a54a0f626b8288352f588c5ba143864d6245112712547d199f3c53b`  
		Last Modified: Tue, 01 May 2018 16:41:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06a7d6e79e1aed69dd9c01e92653c386cd75f9709dece28b971a95f70b5dc58`  
		Last Modified: Tue, 01 May 2018 16:41:51 GMT  
		Size: 273.8 MB (273752729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:10a98864c114cf6a58d3c9977226cf06eecc967202e796da714427dc5b3bf00b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.9 MB (356874720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b1c81a2bcf80b583e914c0f5400284d6df10827322cb9a3821fb8631409f1a`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:39 GMT
ADD file:289dd78ee91d70cba0d1bc2f296c3c14565c2fc5a7545ded07d727de72e2c7af in / 
# Sat, 28 Apr 2018 08:51:39 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:28:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:34:03 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:34:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:43:55 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:43:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:43:55 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 12:43:56 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 12:45:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 12:45:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e55988127988d265ae9a533cadc5ee50c9a724a2602f8677daa3d5ca1354a4c8`  
		Last Modified: Sat, 28 Apr 2018 08:59:59 GMT  
		Size: 46.3 MB (46298645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77d6470b972bf9064a20bcc7a75b22d6482d7756a06defc11d6ed90e8091e94`  
		Last Modified: Sat, 28 Apr 2018 09:40:06 GMT  
		Size: 7.8 MB (7786427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbe4fab820e91bcc75ac63fb3d76e1d38e5a2d6fdaafdad0f1660020749a1a5`  
		Last Modified: Sat, 28 Apr 2018 09:40:04 GMT  
		Size: 8.9 MB (8856117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c646593b0be34ed92f3ac4adf7f79024fc1c4049ce29e91a49ed25377bf05d9b`  
		Last Modified: Sat, 28 Apr 2018 09:40:35 GMT  
		Size: 48.1 MB (48122998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dbaffbd2f051080545d16bda2547b8d9c7bb1bc699a4cadbe2bb944cab52ac`  
		Last Modified: Sat, 28 Apr 2018 13:03:10 GMT  
		Size: 887.9 KB (887945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70474ba254f6c36cff935a2eab99f70c2c0140aba063cecfaa146d861dfa4ca`  
		Last Modified: Sat, 28 Apr 2018 13:03:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb79373a92ac80d47a70e2a5accafb9d97bdde01da95b7d977a0cab4ce4a4e`  
		Last Modified: Sat, 28 Apr 2018 13:18:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa052ba49644b5f8f2161a37f4731327141bea66931ae50db4320c17d4948c4`  
		Last Modified: Sat, 28 Apr 2018 13:19:24 GMT  
		Size: 244.9 MB (244922219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:7b5beaa6edbfa2b2907d266d815b1bb4d0f3fe9da09a1955809ce36d7923055f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353462796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72dd1cd283cedb91111e1677615c97fb1aa11697e79b414083ded270389a933d`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 12:02:19 GMT
ADD file:b8fa078b9ddc39737b1c9eaeea11c4d1a71fb53d2ac6747fa0eab346280119a5 in / 
# Sat, 28 Apr 2018 12:02:20 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:39:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:39:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:40:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:43:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:43:01 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:43:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:48:11 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:48:11 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:48:11 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 12:48:11 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 12:49:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 12:49:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36ef86ab3a0249a38384d63e39dbf85bd3f64d4e9ae0179795e2da5754d3fc`  
		Last Modified: Sat, 28 Apr 2018 12:13:46 GMT  
		Size: 44.2 MB (44193727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a133ab46fd64490c435c445d59c6bcc61f77f74b6569886884ee56b2cb82055`  
		Last Modified: Sat, 28 Apr 2018 13:03:57 GMT  
		Size: 7.5 MB (7512678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac41f95fa9c3d47f9424aee3d8e33aa3d9595919788960ec7e1f2141445755b8`  
		Last Modified: Sat, 28 Apr 2018 13:04:00 GMT  
		Size: 8.6 MB (8567704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5735fb90a880924e6b7625ff9cfb4e7cf8973294fa9f01be5e3cddf53dae96`  
		Last Modified: Sat, 28 Apr 2018 13:04:59 GMT  
		Size: 46.0 MB (46019334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a850a10f35a760047a8ca933061d6deb0a65b77f40a9230af44510bd5e509acf`  
		Last Modified: Sat, 28 Apr 2018 13:07:49 GMT  
		Size: 870.5 KB (870530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efe03c62fa5c4700923e8bb63fd0836bcf1cc30f5398517a7435068256e2869`  
		Last Modified: Sat, 28 Apr 2018 13:07:49 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca296661a2a181c0487f9c4ac3d6545b02986a80cea12c18dd6e73e791158f1`  
		Last Modified: Sat, 28 Apr 2018 13:18:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10858ba0d7a9c9c43d76c6b496cb0764482355e0d105caeec25518116fed7606`  
		Last Modified: Sat, 28 Apr 2018 13:19:06 GMT  
		Size: 246.3 MB (246298454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6655ec65af1a0801de9d1cadf6a07675c188e9721f189a15106bf7278e7e757f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.6 MB (364645619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1bac2b76add71181de8f6f57d32e30e4c8d299ae362a344f16be0a9c3a169b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 30 Apr 2018 23:27:31 GMT
ADD file:ebaa7f02c60ac8138d085ce979847d36a1a8ce243bcef9b7e81e3e667d060dcb in / 
# Mon, 30 Apr 2018 23:27:34 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:53:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:53:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 07:56:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 10:27:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 10:27:46 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 10:27:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 10:58:26 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 10:58:27 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 10:58:28 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 10:58:29 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 01 May 2018 11:05:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 01 May 2018 11:06:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed5c004c8effeb24e6eee983af18662b0d28341fbbd46983746399c6df3358c8`  
		Last Modified: Mon, 30 Apr 2018 23:47:36 GMT  
		Size: 45.6 MB (45610129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5743e58122723138b73948d263f8090439daf95e6a0f6d8a72c0cfeba04d9e`  
		Last Modified: Tue, 01 May 2018 08:54:36 GMT  
		Size: 7.8 MB (7838582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6678c9321b987d7647d0e701de180a537197d3a09972d9360f57fcbb4bcb50`  
		Last Modified: Tue, 01 May 2018 08:54:37 GMT  
		Size: 8.8 MB (8847158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cf3114c20810dcce0e6e0b591864a1d4457b455549e700ebb985d24097b899`  
		Last Modified: Tue, 01 May 2018 08:55:12 GMT  
		Size: 50.7 MB (50667152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c7655d6e06f904e6313c08e9932b742e8fb3b23280f0da563a77c2701e5ba4`  
		Last Modified: Tue, 01 May 2018 11:44:32 GMT  
		Size: 880.5 KB (880545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a59d35fe8a66f25d70ed68dccdbf501485ebc8f7a7fd6fb8f09f687c776458c`  
		Last Modified: Tue, 01 May 2018 11:44:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9396efbf9b89baf7876342035ae59bbbb85391f25b9ea9935750d529f4ef974`  
		Last Modified: Tue, 01 May 2018 11:53:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25855b2419d5c4b8c9b247aeb6b64b7bdc4c2422d430ed3210b506ef340821d8`  
		Last Modified: Tue, 01 May 2018 11:54:09 GMT  
		Size: 250.8 MB (250801684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; 386

```console
$ docker pull openjdk@sha256:f432e62efe7de34fd329311e70c164f23dfe03dc1722a532b34e1c4c0cff7eaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.4 MB (403425216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa74ddbadd178e1f35783f239c9b57596e580f9f5ff7b85a793b77ede68669bb`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:49 GMT
ADD file:cb21908d8f286f1381ea180209120314676afa1ce4d5d480e0310fe70a4c96d4 in / 
# Sat, 28 Apr 2018 10:40:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:42:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:42:25 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:42:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:50:30 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:50:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:50:30 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 14:50:30 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 14:51:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 14:51:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:33fb16074d5de3f73c0e2941c01c03e5dc69cfb8f568b7fbc3e29926b575fef0`  
		Last Modified: Sat, 28 Apr 2018 10:47:25 GMT  
		Size: 49.1 MB (49090181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1221b68ac3c47d06c1341ffe090ec03398349bceea7339f16cc35cfc2d4d3e47`  
		Last Modified: Sat, 28 Apr 2018 12:42:56 GMT  
		Size: 8.6 MB (8592005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5f5c3224bba80e122d520e5cb80f4eca7c9d3dc1118c27465db2e68af1bf5f`  
		Last Modified: Sat, 28 Apr 2018 12:42:56 GMT  
		Size: 9.4 MB (9388693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91aebfe730bc77de51767bdecf092d135bf049f0a7507ca124d7d264a937fab8`  
		Last Modified: Sat, 28 Apr 2018 12:43:27 GMT  
		Size: 54.5 MB (54451652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43315f3f6ef9afc8a82b114fb7ddd1803e477b19f1fe8d724461102c92d91fcc`  
		Last Modified: Sat, 28 Apr 2018 15:07:47 GMT  
		Size: 903.0 KB (902997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34e1964937cea05b49de35253b06641aaa8fa344ba7f566091910be8e5cdd90`  
		Last Modified: Sat, 28 Apr 2018 15:07:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eca10baad4050ee30369f3538f0d7fc517ae277f6d9ea4c468fabaeef7ca1a`  
		Last Modified: Sat, 28 Apr 2018 15:14:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e38b84a049760884f397b73a5f2348e668484e5731abb0b261eb6546bd20c9`  
		Last Modified: Sat, 28 Apr 2018 15:15:54 GMT  
		Size: 281.0 MB (280999320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:66da2a3421e119a59dc4588d24b2f16ee351c05880fbd5bf1a8a4ab777167ef1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381671845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbbebe91ad2875a750ac90e8eeaa3771562f64bb059f6715dc1f60cbf131747`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:13 GMT
ADD file:320268259acdc4e2a105be735ea4ee0cb1398bb05ce729d46f4a54fa3c3c84e3 in / 
# Sat, 28 Apr 2018 08:19:15 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:59:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:59:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:02:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:02:37 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 17:02:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 17:28:16 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 17:28:17 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 17:28:18 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 17:28:19 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 17:31:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 17:31:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:354f055c313d4d07201e01fd4de9af4aca89e3df17572870e56c5b8945e48443`  
		Last Modified: Sat, 28 Apr 2018 08:27:42 GMT  
		Size: 49.8 MB (49754912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ee43555042b4504f9abfd5ee30cca506ecd82ea7e7c0ad8585e2f9f9fe550f`  
		Last Modified: Sat, 28 Apr 2018 10:40:34 GMT  
		Size: 8.2 MB (8210961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437ac69577ea2b14f065cda80eaeb0984300f029adc35d3f0992d36b61dba2ce`  
		Last Modified: Sat, 28 Apr 2018 10:40:34 GMT  
		Size: 9.3 MB (9348582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f796a3b0f9dab68b7caf9763699e0beb4ecc93db30d4d21f0f7614656f5763`  
		Last Modified: Sat, 28 Apr 2018 10:41:11 GMT  
		Size: 55.6 MB (55623998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a01a71ddc659d0d5bff00323584b14cae408841eb82ca3fa9f47f62937b613`  
		Last Modified: Sat, 28 Apr 2018 17:56:28 GMT  
		Size: 889.7 KB (889668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f7bcd7974eb4cc8d350cc5d38448b17368c3fbcc7fce3eecc171ace3307160`  
		Last Modified: Sat, 28 Apr 2018 17:56:28 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f44263ccda43d876f4cb07ef4ee00bb3192791d6476e164208c300481ff2aa6`  
		Last Modified: Sat, 28 Apr 2018 18:02:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8623d293a796ed8d34faf971564c09a170fd9653c2fbc4ab2c013d552b834d19`  
		Last Modified: Sat, 28 Apr 2018 18:03:28 GMT  
		Size: 257.8 MB (257843354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:2e5a1aab265a337790f6687bdec29aaa54c3d2279e9ae70f32ab31d8b3399a2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.6 MB (351611517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97fe22f17f97825b7773ec57f9b5758fec5027335e5ea4df43c6fb06f8389b21`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 11:43:52 GMT
ADD file:2ebc77cf35fadaf6ffd85f0d203bf60b217e15aa3c15737aac14f71008535107 in / 
# Sat, 28 Apr 2018 11:43:52 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:16:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:16:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:17:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:20:30 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:20:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:27:20 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:27:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:27:20 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 14:27:20 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 14:28:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 14:28:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:893cc85742608c84d1d6314416656d650a83dae134d0d1e22a839b39a03cbf3e`  
		Last Modified: Sat, 28 Apr 2018 11:49:42 GMT  
		Size: 47.4 MB (47350246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4c9d5833dfc4d2317f54d84f70e995c26da6f54d5105c990e33268c58298ff`  
		Last Modified: Sat, 28 Apr 2018 13:30:36 GMT  
		Size: 8.1 MB (8109891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f927619ec0f240db52b999df470fca87cc918c6f4f48eb0d32b719ee0afc06c`  
		Last Modified: Sat, 28 Apr 2018 13:30:35 GMT  
		Size: 9.1 MB (9076061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38ed6e78c93924ad303260b3acff16b83f0f2a3e06865b911ebe750ccb3eec0`  
		Last Modified: Sat, 28 Apr 2018 13:31:04 GMT  
		Size: 52.1 MB (52091911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431704a110f14f73d164fc66b48c820cc067870244d52ec8ac0722d2e5f7ad43`  
		Last Modified: Sat, 28 Apr 2018 14:38:42 GMT  
		Size: 905.6 KB (905581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf66de88ded70b1e1ca29face2f84f0bd3fdd97875230a19233fd07bd1dd7b`  
		Last Modified: Sat, 28 Apr 2018 14:38:42 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91234193e88455b7fbf3bc0d35764760e065cd16970b1322b80dee7b8cbdfac`  
		Last Modified: Sat, 28 Apr 2018 14:49:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9aba9476e44dbe1d6706dc3d8ce433758ec2fb62399bae87f0d7dc6ed68296`  
		Last Modified: Sat, 28 Apr 2018 14:50:18 GMT  
		Size: 234.1 MB (234077457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
