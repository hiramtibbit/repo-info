## `openjdk:7-jre-jessie`

```console
$ docker pull openjdk@sha256:02ab91ad07d18d6a05eff19888d85351b51aa305d3ba64d9c50b6bb8649df0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jre-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:bdbc2850d01c5c0e7cf37d4985116bc2d46733a85713cb0a552cd4c6587a684d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154608824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062bdcc89dcbc30057a308c8ff5a22fc309040176d9263c4ac57d4f7827080ca`
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
# Wed, 08 May 2019 05:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:20:32 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:20:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:20:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:20:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:20:34 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 05:20:34 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 05:22:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:02ef9e65a664c31717d28b5860445405dc277057ca1a1e3aabdde053669bc4f0`  
		Last Modified: Wed, 08 May 2019 05:31:34 GMT  
		Size: 795.2 KB (795180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2786dccb0cc0174c18ba7cea8cb9e3ad67a9c6967590c1b2aa93a9947a1707b`  
		Last Modified: Wed, 08 May 2019 05:31:34 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b809e89f352cb980641786f9fed5c83af31c74caeca25ed068677fe9149d9c6`  
		Last Modified: Wed, 08 May 2019 05:31:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e9aefc2bf740c48f120043ec92fe21954194b1688a49d690b0485193294612`  
		Last Modified: Wed, 08 May 2019 05:31:53 GMT  
		Size: 81.9 MB (81885912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:9f84045f4f2d88a9e97497d16c9eafa11de7e65662afc30b235d5c61f67b704b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141940254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f104ca210bfdc67643deb5306aa2dd3c09d1d905fedb5718b9b22c019bb5b6`
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
# Wed, 27 Mar 2019 12:15:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:15:23 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:15:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:15:26 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:15:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 09:05:42 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 09:05:42 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 09:07:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:086d84cc67194632fd36b4a2c7f94a08048dbb5ca4ef28f92ef4156df1138269`  
		Last Modified: Wed, 27 Mar 2019 12:24:16 GMT  
		Size: 788.0 KB (788005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf3fe974cb2ee5f36b4434b63904188b84a689cbf8acbdff31c761907de421c`  
		Last Modified: Wed, 27 Mar 2019 12:24:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5c6c832f42e67623e21f2afd845a48cbf9b837a6af342e954a6fe104b25307`  
		Last Modified: Wed, 27 Mar 2019 12:24:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048931d6933451aacb958c0beb953bbf4f35e8db63f505b8f156bfc6d6d1a9e2`  
		Last Modified: Thu, 28 Mar 2019 09:14:22 GMT  
		Size: 71.5 MB (71547950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:accf2f18228080f4180538cde92ca4a2a39b8a7ee5f2cbae029b1e40d808b026
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137865146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47190cb4f9e130b1aea983bf35c9bf245738592ccefc85ce2331bafc3f874ef`
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
# Wed, 27 Mar 2019 15:12:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:12:50 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:12:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:12:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:12:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 12:13:10 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 12:13:10 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 12:14:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:d0cec6905e7c7773ca64827de294181302b4a8e0360e1369e8cad9f909a073e6`  
		Last Modified: Wed, 27 Mar 2019 15:19:29 GMT  
		Size: 762.5 KB (762514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47399be93f3b9bdf497af495b1a93fce5c3545b2a6554295d9d8d7d5d88dd4ed`  
		Last Modified: Wed, 27 Mar 2019 15:19:29 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833ec45e4c67a1fdf838763f308556c831d30f487bc2c45a4e40885375b495e8`  
		Last Modified: Wed, 27 Mar 2019 15:19:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b3ef13aac4085dd15f4f8008e6a1390c5bc1e73cef529db0cb72f011c36f1c`  
		Last Modified: Thu, 28 Mar 2019 12:21:16 GMT  
		Size: 70.1 MB (70089661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:29c54140ddbabde17386ffda82c4244527f3a091415f3e74b3b9ce766650776f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (166995307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14dee88ccd1980a679ad169c43ff4764ce37377349d4e8d6b764f846f466e12`
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
# Wed, 27 Mar 2019 18:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:16:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 18:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 18:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 18:16:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 01:08:37 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 01:08:37 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 01:12:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:da7dd3eab8457e1db9f7e61782db95447457b25e84dc5a3b4de78e6abe84863a`  
		Last Modified: Thu, 28 Mar 2019 01:20:01 GMT  
		Size: 798.2 KB (798196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c11c0abec218a6046143cbd4e93231f35c48ea574784c7ebe191f90b35b5b5d`  
		Last Modified: Thu, 28 Mar 2019 01:20:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5858b4b60edd3846c89d08367babf868a169fef5cdcde7161cd40509c5fb0e4c`  
		Last Modified: Thu, 28 Mar 2019 01:20:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbe1dec5c135ad1f520f3d0fabbd384d6a073487eb3871c020aef81e5d3746d`  
		Last Modified: Thu, 28 Mar 2019 01:20:24 GMT  
		Size: 91.7 MB (91743045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
