## `maven:3-jdk-10-slim`

```console
$ docker pull maven@sha256:6cd9656cd066294ffc0ecad7d695a208153fb4e451a766be1b93b62566cff7b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-10-slim` - linux; amd64

```console
$ docker pull maven@sha256:e848f7496e83377c4c63a2a89a0ee29a0bc1e7e534b73be6539d98bb1b221ae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.0 MB (287037917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47273a2bd06f5682249a3a8876d8978af279a40ecb83dd003b28268c30d5bb22`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 01:55:48 GMT
ADD file:ac9d323ed24a4b5dc4fec4f54d450a9d31b43fc0438b833c2e3d2f2c4d0aec24 in / 
# Thu, 15 Feb 2018 01:55:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 09:31:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 09:31:15 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 09:31:27 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 09:31:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 09:31:28 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 09:31:29 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 09:31:29 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 09:31:29 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 09:54:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 10:08:40 GMT
CMD ["jshell"]
# Thu, 15 Feb 2018 18:45:16 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 18:45:16 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 18:45:16 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 18:45:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 18:45:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:45:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Thu, 15 Feb 2018 18:45:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 18:45:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 18:45:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 18:45:50 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 18:45:51 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 18:45:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 18:45:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b9f031beeb82f12164a6ac946eefce7b30a623147dcb0f4cbb6c7b8a4bed7fe5`  
		Last Modified: Thu, 15 Feb 2018 02:23:43 GMT  
		Size: 25.5 MB (25458625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3422819e1d29ffdfe2a947d2f18ae7d11af33cd1e9a3be8692e80de0e7eedfe4`  
		Last Modified: Thu, 15 Feb 2018 12:02:42 GMT  
		Size: 460.3 KB (460317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bd5360237f8cbe3f4aa9e97dfa9ec6392a4586a32a3bea9ba25a4a049a83e0`  
		Last Modified: Thu, 15 Feb 2018 12:02:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20487e2d90eff0761aaf198b24cc7611ed5dea56b61e97376b9367edc45b22dd`  
		Last Modified: Thu, 15 Feb 2018 12:02:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9003116d68dfe75295e1055f413c919def3611fddc717c057158ba380ad426`  
		Last Modified: Thu, 15 Feb 2018 12:02:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba42d5b849551d38501914439dac7f8e9fc5739058291899d56fc1dc08071c70`  
		Last Modified: Thu, 15 Feb 2018 12:51:47 GMT  
		Size: 249.1 MB (249068087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304904d941536d212260c5d410c5b0715b78ffafbeb41dd8c15a7ae2fc7d4c90`  
		Last Modified: Thu, 15 Feb 2018 18:51:53 GMT  
		Size: 3.2 MB (3165126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dd82d7e1571aadfee7f10b37c0161afb25cee416c3336ded0eee4c35394918`  
		Last Modified: Thu, 15 Feb 2018 18:51:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fe0081888f927024d66ca3d133ef0fea1abf71d484a1bd16238927db75e5bb`  
		Last Modified: Thu, 15 Feb 2018 18:51:53 GMT  
		Size: 8.9 MB (8883839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d606daba6a28d1ea6b478229fe697f37343ade794f5ff7545ca01ad1c00872`  
		Last Modified: Thu, 15 Feb 2018 18:51:51 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e931a83749f01acfde58182a7483d3199fe87698816cb7f8c8814f0ee351c49`  
		Last Modified: Thu, 15 Feb 2018 18:51:51 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:5c86b1b1cff467a3ed3edbd09b20cbe3517afbb8a68e505d915e87988b0ef5a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254477027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35171588c9abc3b68107866f6d9b5e7eb1062fa33552556b1e6661a0663d5a38`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 20:58:51 GMT
ADD file:b4a773bdf36e1d5ffd1a18e572d68931d4c543bb8f15550118ca2dc3b56e82da in / 
# Thu, 15 Feb 2018 20:58:52 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:35:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:35:58 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 21:35:58 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:35:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:36:00 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:36:00 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:36:00 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 21:36:01 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 21:38:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 21:38:32 GMT
CMD ["jshell"]
# Fri, 16 Feb 2018 03:02:56 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 16 Feb 2018 03:02:56 GMT
ARG USER_HOME_DIR=/root
# Fri, 16 Feb 2018 03:02:56 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 16 Feb 2018 03:02:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 16 Feb 2018 03:03:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:03:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 16 Feb 2018 03:03:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 16 Feb 2018 03:03:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 16 Feb 2018 03:03:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 16 Feb 2018 03:03:11 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 16 Feb 2018 03:03:12 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 16 Feb 2018 03:03:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 16 Feb 2018 03:03:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ad9f8330a554b5ea58298fafbf1a911d1e58c0fb81693513c0861ceb96632b59`  
		Last Modified: Thu, 15 Feb 2018 21:08:42 GMT  
		Size: 23.7 MB (23716725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d914632b097b3facb2d4406d1d30059488f13e396bae18eae347e863f9251b5c`  
		Last Modified: Thu, 15 Feb 2018 21:50:46 GMT  
		Size: 453.8 KB (453776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752eb93763bdcdfc7c6be14f2a50e07dbecf1476f6cd86ef006d61fb6839d9ef`  
		Last Modified: Thu, 15 Feb 2018 21:50:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de83ef3ae4a4bc308640e89eb0bb74e66ccfe4205092088ab7d771f7f9efb11`  
		Last Modified: Thu, 15 Feb 2018 21:50:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c470d67ec28472095d8099ed3371dfcab699514ac9e1f634cb36dc5957eafc7`  
		Last Modified: Thu, 15 Feb 2018 21:50:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2204923309d2e49b0befa30c1477f83775f67097e0b592c4bf3eadac63f82f1f`  
		Last Modified: Thu, 15 Feb 2018 21:52:48 GMT  
		Size: 218.7 MB (218747316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07a0fb2bbd350904707b796862d784aa1697a9403cecf9f6d85e40b60e97618`  
		Last Modified: Fri, 16 Feb 2018 03:08:34 GMT  
		Size: 2.7 MB (2673443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c34b1669421b1ffdeeab6f86576afd871319d2bfeacd6cbbbd9aeacfb0a121`  
		Last Modified: Fri, 16 Feb 2018 03:08:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97046dac7565fc2a98c22a06571fb24bfcd9dcdd039fddacf9a9924b803613a8`  
		Last Modified: Fri, 16 Feb 2018 03:08:34 GMT  
		Size: 8.9 MB (8883853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e690a86615401290c5c8f1b94eaccd483cd64dc47731a05d673d3ec68ede0d8`  
		Last Modified: Fri, 16 Feb 2018 03:08:33 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b28dec8735b2bfaf2b918c644aa4145855dba932bd4ab0473509484e603100d`  
		Last Modified: Fri, 16 Feb 2018 03:08:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:af4d4686e588d11f59ba6c7529024d3a14516a8807f6d43a54031133855bec61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253747975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb72076a43c1c476b4ee45a7393be11c2f66444712263339ddc9e85b28803511`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 13:29:36 GMT
ADD file:7daa4de7b314b856e7fcdb5f371c7b945c14b0c7caa86846eb2c49fe9979bd32 in / 
# Thu, 15 Feb 2018 13:29:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:52:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:52:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 14:53:00 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 14:53:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 14:53:03 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 14:53:03 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 14:53:04 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 14:53:04 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 14:56:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 14:56:58 GMT
CMD ["jshell"]
# Thu, 15 Feb 2018 18:48:23 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 18:48:23 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 18:48:24 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 18:48:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 18:48:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:48:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Thu, 15 Feb 2018 18:48:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 18:48:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 18:48:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 18:48:43 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 18:48:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 18:48:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 18:48:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f5167d994364c066eea50fc16a99c559bdcafc5c8351ccd492d7917624d883a2`  
		Last Modified: Thu, 15 Feb 2018 13:39:33 GMT  
		Size: 21.7 MB (21734810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79887eeeb3c90499aefa18a2df783bb582abcccd01e38a5b53315e05cf40b7`  
		Last Modified: Thu, 15 Feb 2018 15:17:33 GMT  
		Size: 436.4 KB (436392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d9edaf94c20e5e3400a151aab5ef7bc4bd7c2443c448449def4bec875be07a`  
		Last Modified: Thu, 15 Feb 2018 15:17:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20709348423b242493f81a049918ae964419ef757ae82cd2f5e612da8dada6a1`  
		Last Modified: Thu, 15 Feb 2018 15:17:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fad827e1ac218ebd0d2c1eddc8852fc458ab7731b381d57650b9319937776e`  
		Last Modified: Thu, 15 Feb 2018 15:17:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb48ec5fa2de97eccac4775f00694844ae8b2149c644f259e63d6cb03004987`  
		Last Modified: Thu, 15 Feb 2018 15:22:17 GMT  
		Size: 220.2 MB (220158985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e0576e98d7b6d608cb03277f6a6e24838fda94dc1f52cc23a28a3003afd9a`  
		Last Modified: Thu, 15 Feb 2018 18:54:29 GMT  
		Size: 2.5 MB (2531994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711b912d046d8146357c55e8fdb98499d00f0974331dcbd24471bb2d61bc67eb`  
		Last Modified: Thu, 15 Feb 2018 18:54:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae5eb629b1973508d8e3452de6f86d83702b91958f58c7c478e495f7e089dfe`  
		Last Modified: Thu, 15 Feb 2018 18:54:30 GMT  
		Size: 8.9 MB (8883874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33759d4fd80e49af8e33ef2a6bb2f3d6836ac8f772f78024d9a0f73b770edf3`  
		Last Modified: Thu, 15 Feb 2018 18:54:28 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df7be4b0e3cfdd6905ce01d7445009f00f50e2df03b6bd3115e5a3bbb0187fe`  
		Last Modified: Thu, 15 Feb 2018 18:54:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:9f0142b9c0aa6fc6039db0919846783de95161f74af34320e8cf81252bc14f4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259967182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb378dd18912d5a9ebb8eae3f442cb61bf358e32baef62e89adb72846de62ad8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 18:27:10 GMT
ADD file:c88d10e67b1798acdb635ddc0f61d822ef61e0d3ec33a1c4e2cffbc886d457f5 in / 
# Thu, 15 Feb 2018 18:27:13 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:49:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 21:49:39 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:49:43 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:49:43 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:49:44 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 21:49:45 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 22:07:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:07:15 GMT
CMD ["jshell"]
# Fri, 16 Feb 2018 11:29:58 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 16 Feb 2018 11:29:58 GMT
ARG USER_HOME_DIR=/root
# Fri, 16 Feb 2018 11:30:00 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 16 Feb 2018 11:30:00 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 16 Feb 2018 11:30:21 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:30:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 16 Feb 2018 11:30:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 16 Feb 2018 11:30:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 16 Feb 2018 11:30:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 16 Feb 2018 11:30:29 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 16 Feb 2018 11:30:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 16 Feb 2018 11:30:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 16 Feb 2018 11:30:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:314e7324202544a982e975f5f851b7261aaad42f2e9b14b91716a5e0c3c6369b`  
		Last Modified: Thu, 15 Feb 2018 01:01:20 GMT  
		Size: 23.1 MB (23102391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d32396f67588f74628efe8c74109298589fde30acca5e0bf38a8e05b7b6b2`  
		Last Modified: Thu, 15 Feb 2018 22:55:42 GMT  
		Size: 445.1 KB (445098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccaab6d8fc6ac1bf2b804ddf82246f567cbd51d4e04fbef43dd36218e04c09c3`  
		Last Modified: Thu, 15 Feb 2018 22:55:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846ec33984ce1a8bbb56990615b16e57d49c7d8f20627dae397db7f5345f6e4c`  
		Last Modified: Thu, 15 Feb 2018 22:55:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49605397ce272e47f2742199d2b7adb7fca818ae9f0d9a1e6274bf85896ae010`  
		Last Modified: Thu, 15 Feb 2018 22:55:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aeece26a0d90d457f802e814ec2383f5cbdd4f2380f685a3a2856fcb7486af7`  
		Last Modified: Thu, 15 Feb 2018 23:02:05 GMT  
		Size: 224.8 MB (224846183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22b94e3b8c4101c747e3c6385895ef126936315cbd0fb5628970cbd9089e605`  
		Last Modified: Fri, 16 Feb 2018 11:36:47 GMT  
		Size: 2.7 MB (2687757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24fbd57b09d7d9fd32b8920aef668153c6680d47b73306736f8da7b39ea2fb10`  
		Last Modified: Fri, 16 Feb 2018 11:36:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7536ccf1384a4ccacf8d3ca709aec64c803567c7ea9dadff6b769c523e094`  
		Last Modified: Fri, 16 Feb 2018 11:36:48 GMT  
		Size: 8.9 MB (8883835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7506ddcb66370b8274060fe69b02d3dbc965551b8c44e4b459d4b51b6b9cca`  
		Last Modified: Fri, 16 Feb 2018 11:36:46 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d574b500627105a71d0e602d8fe3c18d30aef2cad4ff90a9ea00ce3e87a29a`  
		Last Modified: Fri, 16 Feb 2018 11:36:46 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; 386

```console
$ docker pull maven@sha256:2cd6c2f99fda7f4c534f80edaf6661ad92e6300f7892bc4c1bdd3a30a848ee91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.3 MB (294285466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6e67247d15cfb1ee58e3a4cf65174657f6d631a733309a470d1af4416b3d08`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 16:51:57 GMT
ADD file:8f960dcf48be7b5f9cd5e77981116810dc05da4b2b6a17221b8f461f93ba60c1 in / 
# Thu, 15 Feb 2018 16:51:58 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 15:14:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 15:20:18 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 16 Feb 2018 15:20:18 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 15:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 15:20:20 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 15:20:20 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 15:20:21 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 16 Feb 2018 15:20:21 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 16 Feb 2018 16:28:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 16:36:12 GMT
CMD ["jshell"]
# Sun, 18 Feb 2018 02:41:57 GMT
ARG MAVEN_VERSION=3.5.2
# Sun, 18 Feb 2018 02:41:58 GMT
ARG USER_HOME_DIR=/root
# Sun, 18 Feb 2018 02:41:58 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sun, 18 Feb 2018 02:41:58 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sun, 18 Feb 2018 02:42:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:42:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sun, 18 Feb 2018 02:42:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sun, 18 Feb 2018 02:42:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sun, 18 Feb 2018 02:42:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sun, 18 Feb 2018 02:42:18 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sun, 18 Feb 2018 02:42:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sun, 18 Feb 2018 02:42:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sun, 18 Feb 2018 02:53:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:be56e166276f67c204f772591a93fbb1018c56a1e2cde7af2f366608b506d0ce`  
		Last Modified: Thu, 15 Feb 2018 01:08:50 GMT  
		Size: 26.3 MB (26341098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a752fc63aea2ba845dd5dcc121982b440db2c074c967b876d367f2fb6186b1d4`  
		Last Modified: Fri, 16 Feb 2018 20:11:35 GMT  
		Size: 468.9 KB (468899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb44a98c8bb5566dad3701d15b19af0cbf91c5f005d897a31247696890b98400`  
		Last Modified: Fri, 16 Feb 2018 20:11:33 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10456ec223d99ca1164932c9a005724a7bc32f2c6d194daef90c072efd5f1935`  
		Last Modified: Fri, 16 Feb 2018 20:11:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ec811ea297d0ce15ab81da52bc7e30176662691e18d1fb84a9571a542cf3b7`  
		Last Modified: Fri, 16 Feb 2018 20:11:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625fea1a85ceb4703a06fb97a631fd98f204e2c0c7d3e5dbf191797561dcc0`  
		Last Modified: Fri, 16 Feb 2018 23:03:11 GMT  
		Size: 255.5 MB (255516054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f893fb06c48a062b3c9ed752f13230cf63ad9132c28d0802e228de11f0688a`  
		Last Modified: Sun, 18 Feb 2018 08:43:15 GMT  
		Size: 3.1 MB (3073650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d589514212d266e2fb5aa306b28e523e3bf71b4beaf5a5353bfd7520893c996`  
		Last Modified: Sun, 18 Feb 2018 08:43:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc177927ccf55b7ef0f145e4462ae65fd87d7d91af5679290a108f5d1734af5`  
		Last Modified: Sun, 18 Feb 2018 08:43:15 GMT  
		Size: 8.9 MB (8883850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c93d60462f8eb4ac098bc31d16f46d84d6753b3fbaa8e0cffd507db8eaf8c9`  
		Last Modified: Sun, 18 Feb 2018 08:43:13 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159c735ae22a7fdf77a61cd507897a3c1d64d06c73b7296897111bca2f87d2c1`  
		Last Modified: Sun, 18 Feb 2018 08:43:13 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:49a24bd7c2f2c0bb531ac9f50057298fd9675721021544bc70258a4c2b7e6a5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271264646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6047e45deec7f6acf6f83c84c66e9da157cd719a2b5fdc34f77b330e543bc7bd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 01:36:05 GMT
ADD file:91265f9e386b45036e051d1a52d6a070f8b8eabeffe16b8b6f50073469e1981f in / 
# Thu, 15 Feb 2018 01:36:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:20:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:20:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 03:20:53 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 03:20:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 03:21:06 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 03:21:09 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 03:21:15 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 03:21:16 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 03:38:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 03:38:41 GMT
CMD ["jshell"]
# Thu, 15 Feb 2018 08:57:12 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 08:57:15 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 08:57:19 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 08:57:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 08:58:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:58:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Thu, 15 Feb 2018 08:58:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 08:58:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 08:58:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 08:58:46 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 08:58:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 08:58:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 08:58:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37ba6ae4dccd54eb9fe727eb50853dc2e0af6fb30dd0098145e52936c6061421`  
		Last Modified: Thu, 15 Feb 2018 01:44:36 GMT  
		Size: 26.9 MB (26876199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f972aec9f02c502cb9944fa42ae7e57d157fec3b5b93be7beabf9ab273ce3f4`  
		Last Modified: Thu, 15 Feb 2018 04:31:09 GMT  
		Size: 455.0 KB (454971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aa642f4016555bf0b885923c468a8f7dcc479e6f927969ac3b99239de6b071`  
		Last Modified: Thu, 15 Feb 2018 04:31:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2edd13e3537831dcc89a6f81a46616d7cd40b7ba5b08c8a82d00524d511ec97`  
		Last Modified: Thu, 15 Feb 2018 04:31:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4073fd4bc90d6b958281d1e8cc5576930a9efc1d4cd161559e76c1ea87a0fe`  
		Last Modified: Thu, 15 Feb 2018 04:31:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9ce0b58aae982c671e98e0506e415df9128319bf848dd4f533e4404d3b353b`  
		Last Modified: Thu, 15 Feb 2018 04:34:00 GMT  
		Size: 232.1 MB (232091409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f03580ec40adb2acb531573a22f434374a1e2488a15a56396e5308edccbe6d3`  
		Last Modified: Thu, 15 Feb 2018 09:01:34 GMT  
		Size: 3.0 MB (2956271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be9e470ce8159eaca8e933b6e47909a50d10bb2c6e1bce0d1846f5a209a4a30`  
		Last Modified: Thu, 15 Feb 2018 09:01:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12547f1f5223088a3a2815efbcbf485a90ad334c0ce98837d04690b02888168`  
		Last Modified: Thu, 15 Feb 2018 09:01:36 GMT  
		Size: 8.9 MB (8883873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e36d16d2339161a39c3c7186b1177a3e18b55ae729fd4a97de46d7f79324fb`  
		Last Modified: Thu, 15 Feb 2018 09:01:34 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7718f6edc1bc059161e06c96d4d5877e13adbf6653c5406aed0aa2b50c5bdcab`  
		Last Modified: Thu, 15 Feb 2018 09:01:34 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; s390x

```console
$ docker pull maven@sha256:979c1497617420ca1002bd4511fba0ed72252f12be01577898fa1416a88ed75b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245754383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd241b220c962dfd6524b2c79ef9651a16ceba26d8a6856bea488f82fb5bd166`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:36 GMT
ADD file:6e39aa367eb00ad206275197bdf8676731608a870742312cf57a752d02479101 in / 
# Thu, 15 Feb 2018 06:23:36 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:14:19 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 08:14:19 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:14:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:14:20 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:14:20 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:14:20 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 08:14:20 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 08:17:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 08:17:20 GMT
CMD ["jshell"]
# Thu, 15 Feb 2018 12:56:50 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 12:56:50 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 12:56:50 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 12:56:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 12:56:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:56:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Thu, 15 Feb 2018 12:57:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 12:57:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 12:57:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 12:57:01 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 12:57:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 12:57:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 12:57:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:625a885678468f6c79d17e9ee5150774965f2f33499beeff626e8ff4aaff686c`  
		Last Modified: Thu, 15 Feb 2018 01:14:27 GMT  
		Size: 24.9 MB (24857193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f8f9d1067f5cf628ef3e6a09bdc15b8ed5f57916ccb2040dbc5448d5aba40a`  
		Last Modified: Thu, 15 Feb 2018 08:34:32 GMT  
		Size: 471.2 KB (471213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0505631f201455420717c0aaa1cef88bd180eaccf5c3a2dcce8ecd50ebd89e`  
		Last Modified: Thu, 15 Feb 2018 08:34:32 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a6d009be640327aba45761671e8141bc7746b4e303e930a31b07df7d3d48c2`  
		Last Modified: Thu, 15 Feb 2018 08:34:32 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3473225b1ef59ec9f4200096a7a0312a811b0b73206ab2d3a09e967966d1e1ad`  
		Last Modified: Thu, 15 Feb 2018 08:34:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfe230a26e5d1b2e8897e8c6ad427c5bf66071d359964c85bd84b19c36f414b`  
		Last Modified: Thu, 15 Feb 2018 08:36:37 GMT  
		Size: 208.6 MB (208615109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26899e01e01369c38fa1a5ee6b59584bdece0b9c510435066d5cc681db408b4`  
		Last Modified: Thu, 15 Feb 2018 12:59:24 GMT  
		Size: 2.9 MB (2925118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebf5b1a7cc4a745c5bd1a141dc864ee4e0e487818f5e6b76fe11f4adfa0b09`  
		Last Modified: Thu, 15 Feb 2018 12:59:22 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0220de07e58a65d0b93ae80eb69b854f9c0a4a52ffff157220652997ed9d5cdc`  
		Last Modified: Thu, 15 Feb 2018 12:59:26 GMT  
		Size: 8.9 MB (8883832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb0608e5cf0391bc708b8e02931bad3aa2b4e8ec045ebefa2693a920e3a03ad`  
		Last Modified: Thu, 15 Feb 2018 12:59:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a592bb5730b89e01922542c35bbb5d8884459257a9e4306be7d168e414d8d18`  
		Last Modified: Thu, 15 Feb 2018 12:59:22 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
