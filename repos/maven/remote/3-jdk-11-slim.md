## `maven:3-jdk-11-slim`

```console
$ docker pull maven@sha256:422ee0d69e2b779006743e0655c2453889d263b4267642503f0e80fe54f4f101
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

### `maven:3-jdk-11-slim` - linux; amd64

```console
$ docker pull maven@sha256:0ad904be56b4ef4e82cfbeaefeda654467ad2910147cacc8ed55790b3a9161be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261219540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d860cf818c0af8d91fcae267b8b7631bf31da0efa4ddbec743a4d3b725a8537`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 30 May 2018 21:25:27 GMT
ARG MAVEN_VERSION=3.5.3
# Wed, 30 May 2018 21:25:27 GMT
ARG USER_HOME_DIR=/root
# Wed, 30 May 2018 21:25:27 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Wed, 30 May 2018 21:25:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Wed, 30 May 2018 21:25:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 30 May 2018 21:25:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Wed, 30 May 2018 21:25:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 30 May 2018 21:25:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 30 May 2018 21:25:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 30 May 2018 21:25:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 30 May 2018 21:25:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 30 May 2018 21:25:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 30 May 2018 21:25:46 GMT
CMD ["mvn"]
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
	-	`sha256:18cb8168cd2682e8f3c09cad6ed9a8e171cc97787fb9c3d0e47bef6cde2dc9ab`  
		Last Modified: Wed, 30 May 2018 21:26:32 GMT  
		Size: 1.5 MB (1519179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf617e95a491f06a3c17551d7168ea382582434c5f89b96b7676c2f14ddaa7a`  
		Last Modified: Wed, 30 May 2018 21:26:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0694bbc6de021dfc534a93b91b9180957351c02caa91683f44831fe62d49eccc`  
		Last Modified: Wed, 30 May 2018 21:26:32 GMT  
		Size: 8.9 MB (8946030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0cc8c1fd8f569cc028250f3c7391b7623bd7e017b7cbf2e846ac9f84c93b81`  
		Last Modified: Wed, 30 May 2018 21:26:31 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a8f6f0e6a6a6a12925aed470f453ed26251e37717ac59efe2017b023ba2e7c`  
		Last Modified: Wed, 30 May 2018 21:26:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:2388edfb3e45bbfd99404b9ea27ceb8a45f46d25eac87ec6f9fca8411d06ebdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228172180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9162dfc75f2185855d7dd4e0b620c52d2d0f87fe12c4312cf459c938e2d8b0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 31 May 2018 09:52:07 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 31 May 2018 09:52:08 GMT
ARG USER_HOME_DIR=/root
# Thu, 31 May 2018 09:52:08 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 31 May 2018 09:52:08 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 31 May 2018 09:52:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 09:52:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Thu, 31 May 2018 09:52:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 31 May 2018 09:52:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 31 May 2018 09:52:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 31 May 2018 09:52:30 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 31 May 2018 09:52:31 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 31 May 2018 09:52:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 31 May 2018 09:52:32 GMT
CMD ["mvn"]
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
	-	`sha256:31f6e34d82176aae591509db4b8e7903dd5594c1524291a9d91f28f4c7143f9a`  
		Last Modified: Thu, 31 May 2018 09:53:30 GMT  
		Size: 1.4 MB (1447018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cad2a95cf3635943ed0af2fe0119bf31dcc7e58912ada3ce6b2961cf10cb25`  
		Last Modified: Thu, 31 May 2018 09:53:29 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bbd2d9e3f3dc13a6e454d50023b6f6cfc5b500194a3f7cb8f084ccd9b1fca9`  
		Last Modified: Thu, 31 May 2018 09:53:31 GMT  
		Size: 8.9 MB (8946148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8870d18334aa6e8fafb378bc3e533b16109f378cf7a09175ec52187d2bd429e3`  
		Last Modified: Thu, 31 May 2018 09:53:29 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e532613e23984d3e11fbfeb0c21ab8a79084e781da21a1c13c3f4d5af26377`  
		Last Modified: Thu, 31 May 2018 09:53:30 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:d6c08df15e9433acfc76b345fadd4dabb22933e1f1ba8ea12d42fff297d49155
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.1 MB (227091428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ee1bfcc71f1476f8136878203095c353cb0dc1c8e7948bb05b0518823dc22f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 15 May 2018 12:04:19 GMT
ENV JAVA_VERSION=11-ea+13
# Tue, 15 May 2018 12:04:20 GMT
ENV JAVA_DEBIAN_VERSION=11~13-2
# Tue, 15 May 2018 12:08:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 12:08:18 GMT
CMD ["jshell"]
# Tue, 15 May 2018 13:41:02 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 15 May 2018 13:41:02 GMT
ARG USER_HOME_DIR=/root
# Tue, 15 May 2018 13:41:02 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 15 May 2018 13:41:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 15 May 2018 13:41:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:41:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 15 May 2018 13:41:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 15 May 2018 13:41:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 15 May 2018 13:41:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 15 May 2018 13:41:35 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 15 May 2018 13:41:36 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 15 May 2018 13:41:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 15 May 2018 13:41:46 GMT
CMD ["mvn"]
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
	-	`sha256:b5c226f2987660a9e1a5fb6caaf1ef86c8723b68e546f887c441346118c2faee`  
		Last Modified: Tue, 15 May 2018 12:36:39 GMT  
		Size: 193.2 MB (193202845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b03df1277bbf83a97e906eb48a44182337fb2049c36b1f36498846eb972ca7`  
		Last Modified: Tue, 15 May 2018 13:48:12 GMT  
		Size: 2.5 MB (2536882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b894b4775d6053a1e3e5aa0e82bcb150045c726fc923bc04eaf9d66f01060a2b`  
		Last Modified: Tue, 15 May 2018 13:48:12 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2330dd6513aa59afd938d8c6a84276bd86406463979f406836828192f78af38a`  
		Last Modified: Tue, 15 May 2018 13:48:12 GMT  
		Size: 8.9 MB (8946145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af67ed4e77444bd16cb44a62239208742f4a63f71d0d24057bbb4b5ba5311123`  
		Last Modified: Tue, 15 May 2018 13:48:12 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dcbed029229648b56f570989ed9524aeb765950ff23b3b68710f59c0d2ec225`  
		Last Modified: Tue, 15 May 2018 13:48:11 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ee5e9cd9cc72e4992f4442dae47ac08589a23a042bf8a34efa0c84770b5488df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233274372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46fcae5fd9b2515e3937c18b7b160b657648ea2f07f900405dcea97d02554bc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 15 May 2018 08:51:31 GMT
ENV JAVA_VERSION=11-ea+13
# Tue, 15 May 2018 08:51:31 GMT
ENV JAVA_DEBIAN_VERSION=11~13-2
# Tue, 15 May 2018 09:07:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:07:52 GMT
CMD ["jshell"]
# Tue, 15 May 2018 14:05:02 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 15 May 2018 14:05:03 GMT
ARG USER_HOME_DIR=/root
# Tue, 15 May 2018 14:05:04 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 15 May 2018 14:05:05 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 15 May 2018 14:05:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 14:05:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 15 May 2018 14:05:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 15 May 2018 14:05:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 15 May 2018 14:05:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 15 May 2018 14:05:40 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 15 May 2018 14:05:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 15 May 2018 14:05:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 15 May 2018 14:05:42 GMT
CMD ["mvn"]
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
	-	`sha256:69f4f37efa0cfa4a956c9148a0ab19ada86fd86d44a5e6a0f20874c8a9780344`  
		Last Modified: Tue, 15 May 2018 10:39:25 GMT  
		Size: 197.8 MB (197811068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7742a4c90a7497847bd8a09811b69f3f06fcf06eab0bebf8727c3e244451fb2b`  
		Last Modified: Tue, 15 May 2018 14:13:16 GMT  
		Size: 2.7 MB (2705778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91970795d666ccba3727b43ca920e27239e1ffdda5d2bcaef828a019d634eca`  
		Last Modified: Tue, 15 May 2018 14:13:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b04fc75a39576242b0562c8eb074856e817f8d29b3e54fd73d048ae9f2d3c46`  
		Last Modified: Tue, 15 May 2018 14:13:17 GMT  
		Size: 8.9 MB (8945987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b463a90150b18b5e8edc3701988f92f7f2e77e3d14b7114b472cf9ce74849ac`  
		Last Modified: Tue, 15 May 2018 14:13:15 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4800a5f384fb2bf1d9e397674ff3fed9d958916f4b2dc1511866734a076ae8`  
		Last Modified: Tue, 15 May 2018 14:13:14 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; 386

```console
$ docker pull maven@sha256:6878eaa76e86ee31261be9f0984c1f4aa28e0448ec66a527fb626c50c27766f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268365346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3d177266cba85bf1f6b63578fff89dfd37f3b2ab3c94c5c7cebe0bdb3a3fc2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 15 May 2018 11:13:43 GMT
ENV JAVA_VERSION=11-ea+13
# Tue, 15 May 2018 11:13:43 GMT
ENV JAVA_DEBIAN_VERSION=11~13-2
# Tue, 15 May 2018 11:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 11:19:42 GMT
CMD ["jshell"]
# Tue, 15 May 2018 13:58:03 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 15 May 2018 13:58:04 GMT
ARG USER_HOME_DIR=/root
# Tue, 15 May 2018 13:58:04 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 15 May 2018 13:58:04 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 15 May 2018 13:58:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:58:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 15 May 2018 13:58:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 15 May 2018 13:58:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 15 May 2018 13:58:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 15 May 2018 13:58:25 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 15 May 2018 13:58:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 15 May 2018 13:58:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 15 May 2018 13:58:26 GMT
CMD ["mvn"]
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
	-	`sha256:7e09a5e42e8e8ad8cfba9fc49b1c97739b2ea2ced1cc34b85f0607a6ef46075c`  
		Last Modified: Tue, 15 May 2018 11:54:51 GMT  
		Size: 229.2 MB (229176816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0c83ffd6daa2835ab3e46812a91c7d0ce300f320ed41f09f9201e6db9cab67`  
		Last Modified: Tue, 15 May 2018 14:03:37 GMT  
		Size: 3.1 MB (3084647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcdd9d5f388a4658f0383b414a3a3f12a07d076abab2dca42eebc815d83dae0`  
		Last Modified: Tue, 15 May 2018 14:03:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f3a593a2e0698c84a415873d522dce880b2ecca5d37c5d19fa7fc1b054b5eb`  
		Last Modified: Tue, 15 May 2018 14:03:38 GMT  
		Size: 8.9 MB (8945988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88826cf1a50a71cb92e9a32d2ce75e938e62326b83cbc4690f1f69753078cfb`  
		Last Modified: Tue, 15 May 2018 14:03:33 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86c6f08abb4001a126c27a962df03a6c87694d4c16e0e55c0348fd80aa57e5`  
		Last Modified: Tue, 15 May 2018 14:03:33 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:c4d8925cb04394b3aa4317f8311ea0df60ab0354eb66590a023939fcb0d02af5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245539348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55bfde053d5292df5f283795608197feb08d1971ac5a817ab8de5d8e46d51c4e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 31 May 2018 10:13:08 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 31 May 2018 10:13:09 GMT
ARG USER_HOME_DIR=/root
# Thu, 31 May 2018 10:13:10 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 31 May 2018 10:13:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 31 May 2018 10:13:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 10:13:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Thu, 31 May 2018 10:13:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 31 May 2018 10:13:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 31 May 2018 10:13:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 31 May 2018 10:13:44 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 31 May 2018 10:13:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 31 May 2018 10:13:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 31 May 2018 10:13:46 GMT
CMD ["mvn"]
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
	-	`sha256:d1cdd3ae4f30a147b79dac8de00ab503ee43397333dc494a7e9942d99ec52ae1`  
		Last Modified: Thu, 31 May 2018 10:14:54 GMT  
		Size: 1.6 MB (1568737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2e8c936f75a2a07a6fc3b6f2acbcb97f306c4d2a8449a39d24522e0a1bdbe`  
		Last Modified: Thu, 31 May 2018 10:14:54 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7aa0ffba598a4ae14096bda8e38295d580205e7c6e2ecef2c5bb945dded0ae`  
		Last Modified: Thu, 31 May 2018 10:14:55 GMT  
		Size: 8.9 MB (8946155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddadf88b80201e68e630a44b9d4624a2340e4bc473910f3fdf8f928f862fa90`  
		Last Modified: Thu, 31 May 2018 10:14:53 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2eaf2f8fc9d3423e8ed06214e0491d98887a1b5c97f310d77426a127660f840`  
		Last Modified: Thu, 31 May 2018 10:14:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; s390x

```console
$ docker pull maven@sha256:8f49455c6c58a921de315279476c9e4b164b5122c7d5c1fa0b9e8caafc890546
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214076892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fb7b5f7cf2bbb68276aa7ab436012ee9cb0f046f8fdc84fee2963e0401039b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 15 May 2018 11:52:57 GMT
ENV JAVA_VERSION=11-ea+13
# Tue, 15 May 2018 11:52:57 GMT
ENV JAVA_DEBIAN_VERSION=11~13-2
# Tue, 15 May 2018 11:56:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 11:56:39 GMT
CMD ["jshell"]
# Tue, 15 May 2018 13:36:10 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 15 May 2018 13:36:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 15 May 2018 13:36:10 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 15 May 2018 13:36:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 15 May 2018 13:36:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:36:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 15 May 2018 13:36:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 15 May 2018 13:36:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 15 May 2018 13:36:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 15 May 2018 13:36:25 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 15 May 2018 13:36:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 15 May 2018 13:36:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 15 May 2018 13:36:26 GMT
CMD ["mvn"]
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
	-	`sha256:1d3c3dacf01565ca21f0fb98cc03fdab8e5414705024c4e00426b4e4679a4066`  
		Last Modified: Tue, 15 May 2018 12:22:38 GMT  
		Size: 176.7 MB (176697482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4595b6d76783b443737840e9bd26971f21aaafa03dd882bb6235d62b9ac00b`  
		Last Modified: Tue, 15 May 2018 13:44:32 GMT  
		Size: 2.9 MB (2904379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520b350f8ea7eb257757692dbcb679b2c7868d078125a46c1c36596a68d7e65`  
		Last Modified: Tue, 15 May 2018 13:44:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf529e40ee1c52529096b749558b50662f2937285337ed11666cc597d7a4b48a`  
		Last Modified: Tue, 15 May 2018 13:44:32 GMT  
		Size: 8.9 MB (8945993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44de60129ab2ce184d5a9f7b2b476e0bce446fbb3590ea9c2424aea7ffcf12dc`  
		Last Modified: Tue, 15 May 2018 13:44:31 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54799cd12d2332bc049c04980b23891fd415d2de8dbd1c06d079b4c6eb701134`  
		Last Modified: Tue, 15 May 2018 13:44:31 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
