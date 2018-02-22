## `openjdk:7-jdk`

```console
$ docker pull openjdk@sha256:3cac0efa8eb67eb0ac34b063092e29611c02d1135e636da018fa5f1dc9513991
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:1ea9d92f6d64536da12d17ead21fc7a50082491322b1ceb8b154260247a8d834
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244884061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6e087249db423afc2cf900ce9c35db851402f27dc807294ecb0536dcf2f4d0`
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
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:22:18 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:22:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Feb 2018 09:22:20 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Feb 2018 09:22:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Feb 2018 09:22:20 GMT
ENV JAVA_VERSION=7u151
# Sat, 17 Feb 2018 09:22:21 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Sat, 17 Feb 2018 09:23:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4d404166f39accce9e01cab8fc1eb56d0f87a9bbe5deb3ee582b78ce5d7732`  
		Last Modified: Sat, 17 Feb 2018 09:32:05 GMT  
		Size: 828.7 KB (828680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee10cdd42228ef042e3be4186c0bdadebd0c017258225e9860517158b0c54f6`  
		Last Modified: Sat, 17 Feb 2018 09:32:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e225da24dc85953790b471ef015273297425f739e442258551eb706b472a5`  
		Last Modified: Sat, 17 Feb 2018 09:32:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5586cd89459ff5119ddf9501ba23eaceeb80a2f21236933dc776d3974bbc05c`  
		Last Modified: Sat, 17 Feb 2018 09:32:34 GMT  
		Size: 128.9 MB (128925961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:4bf0769f869beb3527ba441c70232bacca1d9cb9fe9e62400365700da54be374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.9 MB (215919274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deef800886646bf098712b687c78803715549226b8b12d9bf6de0322065c500c`
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
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:47:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:47:22 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:47:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:47:24 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:47:24 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:47:25 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 21:47:25 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 21:48:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f5943b157bbccac7563e081132907b0ffd141d75d25f249fad4a982a635d0c`  
		Last Modified: Thu, 15 Feb 2018 22:03:35 GMT  
		Size: 822.0 KB (821970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ecdce8a4dd7d4420a82e1c0f5736e3101721264bf1f825ba4b803f1a86a819`  
		Last Modified: Thu, 15 Feb 2018 22:03:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b309fdd005d4c0ef0c8e14619e4dbc59a8864580af44fd4ebc88b1e27c50361b`  
		Last Modified: Thu, 15 Feb 2018 22:03:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918ba605d20abc9361b4fcc89eeea93c3f00aae359d301b7330cf9ecc12e2de5`  
		Last Modified: Thu, 15 Feb 2018 22:03:54 GMT  
		Size: 104.4 MB (104447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:c58c1021a366ce4f74b53dda786d25c0b97d494cc486048b042270eb20bf495a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.4 MB (220394627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51597c4a487cc2d1690969da55a387cda21718e6edf54ff96a4d142f74ea8ca0`
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
# Thu, 15 Feb 2018 14:09:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:11:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:11:59 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:12:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:12:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:12:03 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 15:12:03 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 15:12:04 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 15:13:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:f5179f817ea4b0eb8f622e2bb2499841408f4672313248fbc34394965a8fc6f2`  
		Last Modified: Thu, 15 Feb 2018 14:22:12 GMT  
		Size: 39.7 MB (39727512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697321cde4597515ed32aa2d5f73311002029b3d76eb228aff3655ce4de8fbbd`  
		Last Modified: Thu, 15 Feb 2018 15:41:23 GMT  
		Size: 795.9 KB (795883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b9b0f57916304181176f9d6e3ed93058bb5619ea4884e685574a38e2923ceb`  
		Last Modified: Thu, 15 Feb 2018 15:41:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dc8a6098518a9e73fd0322835b74dd9a3f7e4b894385da93d23bb8ace979a7`  
		Last Modified: Thu, 15 Feb 2018 15:41:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875bb842af64e6c4ea520fd6d23688bdcbe783eb35cc41a110f2a4536a7ee6de`  
		Last Modified: Thu, 15 Feb 2018 15:41:45 GMT  
		Size: 112.9 MB (112904621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:ca2bc76bd60be6cf1a79b492d5411bcfa76d14b3b497995bef4e0ba227334e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259305751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6386a04ac438ac498343fccdb765afdcd0146d60a79e22137a2d0a4e9b803247`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 21:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 21:19:29 GMT
ENV LANG=C.UTF-8
# Thu, 22 Feb 2018 21:19:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 22 Feb 2018 21:19:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 22 Feb 2018 21:19:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 22 Feb 2018 21:19:31 GMT
ENV JAVA_VERSION=7u151
# Thu, 22 Feb 2018 21:19:31 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 22 Feb 2018 21:21:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd37341d2e8d0120dac260d59db1f0c652a97e97c2908107573c246fb2d16dbc`  
		Last Modified: Thu, 22 Feb 2018 22:07:11 GMT  
		Size: 831.7 KB (831651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b0636ea8ce444a513a8902aba4128fb57a9ee7236320866ad3550f77004bb6`  
		Last Modified: Thu, 22 Feb 2018 22:07:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220cbcc37079aa39769864d48cbf45aef0313fc5f1e961e2861923173777ae1d`  
		Last Modified: Thu, 22 Feb 2018 22:07:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ad426af2bdf9d5d4fa44162796ed053b8357b3d7a50df1cfb4f8c247c932cb`  
		Last Modified: Thu, 22 Feb 2018 22:07:40 GMT  
		Size: 140.2 MB (140171225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk` - linux; ppc64le

```console
$ docker pull openjdk@sha256:2c691157b842b3d3c3807fd9948d932a97a85536ba9e9be7e26c7bcacc70f52e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.7 MB (220653833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366ea86549ea230ad1a7e87fa393393f6a816539ed6ae22e42d00861be630284`
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
# Thu, 15 Feb 2018 07:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:54:08 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:54:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:54:15 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:54:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:54:19 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 12:54:21 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 13:00:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:98bcdd39b8e0fce4bf5f2471a09528a02f6faddc10868aba702fedf9832d6e6b`  
		Last Modified: Thu, 15 Feb 2018 08:23:17 GMT  
		Size: 42.8 MB (42759419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b1b24b05dbb6fdff045659a5d38cc24d3fac5206c787d79f75f00bdaab70d`  
		Last Modified: Thu, 15 Feb 2018 13:56:51 GMT  
		Size: 824.6 KB (824605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efe9f7d2248894bc10796a4e17f65e78a4d09ba4f8b0c1c8a0cb66bec86f982`  
		Last Modified: Thu, 15 Feb 2018 13:56:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d0697b2c34664b439d345c2a1e47e1dd261a8fa3c3d8d5473ebbd0d67b6d2b`  
		Last Modified: Thu, 15 Feb 2018 13:56:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9865cc42cce6889c3eca3ac4bd9a563ccb33332656844572157330c1db5d327b`  
		Last Modified: Thu, 15 Feb 2018 13:57:20 GMT  
		Size: 106.0 MB (106049533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk` - linux; s390x

```console
$ docker pull openjdk@sha256:ae50745bbc0ed5e1a27783741b514a0b41d5b70ad2dff41f1aaa46681451e8a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221547204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bbc7475074cce2980700e0460aaaaa6ed0fb2eb9bc8371b41f86e5f981a18f`
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
# Thu, 15 Feb 2018 06:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:26:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:26:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:26:14 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:26:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:26:15 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 08:26:15 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 08:27:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:43bf0613109facadcc1735f903e20f3c3bd8ad103c303f8bce9269d74ac019c0`  
		Last Modified: Thu, 15 Feb 2018 06:59:05 GMT  
		Size: 43.4 MB (43389715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e4cd2d7056e2f58d5793d71d6122a93b27f09d0cbe3d5444358f132646b797`  
		Last Modified: Thu, 15 Feb 2018 08:44:32 GMT  
		Size: 837.9 KB (837935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d985a27caa2be7a0d6b3ac252855d3b330627905fd0430de969a9f0e5e3dd61b`  
		Last Modified: Thu, 15 Feb 2018 08:44:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61d7a561de21c9fd8b78a73e2e57452cfba067332544573e6ad22f3e640d1d`  
		Last Modified: Thu, 15 Feb 2018 08:44:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5366e23e25090a2c8e77ba7c79c6c9ea4565dedf6143996f2a14e3b189f676d`  
		Last Modified: Thu, 15 Feb 2018 08:44:45 GMT  
		Size: 105.1 MB (105052267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
