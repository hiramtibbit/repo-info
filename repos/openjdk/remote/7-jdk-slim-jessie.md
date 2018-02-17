## `openjdk:7-jdk-slim-jessie`

```console
$ docker pull openjdk@sha256:5f6f59fd24541236119f3357c2c3abd6acf3f1a2686710690e212dcac4d2ade3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7-jdk-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:2cc5cd9a5c0e5b5c1cb4d5a387acc7c27e159d4915b004a37aaa872f0e6d0456
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148793919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41fe7082b2cb8a97e9ec2e2504540fcd494966b7cc571277b0375138aa197a75`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:20:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:28:36 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:28:36 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 11:28:37 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 11:29:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fec0543fd17fcc06dc7f9580e91161d0e8c8f0b7271bf7cd18cf215b48546c`  
		Last Modified: Thu, 15 Feb 2018 13:52:24 GMT  
		Size: 463.7 KB (463719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155279dc81606a38fc5cd90dfe3c57797ad50ba297323a1d6acdab7ba880f169`  
		Last Modified: Thu, 15 Feb 2018 13:52:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46e519e04f821ad35cb0e6bc50d82435ee2cb78842f0cd8caa1ab028a7af46a`  
		Last Modified: Thu, 15 Feb 2018 13:52:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969e4d3a2fc80b37bab8d5d6118ada4b5abf455cad05a55a70105b9e55c688fe`  
		Last Modified: Thu, 15 Feb 2018 13:54:32 GMT  
		Size: 118.2 MB (118207442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:294074acd06103f0bd95c729b046442056551de8164e66e03067084c54f47054
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121619150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17dcc3710260cba9f63295fb5b576804d56200de7c6af58e458a27decb60f33`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:45:32 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:45:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:45:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:48:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:48:49 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 21:48:49 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 21:50:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392d7a09ef1b99453d8d1a40f1970a2120fbe801977c02d9800a08a1ca4e4f21`  
		Last Modified: Thu, 15 Feb 2018 22:02:45 GMT  
		Size: 456.4 KB (456436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db50eb8736a7af3648e6195c24d64386926e522d9903b65c90704a1dc452daa`  
		Last Modified: Thu, 15 Feb 2018 22:02:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8711f563dacf987efaa49090be73f04b30471f7f4c68a461bc38fe251105321d`  
		Last Modified: Thu, 15 Feb 2018 22:02:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da55abdefa843a3b0df2c6e3b64dc9d5bbde8bf89b7f9b47f73e07f13d63f96`  
		Last Modified: Thu, 15 Feb 2018 22:05:23 GMT  
		Size: 92.7 MB (92731463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:432d452fe375320bef552d04df60b6bfc48c6c0e5f5e3d028c8ea093d7264026
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127197365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9865117f26ef0ae27b127275c4d88989583d65bef361d2c3c8b0e7faf81bbc0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:10:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:10:04 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:10:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:10:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:13:35 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 15:13:35 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 15:13:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 15:15:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7720d873307865f93ab5fb1a91a523a2a6ecc30622e796abca192f7f250e60`  
		Last Modified: Thu, 15 Feb 2018 15:40:32 GMT  
		Size: 432.3 KB (432329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c9d1a95cfdd997dd24430b77a24ec7b856fcc7e26e77f09adb578f9887227f`  
		Last Modified: Thu, 15 Feb 2018 15:40:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454a2d5067db243997a070cef7e19af881ea708e17de8e022cf8697cc26d2634`  
		Last Modified: Thu, 15 Feb 2018 15:40:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e80485260f675c874f4987c33d4412db2d8d70d894ba2f93bef08d37f9489b1`  
		Last Modified: Thu, 15 Feb 2018 15:43:17 GMT  
		Size: 100.5 MB (100474412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:0f2df9bf8e109060b622f00ff482e7d8f6615d9a0659caf6b4d13eea8f3436e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161856611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe9c7569184011f08b74a7eed0b828ee8713d7f62d2b7644c3f0c5f4e2be130`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:27:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:27:31 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:27:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:27:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:27:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 18:27:33 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 18:27:34 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 18:29:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e742e390c789a22a9d5c7948944bb6a4066f9faf5477634ad83913840db5e1`  
		Last Modified: Tue, 12 Dec 2017 19:29:22 GMT  
		Size: 466.3 KB (466279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eac488f66f6b7a8d110136c119f7ec7b781c18f8d993046aa54c8427caddf6d`  
		Last Modified: Tue, 12 Dec 2017 19:29:21 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a90fb722b894fee2f17cbf3835d8f4f8c161382e91ebf2deb78e130b63c8d0`  
		Last Modified: Tue, 12 Dec 2017 19:29:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611f33014ca3ac298c4e43c025dc75a7837f0ab320f5f13a8c69dc3aa05adc0b`  
		Last Modified: Tue, 12 Dec 2017 19:29:53 GMT  
		Size: 131.1 MB (131123698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:8561e4fb33e4b82eec6e9d962aa79f0527e349026d08ce19b8847b82b7b09f5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125011969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4597e45295a128dc646fc92fd7ebae1090497c69da985256f98c27b46a9f0a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:17 GMT
ADD file:f3263f57a7d4fe956087a3f9803a0f8fe9224b2704ac54c141da2d6a166c737b in / 
# Thu, 15 Feb 2018 01:34:20 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:59:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:59:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 03:59:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 03:59:51 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 04:10:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 04:10:15 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 04:10:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 04:24:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:55e44e991a765aac112a6c9b4f8933a727d8c3fdfd7d5138173ff62b0624fb0c`  
		Last Modified: Thu, 15 Feb 2018 01:42:40 GMT  
		Size: 29.3 MB (29311830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d688336bbef4b11fa75dcd88cac1bbdd7a750adb22608c425310e033ad19bd`  
		Last Modified: Thu, 15 Feb 2018 04:40:44 GMT  
		Size: 460.2 KB (460235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88918fa3c71f920a1c3a4766b4ae643e5864e0abb00a48867a78b10ac68853b`  
		Last Modified: Thu, 15 Feb 2018 04:40:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696f18b6e68dd259022d2163b171e873f3b1715b3687c5e833e6173ac39a7855`  
		Last Modified: Thu, 15 Feb 2018 04:40:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e577b641f0451829e47648343b9e258610134cd6b5ecbea395425ec617359f`  
		Last Modified: Thu, 15 Feb 2018 04:41:42 GMT  
		Size: 95.2 MB (95239525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; s390x

```console
$ docker pull openjdk@sha256:6804b8400f6af6cfb7b8a6e4534f82b859b7a3dd305b8fe15e8a8a14a9abd23d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125862124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dc7552b558c08d6e6d5b331054ca0986f35bdad7ea5a0afcd375e8e435d735`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:51 GMT
ADD file:9bd92ddab0af7fb1094a6c8dd002f66c3d072f33ef24a9b28fc14949ff26406c in / 
# Thu, 15 Feb 2018 06:22:51 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:52:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:52:32 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 06:52:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Feb 2018 06:52:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Feb 2018 06:53:35 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Feb 2018 06:53:35 GMT
ENV JAVA_VERSION=7u151
# Sat, 17 Feb 2018 06:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Sat, 17 Feb 2018 06:54:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ae689cf618fbbb05b862e8d15abba29227ddab42a56a7bd8342b0ad9abc0d0ea`  
		Last Modified: Thu, 15 Feb 2018 00:56:24 GMT  
		Size: 30.3 MB (30301978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490c6e17109b149f30c4dc8a19c47817576d6fdb57b677988454c4079334592a`  
		Last Modified: Sat, 17 Feb 2018 06:55:08 GMT  
		Size: 473.2 KB (473166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f6122ab839a49c4fce9e1e7c87c0637c3cf905dbd846c80786252c58995df1`  
		Last Modified: Sat, 17 Feb 2018 06:55:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6508ea394da7fbb0a98085c1707474bf4127cc82f9e5fc6e64c79c38d3c41c5c`  
		Last Modified: Sat, 17 Feb 2018 06:55:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa3d7d035727646409b1766929f00a462b2804f904cad4942e2da9275420908`  
		Last Modified: Sat, 17 Feb 2018 06:55:51 GMT  
		Size: 95.1 MB (95086601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
