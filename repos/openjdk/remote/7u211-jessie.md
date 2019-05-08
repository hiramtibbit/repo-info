## `openjdk:7u211-jessie`

```console
$ docker pull openjdk@sha256:8b81bdecafa8a78482dfde89ce9af9bda2a10efaed426d8433a0a5d45fc87bb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u211-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:af315adf0a8018e23775999157685a0adc14f66dba3e363388c4c92f52eee10b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (214042477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f71cbb0d91ef7f16c039f1ebfc57cd7fdcbf5f0b748576039119f3bf693d2c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:30:19 GMT
ADD file:47970bdb20c0c84f9d64aeb394f690c79bfceefd0331c1fc4041af1de0d5bcb1 in / 
# Wed, 08 May 2019 00:30:19 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:31:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:34:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:11:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:11:52 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:11:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:11:54 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:11:54 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:11:54 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 05:11:55 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 05:14:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:db0035920883a73fe23c2f4c2c361e2508a9f8b9b410080817800c1f906323b7`  
		Last Modified: Wed, 08 May 2019 00:36:03 GMT  
		Size: 54.4 MB (54385705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ebd83b4a4725c8e5e54f2aa7d3ee259492cbb89de0a4315c3533b84b32d3ee`  
		Last Modified: Wed, 08 May 2019 01:43:57 GMT  
		Size: 17.5 MB (17541651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf624e5b31148821dbdc3eface7d221c3a94d63cffbf6ced906ba1c6e4a6cde`  
		Last Modified: Wed, 08 May 2019 01:44:11 GMT  
		Size: 43.3 MB (43314266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acab6bfb3ef31bf6938b8aa233a868742428d5f83d3d9a54312e210ab1ea679`  
		Last Modified: Wed, 08 May 2019 05:30:45 GMT  
		Size: 828.5 KB (828451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c00f0a5c1e282315bcf46cff1cb0ee2f97966ba585111298db299b516816439`  
		Last Modified: Wed, 08 May 2019 05:30:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98133370871a9e0b296ba9f371143319edb6e8cda29434e91339994a65f5c126`  
		Last Modified: Wed, 08 May 2019 05:30:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d21ea60fc5563d3735c99029fd306921c7812a80bb109af2d65c4fb8e98992`  
		Last Modified: Wed, 08 May 2019 05:31:00 GMT  
		Size: 98.0 MB (97972027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:1c36c9d4e9ca27f30b644140a011f8a0066f1d894bf27d8974cfc34bfce1303f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196624638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bdc4248a6791d8b05e26a8db62e3cc43e9f01c70dfb0b7b3a830f5b0d08f86`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:50:00 GMT
ADD file:997d555f96b00623491142f0b815ef37769d2f880a8b40c0fff320960771453d in / 
# Wed, 08 May 2019 08:50:02 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:53:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 09:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:38:22 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:38:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:38:25 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:38:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 11:38:25 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 11:38:26 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 11:40:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6d0312bf9f8207dd961236544595b270fcfea05ff71dac15ac7c00f5e0427a7d`  
		Last Modified: Wed, 08 May 2019 08:56:45 GMT  
		Size: 52.6 MB (52575055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c5b66973862969fdf9e67a84145501ba3d04f73b4611e6d46d7728d5e9e606`  
		Last Modified: Wed, 08 May 2019 10:06:51 GMT  
		Size: 17.0 MB (17032492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8ddefb956d3a90bcc7004952e9d431ca2679233ae2b10f67b4f95c6649af4a`  
		Last Modified: Wed, 08 May 2019 10:07:11 GMT  
		Size: 41.2 MB (41156153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00b739c112c8bc8d19371f80af58c6edcd494e68b364101cd48c3db3d4e58b`  
		Last Modified: Wed, 08 May 2019 11:53:52 GMT  
		Size: 821.7 KB (821690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ff629078483634e008bbb48e497f4fac6896fa52174579bf485d1e95f56af2`  
		Last Modified: Wed, 08 May 2019 11:53:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06e98af39cbdb9cb2a3c5abc100cfa41f2f332ce9ac66810306a53fa77d41bf`  
		Last Modified: Wed, 08 May 2019 11:53:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a9b3dd55505596ed67a9e019fe9c28a5da70aa7b85d520781af92a70056cc`  
		Last Modified: Wed, 08 May 2019 11:54:06 GMT  
		Size: 85.0 MB (85038870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:29c735de80f11b563fc46de4707d74c811ed17f7f3ce66a6b5463dd854f2dd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191254512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4058f31ba431f66aa26564cb6f403765ba0b4da4229a62a5a453d4da9fc9f457`
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
# Thu, 28 Mar 2019 12:08:09 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 12:08:09 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 12:10:57 GMT
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
	-	`sha256:9f08eabf655e6c5db760d7cde7860c2453fca40eaf75b3b54b8874e224a90023`  
		Last Modified: Thu, 28 Mar 2019 12:20:22 GMT  
		Size: 83.7 MB (83680615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:f8d51c9d03ea98fb75095c599d369b2488aec12f06da32452c7a9e7b61cc2e0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226905173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9373c859789c89bb41686016183d4323d38be6f83e48ff8821b4149ff2d0e80`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:40:06 GMT
ADD file:4597738366efef5a2cfc74617fde1b9d110154d87acfa9505ed5bcea17a312a7 in / 
# Wed, 27 Mar 2019 10:40:07 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:45:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:49:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:00:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:00:27 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 18:00:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 18:00:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 18:00:29 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 01:01:06 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 01:01:06 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 01:04:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1171cb1afc38a4920f2864f7cd16e4f1da2511cf4b8d6453ad73a930d29eb757`  
		Last Modified: Wed, 27 Mar 2019 10:46:45 GMT  
		Size: 54.6 MB (54604040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49de456f1bffc13c284367c40d3d8822fd5711f8971a17faee9940cc0c7397f6`  
		Last Modified: Wed, 27 Mar 2019 14:07:54 GMT  
		Size: 19.8 MB (19849648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a04308203c1ae7701d6298a9f8f97880b9c5cd6ff41a3ceed1a2986525762b7`  
		Last Modified: Wed, 27 Mar 2019 14:08:08 GMT  
		Size: 44.0 MB (43964550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057f504ddf61f5df952288aa029628fa9cb9a3a2b7bac63dfcbd9b73d6fd8aa2`  
		Last Modified: Thu, 28 Mar 2019 01:18:58 GMT  
		Size: 831.3 KB (831275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f4211054f407537fa71b50260efbfaae7c91acb6c4ef50b90555e0f81fc7fd`  
		Last Modified: Thu, 28 Mar 2019 01:18:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5669a5be45d7f3c6fd8c4fd61da8f1db91c66f47d7edfa3a6ac4170c8e2fbc6b`  
		Last Modified: Thu, 28 Mar 2019 01:18:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab643256aebd0a94729cc21cf02726c3b42d92e9e6b050289e27587cd48e5bc`  
		Last Modified: Thu, 28 Mar 2019 01:19:26 GMT  
		Size: 107.7 MB (107655282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
