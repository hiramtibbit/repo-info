## `openjdk:8u181-jre-slim-stretch`

```console
$ docker pull openjdk@sha256:d46a0f74913b51c354d4b0fefe7c1ed62244463466d11686be843ae9d02a399a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:8u181-jre-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:c38d484667060c03810ecc67d6cd5de56bf62b0a77a93786866d6b95661e057d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78799912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4ba1480af60ba866e68b393dd2a4f1396a41c61b76f45660e835d58aa587b0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:13:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:17:41 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:17:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:17:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:19:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 22 Jan 2019 21:19:27 GMT
ENV JAVA_VERSION=8u181
# Tue, 22 Jan 2019 21:19:28 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 22 Jan 2019 21:19:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf4e4a3f53407278434f4de7f127f62c89a691ff5862fbdd936a2b8aa3d3e54`  
		Last Modified: Tue, 22 Jan 2019 21:39:35 GMT  
		Size: 454.9 KB (454862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a553b6e4e3b517f1e4bba0072050f211a5308250a4b7663589a8051680739742`  
		Last Modified: Tue, 22 Jan 2019 21:42:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bf810d9d8cc21c9ecd5281d18efd35a5d789f77289509ad53f765eae621e1c`  
		Last Modified: Tue, 22 Jan 2019 21:42:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395e52c72e54ea81b812fcb888606f5bce0d7c408f93692925ddff2c924ed3d4`  
		Last Modified: Tue, 22 Jan 2019 21:43:36 GMT  
		Size: 55.8 MB (55843965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u181-jre-slim-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:6ba0bd255a9d61243feb22606ee313138de59d56c85c4de5310e951f3eed3bbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68213226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4989f791999cbc1d29aa712df4a1a2db55e103c942a61e553a4e2821cdae2301`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:42:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:50:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:50:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:52:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:52:52 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:52:53 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:53:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0448a0274fb127b6c698658b3915c7c94f835e73f7b8698a2a288bbed1965c95`  
		Last Modified: Wed, 23 Jan 2019 13:06:49 GMT  
		Size: 447.8 KB (447751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d058a57605cf4c1efca448612cbcceaa1a050308dfee775036679ab356a5e6`  
		Last Modified: Wed, 23 Jan 2019 13:10:14 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2036eb6031fefda81a1005b3f0af4b65d65f252cf6835cf8268856fb6b7d49da`  
		Last Modified: Wed, 23 Jan 2019 13:10:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c13d9d0c0e6850920ac6c841019026ee9df1264736aaddea1c98353e7b096b`  
		Last Modified: Wed, 23 Jan 2019 13:11:41 GMT  
		Size: 46.6 MB (46583272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u181-jre-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:11cdbff4506cc5d02cea7bedc5f8eaa9119fea70e2363f410754b2ae21c68590
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68794050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036b0e6133e383535821efeb5e2a8eae6ec7bc696ae2ed14ea7954f924cb44c8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:55:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:12:03 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:12:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:12:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:19:22 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:19:22 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:19:23 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:20:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c647cb9b4bebabb026f3cdd41649c49da504fb488d1e096e0b7974cd205946`  
		Last Modified: Sat, 29 Dec 2018 17:24:27 GMT  
		Size: 440.8 KB (440846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28d99c4b0edfde23e64df2fbeba73096e4a7d82965d2a68f3df2f26e9741330`  
		Last Modified: Sat, 29 Dec 2018 17:28:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8311c322e6664f6266c1e3d823f89330bd7962a854b4539ba14f9fd05d447bab`  
		Last Modified: Sat, 29 Dec 2018 17:28:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eeac6f05b2898bb906316997f93bf3349665146b45a890887c40f2ebeb2581c`  
		Last Modified: Sat, 29 Dec 2018 17:30:53 GMT  
		Size: 48.0 MB (48015313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u181-jre-slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:4d60c8e3851ea3d14f48a3d037b7bb776599e78565990f640c2f90ecfc691656
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78989324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5944f187ae44de236f3e0809c1d8f462da22bea67e8a8fd11ae7d3def1c24a6f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 20:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:54:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:54:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:54:28 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:55:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 20:55:46 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 20:55:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 20:56:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2cc5e95842c4f0ae541c23106532af24b3125ad0e8aaba1313437c63035f3d`  
		Last Modified: Sat, 29 Dec 2018 21:20:23 GMT  
		Size: 463.5 KB (463523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68215057c6f6914922b129bb1043b388c2b55b68e94ef50f1e383c3f201a142`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c115f25959aee0a37987ee6d1df0918a33936ad0c4537c1a23a0c0aba3a81f`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdfe75d1a4145f24212f568b071e234f8b2afa1c80cf35ba4209b1bb8d651e1`  
		Last Modified: Sat, 29 Dec 2018 21:24:10 GMT  
		Size: 55.4 MB (55392267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u181-jre-slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:ff86085806d09bdc9b5f621290fd39f80dde0ecb8b5a3ea76b469d774624aa68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71680678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052dc87110e262141baeffc2c8a5eb6be59e2a0920d3e32f1a94bbb97af63388`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:19:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:30:46 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:30:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:30:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:38:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:38:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:38:20 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:39:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d96ccdc14a26f0f9430b22503ce06d0028bbdd769cd9a823ce26eab8def3fdc`  
		Last Modified: Wed, 23 Jan 2019 12:42:53 GMT  
		Size: 449.8 KB (449813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df3d1923aa8181445e19a27eeb1ab84707c654f12bc414618bc4e678ead9dc`  
		Last Modified: Wed, 23 Jan 2019 12:47:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647fd0d189d704a438c7b37a642ff36a6bc08a83469ff028e39adb8a749dabf1`  
		Last Modified: Wed, 23 Jan 2019 12:47:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d3c88576f056b2622f5fc5aa86e667cbca2e2bd81fbb577acb5fdadf422663`  
		Last Modified: Wed, 23 Jan 2019 12:49:12 GMT  
		Size: 48.5 MB (48475155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u181-jre-slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:f9b1f7de191a00bc9e741e420cc4e1381faab5ae803ff8e8b9ab19b362469ec6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70505733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901fe1af04705ef6f16a3b0713ef400ad37519eba8f2d760840e9bb3bdb1774c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:52:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:56:25 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:56:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 13:56:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 13:57:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 13:57:41 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 13:57:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 13:58:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac9c6d1fd006f717b1098b0d7f20cc9789857b7e45aeb4975a091bfa4ed1592`  
		Last Modified: Wed, 23 Jan 2019 13:59:47 GMT  
		Size: 465.8 KB (465766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0f3350d4a01bf2afba49f5def7b8e2c6f71a662ee3468fc2dac0e50c32536`  
		Last Modified: Wed, 23 Jan 2019 14:01:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00e9f0d89d795044483ccd03b0dc8e63b8a4cfb811fbf69c4475c4a07d07839`  
		Last Modified: Wed, 23 Jan 2019 14:01:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34676fe3d8b0552761d133810e27700a9d4b38c5456c59aa863ab56abd602463`  
		Last Modified: Wed, 23 Jan 2019 14:02:54 GMT  
		Size: 47.7 MB (47686089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
