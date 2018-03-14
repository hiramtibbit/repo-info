## `openjdk:7u151-jre-slim-jessie`

```console
$ docker pull openjdk@sha256:3e9b9c00df53c8e51c30e88be7dd466724b3b31fcae64969c518926786ad5b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7u151-jre-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:3f4ab9b2b807235d2286c0d866db84ff4bfc05e5962ca864f6b291156735ef83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104337690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff05135139aff9826c11a298d0ea6633952d1fa72842dff844514062f3ebde18`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:15:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:15:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:15:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:15:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:15:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 11:15:34 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 11:15:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 11:16:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb9677eb5994c545214796f8413ba73dbf4626fbb577aad1372c07946932a67`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 463.7 KB (463726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c48310f4a16bd94a053595d920462410c502a4e31aa3921d14efb305625adbd`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5aab639445cc92fdb05b5bf2216d779f1e5f2518e30633e6e0605860b980e5`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb819f359900ca149e60117d0ad7331f8b77c33227870e204aa5127c4abf52f`  
		Last Modified: Wed, 14 Mar 2018 13:18:38 GMT  
		Size: 73.8 MB (73751184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:4a8bfee22da8c082c71e55376ec9a8ca50bc85bd789c4351da0027b431840ca9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92269267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3224f4360b2b4239a3292aa5a5c96158059080336b4d898ca8a78eb11a01d6bc`
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
# Thu, 15 Feb 2018 21:45:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 21:45:34 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 21:45:34 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 21:46:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:ed778d2f6c7b8798d318bf0d8e5643e67c785b1bcadbb774fe0f594fca534db7`  
		Last Modified: Thu, 15 Feb 2018 22:02:59 GMT  
		Size: 63.4 MB (63381580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:f44836a1e7c6574b6ac940bb5c4abf6aaa87d23620d07ae4a08c5516e306a639
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88650989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dff1e56403083f5058a7134ffc2304675046e962e5a29eb5eea2aca43872a21`
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
# Thu, 15 Feb 2018 15:10:07 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 15:10:07 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 15:10:08 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 15:11:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:e7a95aa88be8727401436f45beb0236840b6177514fdb11a8365471ab47e08ba`  
		Last Modified: Thu, 15 Feb 2018 15:40:44 GMT  
		Size: 61.9 MB (61928036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:c4979896c524af6f9f944090eb97cfcc070351ece9a4406b320c77ca15db8105
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115657985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c04ed8dc75d0a407dee6b35123f6fdb3c5327956ac549cfb4105d62ac0d6ba`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 18:25:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 18:25:36 GMT
ENV LANG=C.UTF-8
# Tue, 20 Feb 2018 18:25:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Feb 2018 18:25:38 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 20 Feb 2018 18:25:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Feb 2018 18:25:38 GMT
ENV JAVA_VERSION=7u151
# Tue, 20 Feb 2018 18:25:38 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 20 Feb 2018 18:26:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe72695ccd31f30828386b3ba66e6290897928443a839921d0967c858ee6d9e`  
		Last Modified: Tue, 20 Feb 2018 19:52:53 GMT  
		Size: 466.3 KB (466262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0208f6d1f56f7bb80ff83ea1deeb0f8fe082197efc24327a521bac4045cc17fa`  
		Last Modified: Tue, 20 Feb 2018 19:52:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e63e79c2a3da37d1b5631656ad834ec23e15fb5f445c8567835377c37286f9`  
		Last Modified: Tue, 20 Feb 2018 19:52:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e262824c1630d406df9e37310fa516f7ffb17d4377411bc16268bfcacec327a`  
		Last Modified: Tue, 20 Feb 2018 19:53:17 GMT  
		Size: 84.9 MB (84918147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:e4d18fda17f26aa1d31a09a0cba57771bcecfa943379b6156e627acd72936f89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95185277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0f3d3125bc0b41e3818c81f143ce2de09a2c948ed9c23236c97002174350a7`
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
# Thu, 15 Feb 2018 03:59:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 03:59:56 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 03:59:58 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 04:09:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:7c1e906856fad05ef0f0c8addcf8764f912421ca67ba536bb6fbb6f338b441c6`  
		Last Modified: Thu, 15 Feb 2018 04:40:57 GMT  
		Size: 65.4 MB (65412833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; s390x

```console
$ docker pull openjdk@sha256:196eedadab4ef0dd04bef2b8dcc0b575129659796a83d314845ba1a82240d672
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96274635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d488e937ad3ece83daa8dd894f7c0559a3e74e24606b4c2a11b8a65d0d0e19`
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
# Sat, 17 Feb 2018 06:52:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Feb 2018 06:52:35 GMT
ENV JAVA_VERSION=7u151
# Sat, 17 Feb 2018 06:52:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Sat, 17 Feb 2018 06:53:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:79d65403581a45fa6e9c31c657d36e90eb972aab49ce2de65846a8066b9e1c19`  
		Last Modified: Sat, 17 Feb 2018 06:55:18 GMT  
		Size: 65.5 MB (65499112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
