## `openjdk:11-ea-jdk-slim-sid`

```console
$ docker pull openjdk@sha256:172bac1144d8bda644720f7af8867bce164b0ff63b8263269105d5bff0104d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `openjdk:11-ea-jdk-slim-sid` - linux; amd64

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

### `openjdk:11-ea-jdk-slim-sid` - linux; 386

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
