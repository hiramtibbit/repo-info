## `openjdk:7u151-jre-jessie`

```console
$ docker pull openjdk@sha256:0b7d786202cc7a76be5ea67623c3592d77527435236ba1e666828469026fb934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7u151-jre-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:7aa70cb6c39ccc44d8650a4074de6ca4de2170bdb3f95927a2eb33da99843745
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.6 MB (189577323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3a6b49753f628431fdd3ed2d1927c90584abd477691c41343d21707ebb89dd`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 09:08:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:08:59 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:09:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Feb 2018 09:09:13 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Feb 2018 09:09:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Feb 2018 09:09:13 GMT
ENV JAVA_VERSION=7u151
# Sat, 17 Feb 2018 09:09:13 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Sat, 17 Feb 2018 09:10:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de2295e0d5b99336bf7d96ab156571ba1c97e71747b936d65032020ab0d3242`  
		Last Modified: Sat, 17 Feb 2018 09:30:28 GMT  
		Size: 795.6 KB (795583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a518a1915ba7ff1f46f713419e5a567d8c4daa86bcc35cde15e8a9c2dab0860e`  
		Last Modified: Sat, 17 Feb 2018 09:30:27 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b5a26f8bfc75ae4efad7ff2b587179e84248c0fe11828b9186632c2f9fe71e`  
		Last Modified: Sat, 17 Feb 2018 09:30:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1143db754843f9f4b8fd563bc64f1d2be0130423b3c1353861def374981533f0`  
		Last Modified: Sat, 17 Feb 2018 09:30:51 GMT  
		Size: 116.9 MB (116906687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:fdd042471cb5fc4b3f2da839d0cf50f6448f269315f7efdd55a0645c36ea43b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164563393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ff7201bee6a9f1781594f9278a1050feee7c3e94f430b6615429df65436b3d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:43:26 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:43:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:43:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:43:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 21:43:29 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 21:43:29 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 21:44:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8948ec35c02ba48d20c3939c77da1c7007a6ff4bef06cddd459ae1bb346681`  
		Last Modified: Thu, 15 Feb 2018 22:01:46 GMT  
		Size: 788.4 KB (788352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af684fc56672c149ee56034699c751b4402923ec880e27f8e0f01f580f443d7b`  
		Last Modified: Thu, 15 Feb 2018 22:01:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ead69ccb2c8dd71d5e92429c46ce15f0e9cbbe3e70e1fcf4a593c9624e31a77`  
		Last Modified: Thu, 15 Feb 2018 22:01:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94195b60d4cac68430900f136f461cf1b1a64b312492d980e7199a28d74382a`  
		Last Modified: Thu, 15 Feb 2018 22:02:07 GMT  
		Size: 94.2 MB (94228015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:222181551a1c29f14050ee8086c5822320b35c5341ac87a9e2ed2347d9ec7663
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170442599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:027292fa91e84233efed9f68684b0d4e65568a50af868f56fff45bfb48297e57`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:07:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:07:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:08:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:08:11 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:08:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:08:12 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:08:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 15:08:13 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 15:08:13 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 15:09:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8a07b6e86b2c65c308a85824c9f5b02164077ed676afac0b1a88e545d9ab47`  
		Last Modified: Thu, 15 Feb 2018 14:21:46 GMT  
		Size: 18.3 MB (18264834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bb8495d2bf88d388191709b9e507f5c2bbe41c0aa579ef8549cc6e5dae2cd1`  
		Last Modified: Thu, 15 Feb 2018 15:39:02 GMT  
		Size: 763.0 KB (762950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db479f47ce6d1b50f3738f1555cf514a33f6be8a43b65b8abe89ecd8abcaae2f`  
		Last Modified: Thu, 15 Feb 2018 15:39:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2027fef848c443c2f007a26ed605badfd723c5f3609e8a238e00f18eb2f1534`  
		Last Modified: Thu, 15 Feb 2018 15:39:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ab0273f7a654d13a1bfc0973e23ad5e39125755feb633eb320825369403933`  
		Last Modified: Thu, 15 Feb 2018 15:39:23 GMT  
		Size: 102.7 MB (102713037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:ef4dd95af315056d993f2793b0da445c8a802ebc47be9a6b3b04e9b86805da12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 MB (202769812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45acea1149aa2c6862a056653303355aa8ca22f6de21a5deb74538e7125c0374`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:34:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:34:26 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:34:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:34:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 18:34:29 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 18:34:29 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 18:36:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41171fdc1dc83289b7f8c9d60a40536d15809bb538798b55ee6e0eb0afeba88f`  
		Last Modified: Tue, 12 Dec 2017 19:35:05 GMT  
		Size: 798.6 KB (798582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdd455ef9100bd829a49e9e9d9f9c13dfcdd6e0085edaae464cd1ead6675ca1`  
		Last Modified: Tue, 12 Dec 2017 19:35:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01a4360030553c8fee4c62b14901be137180668540d16a4fe36022091fd2756`  
		Last Modified: Tue, 12 Dec 2017 19:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fc3b433a8141a22d06f0b3a4416f9d0431e0a3ae9848df5188b8a040480592`  
		Last Modified: Tue, 12 Dec 2017 19:35:39 GMT  
		Size: 127.6 MB (127597108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:a29eb0842f86f86772d24ef597e52de5a4cf6684e065ace404cbc8e467d259f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167976963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c1587a12846b913b4b878db44b9522a428921547995d6f268479476f0675f5`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:41:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:41:26 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:41:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:41:35 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:41:37 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 12:41:39 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 12:41:40 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 12:50:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e115caf0b90102f293e585f18e067814aabf94a3b5e0cdd0faf1c4225f6c962`  
		Last Modified: Thu, 15 Feb 2018 08:22:40 GMT  
		Size: 19.2 MB (19202823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5afc426293cea50d371da125a9c88188c029cb4ba475aae0043c21dfa23c0f`  
		Last Modified: Thu, 15 Feb 2018 13:51:54 GMT  
		Size: 791.4 KB (791351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1938493a06a7aee1fcd7a77eccef20fe34a78a07af5f8d4c7c5024937baab30`  
		Last Modified: Thu, 15 Feb 2018 13:51:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df793389e3a40d04ddb2cc33d11c0a9cedea5ca62c3f900c75cee87654267b3`  
		Last Modified: Thu, 15 Feb 2018 13:51:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4366b9b8e9bfb185e39dd211eb054f286a2baa0455b96f67d8ca756be07e56f8`  
		Last Modified: Thu, 15 Feb 2018 13:52:37 GMT  
		Size: 96.2 MB (96165339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-jessie` - linux; s390x

```console
$ docker pull openjdk@sha256:f32a93ed96e2bc2bb343c361ab19acf59026cb805d0cfef71af51e632ec5f981
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168762554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6637243ee431f6f6973574ab94aa1edd4767c53240487cf3f154ad6fe60ab56`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 08:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:25:01 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:25:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:25:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:25:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 08:25:02 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 08:25:02 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 08:25:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4838feadd0a2ccdcac882ca8ae3d3e2eb2c363c830a68a4f918272ac68fb80cc`  
		Last Modified: Thu, 15 Feb 2018 08:44:05 GMT  
		Size: 804.3 KB (804275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642002a7f7ed80d900a0445a827753c459365147acbfe69fa6ebdf8269c718c2`  
		Last Modified: Thu, 15 Feb 2018 08:44:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371d87926b713022401298c92a04f5b3fe26d86f739827351d64c1ce919332d5`  
		Last Modified: Thu, 15 Feb 2018 08:44:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af37e6da68c52b94f4fec50aba7dba7728bf7b7b91ed010e6ac617058362d7de`  
		Last Modified: Thu, 15 Feb 2018 08:44:17 GMT  
		Size: 95.7 MB (95690992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
