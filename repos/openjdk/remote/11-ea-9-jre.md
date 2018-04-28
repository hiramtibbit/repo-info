## `openjdk:11-ea-9-jre`

```console
$ docker pull openjdk@sha256:c9c7d935c14a94a4b3f2c9abb6af139950321e42f15c4738922135a93e564d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:11-ea-9-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:855eb11260bbe6713a23e14af125cf4a0352de915ba73f3fdb5c0b51b3f3d93c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250726466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34fc714f51a3e6fd80374d08f2ca86bd1656cddc69226710b21f9efa8e5df57`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 09:47:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:29:04 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:29:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 19 Apr 2018 22:08:10 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 19 Apr 2018 22:08:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 19 Apr 2018 22:08:10 GMT
ENV JAVA_VERSION=11-ea+9
# Thu, 19 Apr 2018 22:08:11 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Thu, 19 Apr 2018 22:08:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404c3612208cc3bd4dd7897653dbfa0565f4b23ff6631362c2e5e397140ea217`  
		Last Modified: Wed, 14 Mar 2018 11:41:28 GMT  
		Size: 855.5 KB (855513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258506b48a3e472f55b5be344d0f6eb6bc34ccfde90530cc1494e795c49b2541`  
		Last Modified: Wed, 14 Mar 2018 12:27:24 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec23a3616690f82636d41e2bce1efb6279474baa811b0ad59d7325f7b2f5e7a`  
		Last Modified: Thu, 19 Apr 2018 23:55:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6302d66b5269a51aa3e7ce5c742aff5d6e936bb899b3ec973ba045b4508996c3`  
		Last Modified: Thu, 19 Apr 2018 23:56:09 GMT  
		Size: 184.1 MB (184072107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-9-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:5886940852529250ea015ef7fe8ce2d0d0ee2700278231e86eacd41642ff6db5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228860530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b981623239c790d66693d6f526bb1880830134c961753d6068dd583575f0f16`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:39 GMT
ADD file:289dd78ee91d70cba0d1bc2f296c3c14565c2fc5a7545ded07d727de72e2c7af in / 
# Sat, 28 Apr 2018 08:51:39 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:31:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:31:12 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:31:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:31:14 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:31:14 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:31:19 GMT
ENV JAVA_VERSION=11-ea+9
# Sat, 28 Apr 2018 12:31:19 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Sat, 28 Apr 2018 12:32:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:d05096edd30bdfd88557624a05e45665c59219ba8e34a3c28a70de0644adc453`  
		Last Modified: Sat, 28 Apr 2018 13:00:28 GMT  
		Size: 849.2 KB (849198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be7a633c7ee1104e0233630270c7efb931c9fbecce6e0812a13e74adbb27a35`  
		Last Modified: Sat, 28 Apr 2018 13:00:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afb2b2031f362ea9d30450249f45d7316250e4b828381347df124abf1bd216d`  
		Last Modified: Sat, 28 Apr 2018 13:00:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af8e212269c9c4f23dcd9346752fce10c72269b786cabc3c795afa6629c3a72`  
		Last Modified: Sat, 28 Apr 2018 13:01:17 GMT  
		Size: 165.1 MB (165069774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-9-jre` - linux; ppc64le

```console
$ docker pull openjdk@sha256:ed35806a2c80b3192c8f6a582a4ad9de6088ec2da69afa91f2a92066d3c1d061
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.3 MB (241331021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c335bd1b8305b02a9cc84d6fa5dff746421cf8eaab637a7f0e4538dea3265108`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:40 GMT
ADD file:fd074388a1e87afa5199386a81dd5480d59e87c99744d1503003e1cf82eeeeaa in / 
# Wed, 14 Mar 2018 00:33:42 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:55:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:01:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:06:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:07:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 08:29:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 08:29:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 20 Apr 2018 08:29:39 GMT
ENV JAVA_VERSION=11-ea+9
# Fri, 20 Apr 2018 08:29:39 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Fri, 20 Apr 2018 08:33:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:caeed743812fb8916f058220350e305c0e940ed0a62904c7cd30f479de34194c`  
		Last Modified: Wed, 14 Mar 2018 00:41:02 GMT  
		Size: 49.5 MB (49465766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aaececf1154f36498af71895dbfe2455b71b0652ce6a3048ac81822992106d`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 8.2 MB (8210793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a71fba1af38f62545037942242f7cc1e558fa18154f937e68d6d61ed9d625`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 9.3 MB (9339565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8042c3be66cfffb01cd7f60865d7816cd497858ae104e5fe48048b1e3a90e2`  
		Last Modified: Thu, 15 Mar 2018 05:58:26 GMT  
		Size: 851.5 KB (851520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440550fe34cc35a8c2ee83f95560addb3ffe5792d725790a3d0aae92b1877002`  
		Last Modified: Thu, 15 Mar 2018 05:58:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c74cd411ebd30636eddbc58ee8141bc2f7e6d6b3eba598ccc0ff6d387d7b07e`  
		Last Modified: Fri, 20 Apr 2018 09:02:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f8cbb3c586c16a4306d16bdbf554c0d1523cc5668e986e4a3930518e8c1358`  
		Last Modified: Fri, 20 Apr 2018 09:03:49 GMT  
		Size: 173.5 MB (173463006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-9-jre` - linux; s390x

```console
$ docker pull openjdk@sha256:4a780e7e3f43554ab2a077add3042c525832490586cf89c66296622b61c94dfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214946489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bd9c19705bd620f1284bb5d966a4dbcb32f2200656486dff2bf68cd93a5ebb`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:43:52 GMT
ADD file:2ebc77cf35fadaf6ffd85f0d203bf60b217e15aa3c15737aac14f71008535107 in / 
# Sat, 28 Apr 2018 11:43:52 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:16:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:16:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 14:18:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:18:35 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:18:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:18:36 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:18:36 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:18:36 GMT
ENV JAVA_VERSION=11-ea+9
# Sat, 28 Apr 2018 14:18:36 GMT
ENV JAVA_DEBIAN_VERSION=11~9-1
# Sat, 28 Apr 2018 14:19:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:3ae22b0e8b323935745df125435266c17614c4e1f44d5067b16ffdad2cbe6a24`  
		Last Modified: Sat, 28 Apr 2018 14:37:01 GMT  
		Size: 866.5 KB (866549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36be768172ac9aa9b226a35d68005845071c3f1b057cff5f31b890b7cb7a4900`  
		Last Modified: Sat, 28 Apr 2018 14:37:00 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e9a0152961a572cc7e86cd471eed58cd8dce3700f1e5774ffcdd685d09576a`  
		Last Modified: Sat, 28 Apr 2018 14:37:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7236baaeb9bf5a42facb830a023f841bbf83a4a4357541085a2a8d97d744043`  
		Last Modified: Sat, 28 Apr 2018 14:37:22 GMT  
		Size: 149.5 MB (149543374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
