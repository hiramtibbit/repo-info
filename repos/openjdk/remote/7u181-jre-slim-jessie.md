## `openjdk:7u181-jre-slim-jessie`

```console
$ docker pull openjdk@sha256:0a1ba7d2c5ae5890048321aef47c701cec7c7fbdd362a4cc8a96cae967db70c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-jre-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:b2369881b9e7868cb34c39096e00e12a420027c30e358f483025be3f417e4768
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92273408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4764bd82e52ead9f55a8a91e88bea50cdebe18600e970de42376cbed3cd10e4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:06:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 03:06:28 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 03:06:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 03:06:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 03:16:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 03:16:24 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 03:16:24 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 03:18:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6670a1a594497beedeeb44939e2e71af22f942d506b9b364eda80d91bbb5ae`  
		Last Modified: Sat, 29 Dec 2018 03:26:59 GMT  
		Size: 463.8 KB (463767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb652a8c72b2bf4a42eb3c7b0b378c31acb66f874ae928e8582d8472ed6a04a`  
		Last Modified: Sat, 29 Dec 2018 03:26:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354db4b3a1cad290181859a674fe7c8a8abf1b3d6b17846d1f09edd3a9b945e9`  
		Last Modified: Sat, 29 Dec 2018 03:27:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e60d75a1a875448cc1c2d05ee0c2aae97d8f0edd8d332f5667a1bb26d1d2e6a`  
		Last Modified: Sat, 29 Dec 2018 03:28:00 GMT  
		Size: 61.7 MB (61655310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:c8b0c4bb2f74f403f641ae95c99f94d2e9921adbf8d96cfe0e95f4325dbf89b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80386217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b04550b66a320f16e2f5025ba0273b3882e7256def6bfbb37467fb87c277581`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:50:38 GMT
ADD file:320775ecef6e4af88f2ae8e6e0218006206519d8b54df639063269cb7aa38441 in / 
# Sat, 29 Dec 2018 09:50:39 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:36:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 10:36:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 10:37:00 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 10:39:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 10:39:05 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 10:39:05 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 10:40:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:79f818f2c6b1cf13b6d4022f7ab9a48b97fe7b3041abbab5fc7396d53791fa60`  
		Last Modified: Sat, 29 Dec 2018 10:00:17 GMT  
		Size: 28.5 MB (28464862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e49500d82d6f827e1717f039ac3297578216194fe6fb18748a49fe71d0602ef`  
		Last Modified: Sat, 29 Dec 2018 10:45:17 GMT  
		Size: 456.5 KB (456507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dae7a5a717d8511578fd71848badaa38d54cb49f313c9e0139295e45421a2ff`  
		Last Modified: Sat, 29 Dec 2018 10:45:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2f3b8df223449ed8aa4a37c84402437917ab5e5ac0dd8744c57d6210a13961`  
		Last Modified: Sat, 29 Dec 2018 10:45:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23b96a773fe54a75f5ddf517f47533500e88021ffa6a9d7790cd551656b0a77`  
		Last Modified: Sat, 29 Dec 2018 10:45:57 GMT  
		Size: 51.5 MB (51464470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:4c292475b2c093fc167e42219a6a01527d535183de5f9c0b86df60463b6bd98f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77069891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f084bf35b493ba80894559f588a79b22129177cccb9cea6beb5ca33c5eb79ea7`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:38:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 15:38:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 15:38:44 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 15:43:48 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 15:43:49 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 15:43:49 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 15:45:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf216ff52bb39ac3599b23a9c0c475044da09f336ea9f7c90c27e310106a9db`  
		Last Modified: Sat, 29 Dec 2018 15:50:48 GMT  
		Size: 432.4 KB (432354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9721b7a9ae813f366b897eadec493e3cb47aff1255e7924bfdd51fefd04e925`  
		Last Modified: Sat, 29 Dec 2018 15:50:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379c4b990058e9a98ba62306f39c76250bb1691465147d7ac88370aa7d042ef2`  
		Last Modified: Sat, 29 Dec 2018 15:50:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1621d62419e523e3a00ceb04f1408ecd4be056c58fdae79f02421b570c9c0488`  
		Last Modified: Sat, 29 Dec 2018 15:51:50 GMT  
		Size: 50.3 MB (50326776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:6f8fbcc2c689a5a875de332f46c65122f24cbc1a2aaed17c6b8d99c628ddd6bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104008952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbd7b998a9ccadd005b8f0dd5eaeadaba62b52f2c2d4a6686434abbf6449c8e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 14:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:12:32 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:12:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:12:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:17:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 14:17:36 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 12:37:05 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 12:37:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1e2ab4ec11d6221b4b1147a4d872fcdf68f328ae78ed62fe70ed77e0dbf3a8`  
		Last Modified: Sat, 17 Nov 2018 14:55:24 GMT  
		Size: 466.3 KB (466285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871db67a3b796cc9923a0549b4fa26677f7e0f2f03b9abb8d62b33c5d3324bee`  
		Last Modified: Sat, 17 Nov 2018 14:55:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91b9f8e84f46849726fffe2fe4f7ad81701736123c46031f27c3a449c0be3f9`  
		Last Modified: Sat, 17 Nov 2018 14:55:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af2884106c172ac5e13002eb928e547edaa4f82aa87b9704af78f679547af36`  
		Last Modified: Thu, 29 Nov 2018 12:44:45 GMT  
		Size: 73.3 MB (73260099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
