## `openjdk:11-ea-jre-slim-sid`

```console
$ docker pull openjdk@sha256:9c00a9872a39decff6af40b36e18db45129cdc7354eb6e9b862516da4f7fb617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8

### `openjdk:11-ea-jre-slim-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:2785d3838c706e96f3abce231e5c5a83c84b0679dc1ccbf19f5265e845451dd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98183673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95882516a898c1f9ef115076b37900072ddd036bb2dce9875d2b6347a2c33cf6`
-	Default Command: `["bash"]`

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
# Wed, 09 May 2018 17:38:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:0d57b36b74160c238188cd48b011986d6db1e0e0d7a374d1612ff8a445ce7682`  
		Last Modified: Wed, 09 May 2018 17:47:30 GMT  
		Size: 71.7 MB (71715757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-slim-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:baa57b05c6b7da253f82caac15be4fb909b6254ee4ed9783e72dc456c5758fc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80880437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322b4b9fea72dcd1e820fe8e2b852e05b737333ef421c22f638929e13729d79f`
-	Default Command: `["bash"]`

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
# Thu, 10 May 2018 08:50:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:d78e5105e9065bf833999925244f64c5aaa12df876e293416ee1b2ea6aef1615`  
		Last Modified: Thu, 10 May 2018 09:01:46 GMT  
		Size: 56.4 MB (56435739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-jre-slim-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:cacef921d824e2dc58e6da9bb16fc0305d331ce78bc4c597d2dc4a8bb6fb662a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83678344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42180bcd87f2c6d39cf975201f3a84725ad9933b7f9f66a1e4d2194ca6de642e`
-	Default Command: `["bash"]`

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
# Thu, 10 May 2018 09:58:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:b813f015469a2afa22ed6a758ec9c6a782f4939eabb53fab70826d6221a7474d`  
		Last Modified: Thu, 10 May 2018 10:44:54 GMT  
		Size: 59.9 MB (59868135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
