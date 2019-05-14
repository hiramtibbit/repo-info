## `openjdk:7-jdk-jessie`

```console
$ docker pull openjdk@sha256:75a05dbcd254fdde1a284c5cc47a8f7d5387cd517cbf9e66d50d45da1c695022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jdk-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:d3c81d95b9ce671926878aca456252f698b84c54dca2fc0fe33ba1d02f201e27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214051946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d735a2057e6047fb7a6d391e9397f350a93078c443e9fd804a3deba46cc4ab28`
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
# Tue, 14 May 2019 00:26:30 GMT
ENV JAVA_VERSION=7u221
# Tue, 14 May 2019 00:26:31 GMT
ENV JAVA_DEBIAN_VERSION=7u221-2.6.18-1~deb8u1
# Tue, 14 May 2019 00:28:59 GMT
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
	-	`sha256:ffd6078faaf1d330fe96574abbccae13565a44628893cd333eaf9e766d3db88c`  
		Last Modified: Tue, 14 May 2019 00:38:40 GMT  
		Size: 98.0 MB (97981496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:6b950a94b95278afa4ababe84a6a5e65931931c1969c6214ecedad2c529c5d98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196632762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c93d8c8224ce2988019d14475bbb66e9d3731664464546855aa070661e4692`
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
# Mon, 13 May 2019 23:56:27 GMT
ENV JAVA_VERSION=7u221
# Mon, 13 May 2019 23:56:28 GMT
ENV JAVA_DEBIAN_VERSION=7u221-2.6.18-1~deb8u1
# Mon, 13 May 2019 23:58:18 GMT
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
	-	`sha256:95e72c65984e20a32cab4a972bffdacbedbbcb8ef60bf9b9a08b5daafcf4657a`  
		Last Modified: Tue, 14 May 2019 00:05:29 GMT  
		Size: 85.0 MB (85046994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:316d2b2454ae7c54bf5fd9837e146c65b74e506310863dbd8c59db66b03966d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191270959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91d1fcddbd1ae5927becff2fcddbf6069ee5c1c0594e12298a142815d84dc82`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:59:37 GMT
ADD file:8608ce29a1acb528a48ba5eb2c83088709ec606374a9247e14b143e6893abb4e in / 
# Wed, 08 May 2019 11:59:38 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:56:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:57:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:18:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:18:04 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:18:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:18:07 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:18:08 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 13 May 2019 23:58:42 GMT
ENV JAVA_VERSION=7u221
# Mon, 13 May 2019 23:58:43 GMT
ENV JAVA_DEBIAN_VERSION=7u221-2.6.18-1~deb8u1
# Tue, 14 May 2019 00:00:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:15cfb32571a95dcaa3a8408897c92bd923327a52abf09ce9c125ed6b5e9257ef`  
		Last Modified: Wed, 08 May 2019 12:07:22 GMT  
		Size: 50.3 MB (50297181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284ec6226ea641062369562b37a4579db6937f39a7a9f2141e2aee7b588399c8`  
		Last Modified: Wed, 08 May 2019 13:09:39 GMT  
		Size: 16.7 MB (16718239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f65834a938bc59e0539fdcf3bc7d33343e54cb9e0160efad5ae0979f1e125f`  
		Last Modified: Wed, 08 May 2019 13:10:00 GMT  
		Size: 39.8 MB (39766231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f145832e9b87c0e4be3ebb018f7bf29831954bd8ef0c314f2adef48d93a3ac`  
		Last Modified: Wed, 08 May 2019 14:34:47 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06169c95c7dcb130c2f5313cc8e44a8b2a06c520cb2590f34807a9623c341c09`  
		Last Modified: Wed, 08 May 2019 14:34:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e7b223f865ac82ba351900acb5cd72001aafd3af5903efb3a2836a9b729681`  
		Last Modified: Wed, 08 May 2019 14:34:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce20c196988404d1722f9c8ade85b52fc2984e162eba966453e029b2e7fb389b`  
		Last Modified: Tue, 14 May 2019 00:08:08 GMT  
		Size: 83.7 MB (83693341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:67f6adcd2a7cb4eb557743f62f15d9cf8738d8e17cb1bcf842a9a5c199aecd81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226920160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b622f5f3cade7aae425e7d2b6db2247bb373085cedfd6c4815ecd67bf255cdbf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:42:11 GMT
ADD file:383a4648827e4920fc38f6ee93e3a1b0198694530961012a3ac4ff2b60d469f0 in / 
# Wed, 08 May 2019 10:42:12 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:57:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:01:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:20:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:20:17 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 22:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 22:20:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 22:20:19 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 13 May 2019 23:46:18 GMT
ENV JAVA_VERSION=7u221
# Mon, 13 May 2019 23:46:18 GMT
ENV JAVA_DEBIAN_VERSION=7u221-2.6.18-1~deb8u1
# Mon, 13 May 2019 23:49:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6b6ce677eea2e67f795221107c4a01e07d07480fa9706aa20331a88f2a6f8617`  
		Last Modified: Wed, 08 May 2019 10:54:05 GMT  
		Size: 54.6 MB (54605091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f48be8120c22e9a5375fa05aea15ce2e87362772a9df12046625d8fcaba344`  
		Last Modified: Wed, 08 May 2019 19:12:01 GMT  
		Size: 19.8 MB (19849905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e2f0da43ea430545e5a12be0e5a2ef24f151c7a76853985342d7075ee644ce`  
		Last Modified: Wed, 08 May 2019 19:12:15 GMT  
		Size: 44.0 MB (43965047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36160fa934d7cbead72438930e789d96a41ef8cffa846c2c2a419abc6e8f35aa`  
		Last Modified: Wed, 08 May 2019 22:53:22 GMT  
		Size: 831.3 KB (831284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0399d6b6b0100410c5016b3956bfee95f1f96ef19211476ae02530207b72d92`  
		Last Modified: Wed, 08 May 2019 22:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579ba1d3b4fe495d6700fd65e096ec84ddfb4b4c238a69c0d1cfca3dc71ad277`  
		Last Modified: Wed, 08 May 2019 22:53:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc4481fb39aceb04c528145f12d53a7662a89b64049c724b71be67eb85ea2a0`  
		Last Modified: Tue, 14 May 2019 00:01:48 GMT  
		Size: 107.7 MB (107668455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
