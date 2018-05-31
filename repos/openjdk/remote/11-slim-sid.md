## `openjdk:11-slim-sid`

```console
$ docker pull openjdk@sha256:47c6a4592af159b77e28132962143eb8f81f2cc7ec709b3f0253c7143cff3665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `openjdk:11-slim-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:9f92fdea3d3160c7ebf2a7d7d3548319f2385b124f8d26eb20fe9279eefbf647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250753000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed61c7b74273747c92c05707abbabc371b051f3176e6cd1ef56b688b9173e0b`
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
# Wed, 30 May 2018 19:00:06 GMT
ENV JAVA_VERSION=11-ea+15
# Wed, 30 May 2018 19:00:07 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Wed, 30 May 2018 19:07:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 30 May 2018 19:07:53 GMT
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
	-	`sha256:9091a2e684ca29912e8032b847c62f33640c0061c23561e90d5b142271bb73f1`  
		Last Modified: Wed, 30 May 2018 19:14:53 GMT  
		Size: 224.3 MB (224285084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:fcae124da5521691ce6189b804106b2b7b25245cebc5ab2be04d21b0fbc5a47d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217777683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24f1bd8104302aac808ad08ff45ea7b9d3185a00706cbef0b5cbd849c4e0e27`
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
# Thu, 31 May 2018 08:50:43 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 08:50:43 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 08:54:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 08:54:03 GMT
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
	-	`sha256:0c41e330de269d2e45b1fddd7a8a224c9cb789d22c2efc6f5082907717479914`  
		Last Modified: Thu, 31 May 2018 09:02:35 GMT  
		Size: 193.3 MB (193332985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:501f51e29293f95aeeab2d209360fc976d5e504e26808b1f8b9da5486905aa28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232814689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c86e208602332855299bb148c5d0e055c08fc707b1aadffcd5c4dbb2a4fb1e`
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
# Thu, 31 May 2018 09:00:29 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 09:00:31 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 09:16:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 09:16:49 GMT
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
	-	`sha256:6c23643087f110b00a8b17412e513ad9f34153c4ee8219e1a6e39cbe18eddb21`  
		Last Modified: Thu, 31 May 2018 09:29:55 GMT  
		Size: 209.0 MB (209004480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; 386

```console
$ docker pull openjdk@sha256:99bfb13ad5e10c19b669a972c167ab8bd1e9f41abcc9c52a143c6ca2ebf652cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258964985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e8f6b6d590d3adae997f33e00c3aa005199e551f7302b0ca1321e6439b1f53`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:59 GMT
ADD file:9e204bd06575325653d9ca924ded453fa1a0f9eb3fe6d0fb8390160b39768da9 in / 
# Sat, 28 Apr 2018 10:40:59 GMT
CMD ["bash"]
# Thu, 31 May 2018 05:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 05:46:06 GMT
ENV LANG=C.UTF-8
# Thu, 31 May 2018 05:46:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 May 2018 05:46:08 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 31 May 2018 05:46:08 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 05:46:08 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 05:46:08 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 05:50:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 05:50:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b0b251c3fa17d0cdbdd0cb21b207843e9e733533c09d41956b9606a7c6aaf613`  
		Last Modified: Sat, 28 Apr 2018 10:47:45 GMT  
		Size: 26.7 MB (26687092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5bd07609d18b01a4468533d1ef2f44d73ce4a39eb21ca52f111fe56eaf4e07`  
		Last Modified: Thu, 31 May 2018 06:18:02 GMT  
		Size: 469.1 KB (469106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2eb62cc483e44adba330b0e961bb185427b884355d6c1d64fe31215e6f821e`  
		Last Modified: Thu, 31 May 2018 06:18:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16cd2e81bb38e39b332b1841b93b9468a1c9293c9ee7caa4fb44053f121d0b`  
		Last Modified: Thu, 31 May 2018 06:18:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac47d7d0148ab8caeaf6f0f977e4da92bcc13f328405d839ba2b78ee02e59a6`  
		Last Modified: Thu, 31 May 2018 06:23:33 GMT  
		Size: 231.8 MB (231808418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:f019fdc8453adf85aaefd0a0e31a905ff5a39df98983a4ffd8bba6ac9e6df509
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (235023120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8f0a41b67ce607818706ef0d53e189e37b4d5a2726983bbad5606b8cd9d0fd`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:31 GMT
ADD file:0f2a0abf96fc92379da26343d7babcee966430e13e320ed58e9b026f81a35dc0 in / 
# Sat, 28 Apr 2018 08:19:33 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:22:50 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:22:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:22:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:22:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 08:35:47 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 08:35:48 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 08:44:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 08:44:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:62552d209895f0ed53682f7309596edd291c8529683e854dd1fb36398d01bf69`  
		Last Modified: Sat, 28 Apr 2018 08:28:10 GMT  
		Size: 27.3 MB (27275595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ff6d72f21b69924c949ee40aec368655f2ab6a94c0a4a2067453fce44edabe`  
		Last Modified: Sat, 28 Apr 2018 09:48:20 GMT  
		Size: 455.2 KB (455169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6f4b35b1a81554702460476a2fe3bd916579be94638ded8ee84048b7e208b`  
		Last Modified: Sat, 28 Apr 2018 09:48:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310b01249272733e4188774f0c3e9120068d9715d5c8551e910815001a45c510`  
		Last Modified: Sat, 05 May 2018 14:52:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdaee3fbf0546cd5af4b3272ad3179daa259884e108ee28b808e5963c3d5297`  
		Last Modified: Thu, 31 May 2018 08:56:21 GMT  
		Size: 207.3 MB (207291985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
