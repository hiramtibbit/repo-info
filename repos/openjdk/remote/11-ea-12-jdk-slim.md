## `openjdk:11-ea-12-jdk-slim`

```console
$ docker pull openjdk@sha256:f082100b3c68d479b495342ee64d129c5a1628e9791d3cd2537dc30b438f49e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `openjdk:11-ea-12-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:49f1dfa3c86b6b9729093a6a461bb9cc5f7ab63113cb7b806f12c629d2b63ef8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 MB (253906921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2204d7e42f4729426e3ff654162c675e59ec91b30d01b836c9319955f069eb7`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 07:02:48 GMT
ADD file:4ac5b74448a361591479d0374d36fef5832baedf42ca81cbd6fbd8ac037ad414 in / 
# Sat, 28 Apr 2018 07:02:49 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:40:17 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 09:40:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:46:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:46:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 09 May 2018 17:37:45 GMT
ENV JAVA_VERSION=11-ea+12
# Wed, 09 May 2018 17:37:45 GMT
ENV JAVA_DEBIAN_VERSION=11~12-1
# Wed, 09 May 2018 17:40:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 09 May 2018 17:40:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c2ad77de49cedb25345a40be4f3ccc592075053d2d1b4cafcc67a011c070df60`  
		Last Modified: Sat, 28 Apr 2018 09:01:30 GMT  
		Size: 26.0 MB (26007039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6485a2cca95b289b549728c0c66bb1b463cdb7a204d224291f28c111a64a371`  
		Last Modified: Tue, 01 May 2018 14:02:46 GMT  
		Size: 460.5 KB (460510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4ea4e6ab41ff82240aed63937b358af3ee0d7749491ea788298b5cd38027cd`  
		Last Modified: Tue, 01 May 2018 14:02:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ba107c49a6d8c5092f801c71dafc5fad760b0270718cb9b79cd3b32349891`  
		Last Modified: Fri, 04 May 2018 23:59:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0090f7f94edfeed47a5ee4489f7cebaca7389bee50be05836ddee37af5b8a1bc`  
		Last Modified: Wed, 09 May 2018 17:51:32 GMT  
		Size: 227.4 MB (227439005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-12-jdk-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:41b582711afd2bda2039e979d8b4ba77e0df1ce44e9ad4ebfb7e14913a596d5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.6 MB (221573667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eadca91f5dbc53c797703457cd93b6586cf64763bff95408f8d317fd0d7a19`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:57 GMT
ADD file:4bb0a1afcce11262886b693c92f368728f7ca179f516dcfd86a6a74d9941a2bd in / 
# Sat, 28 Apr 2018 08:51:57 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:33:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:33:18 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:33:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:33:20 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:33:20 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 10 May 2018 08:50:21 GMT
ENV JAVA_VERSION=11-ea+12
# Thu, 10 May 2018 08:50:21 GMT
ENV JAVA_DEBIAN_VERSION=11~12-1
# Thu, 10 May 2018 08:53:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 10 May 2018 08:53:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d8a6a213c8dfd9e72ad11408970d74e2be7ffdfbac3683ed1a40c28534145e4a`  
		Last Modified: Sat, 28 Apr 2018 09:00:19 GMT  
		Size: 24.0 MB (23990346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe23918d5c3df5c5737b91e6e16035342f47e61426f3dd0265882e998ef16a4`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 454.0 KB (453984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3278875f078d656ef3d6c8ce9702f8344f1343454d75403da10d4e583f90931`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3187c0aebb98dbd566b2d1153935c739a4bb54682bec8dd2cc1e96c824df4c5a`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a65d584556696e4165eade7693024a7263a993baad9085fb0c77e6a222ba19f`  
		Last Modified: Thu, 10 May 2018 09:05:56 GMT  
		Size: 197.1 MB (197128969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-12-jdk-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:e4c00289aeaacb858c9791034470abe3d26ef17091faaf87b8e1fdc8164a773c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.4 MB (220360468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1666e877da02952939743b83ebd23493d69d8f0204bd3de74ea0c1623916e178`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 12:02:41 GMT
ADD file:51a6f559367fc724be19aeee6bd277b378069389bc848507cfa991829488f7a6 in / 
# Sat, 28 Apr 2018 12:02:41 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:38:04 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:38:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:38:07 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:38:13 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 10 May 2018 12:03:17 GMT
ENV JAVA_VERSION=11-ea+12
# Thu, 10 May 2018 12:03:17 GMT
ENV JAVA_DEBIAN_VERSION=11~12-1
# Thu, 10 May 2018 12:08:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 10 May 2018 12:08:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e896ce6a07096665b9b10eea8b8d7a9f0f6e26c3d88bd463db48304823b92890`  
		Last Modified: Sat, 28 Apr 2018 12:14:08 GMT  
		Size: 22.0 MB (21967210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925e7bf3333e528dfd915abfbcbc560f820ce29a375d884865566688160e4eed`  
		Last Modified: Sat, 28 Apr 2018 13:05:56 GMT  
		Size: 436.6 KB (436647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc2cc177a3ab014156f5c72f5b4f97a9fb66c88c1f2d8c79cdf90ed2dab6a6c`  
		Last Modified: Sat, 28 Apr 2018 13:05:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095df51160dfb0cfb0c4df2ba36007bb9084764477557e2e0a3c3c898f8b73e9`  
		Last Modified: Sat, 05 May 2018 13:11:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607c67a5d42cfee4934a3ce76eb4a9c4e6dba26360f582f9af5666b83e9a7edd`  
		Last Modified: Thu, 10 May 2018 12:27:50 GMT  
		Size: 198.0 MB (197956241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-12-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:834638dbf17529c8aa0db811d8a612e329632137a552c2885460cb51e82b1d2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.1 MB (227106134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638ace5fb546b588d02f9060c19c1f356f7d97036421ec4e70f4d9212d1116a2`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 30 Apr 2018 23:28:38 GMT
ADD file:0c141fd79d3e8c492efc85f35f6f2273b082454831ae4e4e58f2bb99395ac72b in / 
# Mon, 30 Apr 2018 23:28:47 GMT
CMD ["bash"]
# Tue, 01 May 2018 10:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 10:26:43 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 10:26:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 11:18:06 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 11:18:07 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 10 May 2018 09:56:52 GMT
ENV JAVA_VERSION=11-ea+12
# Thu, 10 May 2018 09:56:53 GMT
ENV JAVA_DEBIAN_VERSION=11~12-1
# Thu, 10 May 2018 10:15:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 10 May 2018 10:15:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a965c5efd07de5feb761f2ff7f7c9319fbd736849e5c372d102a79db79c4f2f`  
		Last Modified: Mon, 30 Apr 2018 23:48:28 GMT  
		Size: 23.4 MB (23364515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca2f61f6ee678d7988be608168e9c185ba5c895ae0c465aae1111cc9b9f381e`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 445.3 KB (445326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c81d59c641d2ddc2a09929f5b5d1a2b5181d4c465d5d47ac607bb97deb6f8a`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bceddcea152b65343ee7a3e4405bd12c3ee093a5afdc3b0ffb6facce8ddc6b`  
		Last Modified: Sat, 05 May 2018 12:41:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6d6501ba6ce01cbf75b97a8de403f6fc944be304c2b63de55ef176cef50569`  
		Last Modified: Thu, 10 May 2018 10:49:08 GMT  
		Size: 203.3 MB (203295925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-12-jdk-slim` - linux; 386

```console
$ docker pull openjdk@sha256:2e818b3b5e81e38b3318fe1cf696662838dbe4db046d8e1a527ab33449f846d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261975511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88084ee17e922f6065d7d7fed06c29a04f43322bb6d4a54255f37af26f4c0d59`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:59 GMT
ADD file:9e204bd06575325653d9ca924ded453fa1a0f9eb3fe6d0fb8390160b39768da9 in / 
# Sat, 28 Apr 2018 10:40:59 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:41:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:41:58 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:41:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:41:59 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:42:00 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 10 May 2018 11:50:03 GMT
ENV JAVA_VERSION=11-ea+12
# Thu, 10 May 2018 11:50:03 GMT
ENV JAVA_DEBIAN_VERSION=11~12-1
# Thu, 10 May 2018 11:54:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 10 May 2018 11:54:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b0b251c3fa17d0cdbdd0cb21b207843e9e733533c09d41956b9606a7c6aaf613`  
		Last Modified: Sat, 28 Apr 2018 10:47:45 GMT  
		Size: 26.7 MB (26687092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dba5883d54ea2e960ec74337613b22d342a4cf7dc0a8004731c69f17ca460c2`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 469.1 KB (469104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0202ed9a08fb9954731cc7fe5f246e4b09b730c006ef6ba471b6671db09dbe`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea363716bb0c802de06c378b63ab90f2d57a19b0b5965a3fbf723cd904fd5a1a`  
		Last Modified: Sat, 05 May 2018 13:29:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464e82449597dfc7b1539ff3a3fc9d0779db24d9b9c96fa6c3966d5456e7cb38`  
		Last Modified: Thu, 10 May 2018 12:08:44 GMT  
		Size: 234.8 MB (234818947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-12-jdk-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:075f18333bdb1166addf7745ded263b61036b27c58b4806cb1715399abeba93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207773471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5a8cd29ae4d112cf30ce2b68b3fcf29109bb99d46444f1e477a427b94c6252`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 11:44:07 GMT
ADD file:e38be352b5f5592b16e7137f372c3c15b62fa18d58036f3756f302a0b0bb631b in / 
# Sat, 28 Apr 2018 11:44:07 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:19:52 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:19:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:19:53 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:19:53 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 10 May 2018 12:56:28 GMT
ENV JAVA_VERSION=11-ea+12
# Thu, 10 May 2018 12:56:29 GMT
ENV JAVA_DEBIAN_VERSION=11~12-1
# Thu, 10 May 2018 13:03:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 10 May 2018 13:03:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bff59799036649cecf076e4900a64b601dd41fb4774da5d260797609e96f77d2`  
		Last Modified: Sat, 28 Apr 2018 11:50:00 GMT  
		Size: 25.1 MB (25056085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00321480668e2c88c597070fd4a0503df76d083adfe3488d69f82f37cf3a1143`  
		Last Modified: Sat, 28 Apr 2018 14:37:59 GMT  
		Size: 471.3 KB (471260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b7fa65f7725d173d1d9261b5c223d16d2f1f2a2850391fb2cd3eca5082060`  
		Last Modified: Sat, 28 Apr 2018 14:37:58 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c09a94002d348fe59f5834ba1288aeccf40840c95c0f0b837a011df6d6edc48`  
		Last Modified: Sat, 28 Apr 2018 14:37:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8e5b83eb6be08abf63b24bd7d3865ca8c749b4f82431a1af94ccb09ee35784`  
		Last Modified: Thu, 10 May 2018 13:19:11 GMT  
		Size: 182.2 MB (182245760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
