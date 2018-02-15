## `maven:3-jdk-10-slim`

```console
$ docker pull maven@sha256:f80aed44634694ce561ede62afd5f5ea2c84ecb4c540a8a839f2eb2d0d13a229
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
$ docker pull maven@sha256:2f93afddfeb3e9cced80f7cede8f0be1608b245092263b990311a970fcc4f437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.5 MB (293549761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a9ab0e82d2635594a066d6ea7b6d120fa41b2a5a095cb7fe95ca87ef6df09f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:25 GMT
ADD file:f105fa3aa445df54e1e78b4ba607c2724f1dc586b1e060c482c798966d97c635 in / 
# Tue, 12 Dec 2017 01:43:25 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 20:24:13 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 18 Jan 2018 20:24:13 GMT
ENV LANG=C.UTF-8
# Thu, 18 Jan 2018 20:24:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 18 Jan 2018 20:24:15 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 18 Jan 2018 20:24:16 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Jan 2018 20:24:16 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 18 Jan 2018 20:24:16 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 18 Jan 2018 20:37:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 18 Jan 2018 20:39:04 GMT
CMD ["jshell"]
# Tue, 13 Feb 2018 19:11:10 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 13 Feb 2018 19:11:11 GMT
ARG USER_HOME_DIR=/root
# Tue, 13 Feb 2018 19:11:11 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 13 Feb 2018 19:11:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 13 Feb 2018 19:11:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Feb 2018 19:11:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 13 Feb 2018 19:11:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 13 Feb 2018 19:11:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 13 Feb 2018 19:11:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 13 Feb 2018 19:11:31 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 13 Feb 2018 19:11:31 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 13 Feb 2018 19:11:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 13 Feb 2018 19:11:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7dadf3208611439968d74844a1c976f4664c77dbe43c9e5b63a825002a5cd02f`  
		Last Modified: Tue, 12 Dec 2017 01:51:57 GMT  
		Size: 25.2 MB (25200134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349fcab9b82f6a693cf54bf9000507a4d7f9156532a75463f72361a998cf0067`  
		Last Modified: Tue, 12 Dec 2017 05:56:46 GMT  
		Size: 461.4 KB (461353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701eb131c0fa109136fbeb16463be04da3eb927af807bf1e8ef59dd7845cfa2a`  
		Last Modified: Thu, 18 Jan 2018 20:54:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed0d59c5136e482909a148e9f903702243e76483db269f5f8467c67b1d6bd7e`  
		Last Modified: Thu, 18 Jan 2018 20:54:54 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348cf3a40bd34f3548984028ade1190d13604c41bee3dbd03208f25e2dccd1f7`  
		Last Modified: Thu, 18 Jan 2018 20:54:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416c2c6b52f759937294ff6dcf12aa999f24f86dddcd43628cc7069158ef5662`  
		Last Modified: Thu, 18 Jan 2018 21:04:17 GMT  
		Size: 255.8 MB (255834050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7b4934d650d07374e1fdc17e6baf50bba6ac1705af7241899c6e593347b006`  
		Last Modified: Tue, 13 Feb 2018 19:12:26 GMT  
		Size: 3.2 MB (3168435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f270dc46114b5a14fa5d3669f03e26a7ded915e89e366561da4440389a0217`  
		Last Modified: Tue, 13 Feb 2018 19:12:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c721ac9f05fbd6b0790aee14aad7e23f9a266acf0603f6e6f8a9284eff23a77c`  
		Last Modified: Tue, 13 Feb 2018 19:12:30 GMT  
		Size: 8.9 MB (8883842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c87030316d606ec309f0e71e821ad74163975dc344a93dd0141548417ed6b65`  
		Last Modified: Tue, 13 Feb 2018 19:12:25 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ceef44366eeb7b4defc6054a19af2cada2998445fb2a7a40b23a9f447cac46`  
		Last Modified: Tue, 13 Feb 2018 19:12:26 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:54512d2c3c849eb06a0786d7edef2283b317dcd68cfc6ed031cff27becdbb10d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260847320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9340fafc76f94aad3ee900ef0143655134c490bb51eb62e13b726e1dd922c4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 21:00:22 GMT
ADD file:e86fb04d129478e6ac96176adfffb3e711115a347024d1cb531bc50ac60a1ffc in / 
# Tue, 12 Dec 2017 21:00:22 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 10:57:30 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 10:57:31 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 10:57:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 10:57:32 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 10:57:32 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 10:57:33 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 10:57:33 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:02:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 11:02:13 GMT
CMD ["jshell"]
# Wed, 14 Feb 2018 15:06:46 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 14 Feb 2018 15:06:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Feb 2018 15:06:46 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 14 Feb 2018 15:06:46 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 14 Feb 2018 15:07:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 15:07:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Wed, 14 Feb 2018 15:07:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Feb 2018 15:07:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Feb 2018 15:07:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 14 Feb 2018 15:07:08 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 14 Feb 2018 15:07:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 14 Feb 2018 15:07:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 14 Feb 2018 15:07:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bef6bbd4145ba81761456f5a5681c95e374890b48a13d53619c2ba83e7f89764`  
		Last Modified: Tue, 12 Dec 2017 21:10:34 GMT  
		Size: 23.7 MB (23652669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51e38575884f240f90306b3d9d111c7bf53ae381ce029c25a1d5b6f295c545e`  
		Last Modified: Tue, 12 Dec 2017 23:59:36 GMT  
		Size: 454.9 KB (454853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea42cdf09abb5eac19d8c860abb4dd9f30256f86d95639897b450fff4a45dde`  
		Last Modified: Fri, 19 Jan 2018 11:04:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53957ad4c288ed7cdf504992f9839a2c8f059ec19ba1dd9010d9393feb932e5c`  
		Last Modified: Fri, 19 Jan 2018 11:04:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0a48a16eae6d458c60b7864bce50ee76fd1fc2c0ca27bb515578a3e626358d`  
		Last Modified: Fri, 19 Jan 2018 11:04:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828342262b8270ebb7f3ebb32be353c52d98c90f2976254928e0355441beb943`  
		Last Modified: Fri, 19 Jan 2018 11:08:31 GMT  
		Size: 225.2 MB (225177106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d7ca934e18599fafd79b71e0ce3a3f7f9b81176d2fdecb64a62cb8f2393a6f`  
		Last Modified: Wed, 14 Feb 2018 15:07:51 GMT  
		Size: 2.7 MB (2676876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6673ee5f592914fdced2df96265d5bd282b4e37e16847b8db6c64fb0bf7ab72d`  
		Last Modified: Wed, 14 Feb 2018 15:07:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e408e21d3be5c715a62756c65026b86fe49695428cd36513a75db1ba1bc2ce`  
		Last Modified: Wed, 14 Feb 2018 15:07:50 GMT  
		Size: 8.9 MB (8883876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c379b59f7db76f7d5cd8793c16756a5e79ae894276eecb7207d24d0cceb0299d`  
		Last Modified: Wed, 14 Feb 2018 15:07:49 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c960fa12700a6d7476d478790cfe472c9d5eb665c482f03560d0dc4e2d763871`  
		Last Modified: Wed, 14 Feb 2018 15:07:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:954e40112ddfa2d34407e2546e1f194ccecadcfd8bd131dac36aa4df361f3ad9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259362459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a56f7e8bf0a28072ec300f1725ba4eba99108f3e2d643200ae1ffaf4532969d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 13:31:16 GMT
ADD file:eb741b8fe83ce46b665a7bdd2a99528846dd7547771a65092065e4bc8e15c367 in / 
# Tue, 12 Dec 2017 13:31:16 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:22:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 02:25:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 02:25:09 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 02:25:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 02:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 02:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 02:25:11 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 02:25:11 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 02:29:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 02:29:11 GMT
CMD ["jshell"]
# Wed, 14 Feb 2018 06:13:31 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 14 Feb 2018 06:13:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Feb 2018 06:13:31 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 14 Feb 2018 06:13:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 14 Feb 2018 06:13:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 06:13:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Wed, 14 Feb 2018 06:13:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Feb 2018 06:13:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Feb 2018 06:13:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 14 Feb 2018 06:13:47 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 14 Feb 2018 06:13:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 14 Feb 2018 06:13:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 14 Feb 2018 06:13:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3ecac93191c5706244513457d41a41cc88efb0c7ceee2302e73b23e9ec168fae`  
		Last Modified: Tue, 12 Dec 2017 13:43:05 GMT  
		Size: 21.7 MB (21702273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1188f6ec9d3ba1e73240169767a8a14ae35c21abcbe369aa29a1dc5733d0bd65`  
		Last Modified: Tue, 12 Dec 2017 15:39:04 GMT  
		Size: 437.4 KB (437418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c5cb78f0289d85a609977d97bc771292fa67003342738ed7f40670b7750f45`  
		Last Modified: Fri, 19 Jan 2018 02:34:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5c4b00891efeee4fb0e8b1d518023212514dac7097a6338ff5d1463bfeb1bb`  
		Last Modified: Fri, 19 Jan 2018 02:34:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d4d7aab3f2e9861c83c9cb2dad8b896f7d29f35421d0b86a22925b5f6bb6e9`  
		Last Modified: Fri, 19 Jan 2018 02:34:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a77107e57831fb260a26fc4025817ec3dc96394718cceae42b7edc25153a451`  
		Last Modified: Fri, 19 Jan 2018 02:37:49 GMT  
		Size: 225.8 MB (225801968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904cecc6413d9fdf11bfd4c562f1734f450ec924fe35094eb42714a12bb73244`  
		Last Modified: Wed, 14 Feb 2018 06:14:24 GMT  
		Size: 2.5 MB (2535011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b9494899f8ac539e3cda004694f36ec99fb1bff03bd334b9d06314de089e9d`  
		Last Modified: Wed, 14 Feb 2018 06:14:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a1f6951256f20c8fcb58ad3cfab8cbdc210f187d02d6c75b3d875865ebdcc4`  
		Last Modified: Wed, 14 Feb 2018 06:14:25 GMT  
		Size: 8.9 MB (8883851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847cc9c96f7ba5420780d77355716bee40f230d299b5fc76cae3f940ea97fc22`  
		Last Modified: Wed, 14 Feb 2018 06:14:23 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb3e6cafa8e3f60f2358b3caad1e069e9dc270d2b5f49445754482d79a76e8c`  
		Last Modified: Wed, 14 Feb 2018 06:14:23 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:6c4b0309c3ec3183afb91453b77023c0a5c3b510976ec076a78be2e2a7a927d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265825600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4198ad45fd28dc8248a6934ce9198ccdd38b08af6f464ee0c5b47e54aff7917`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 18:30:47 GMT
ADD file:527347414411e4bab808cd9d1c7924a32554d04164b13a0b598ec648d11f27ee in / 
# Tue, 12 Dec 2017 18:30:48 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 11:06:18 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 11:06:19 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 11:06:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 11:06:27 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 11:06:28 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 11:06:28 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 11:06:30 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:24:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 11:24:28 GMT
CMD ["jshell"]
# Wed, 14 Feb 2018 17:29:07 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 14 Feb 2018 17:29:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Feb 2018 17:29:08 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 14 Feb 2018 17:29:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 14 Feb 2018 17:29:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 17:29:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Wed, 14 Feb 2018 17:29:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Feb 2018 17:29:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Feb 2018 17:29:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 14 Feb 2018 17:29:43 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 14 Feb 2018 17:29:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 14 Feb 2018 17:29:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 14 Feb 2018 17:29:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad0e67dadf87e1ab909d780cc670757702de1c5410e3aa7278328a71490ec00`  
		Last Modified: Tue, 12 Dec 2017 18:44:50 GMT  
		Size: 23.0 MB (23010638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7bde884095f3c349aadf8979a279fe0b1eb3342e0d13e5ddaf8218283448d5`  
		Last Modified: Wed, 13 Dec 2017 02:31:52 GMT  
		Size: 446.2 KB (446189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3060f23867d37a5c7cba83ec1549f2a7d352d444a211b0f5a230d563dec46`  
		Last Modified: Fri, 19 Jan 2018 11:32:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbd372ee328942152c82e653c0a3ae3dbbb25176c31ab3573e4f2478c413c28`  
		Last Modified: Fri, 19 Jan 2018 11:32:46 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d7eb12c8ee32bd59d9de4a6220db96919c7d85f691fc72d17539b436bddb58`  
		Last Modified: Fri, 19 Jan 2018 11:32:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3710c9f0f42788828e8fc4737d9d9f00f890d165e38743f88390a8e1be17da`  
		Last Modified: Fri, 19 Jan 2018 11:38:12 GMT  
		Size: 230.8 MB (230792114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e22e50b8bd725c54b9c5f17d309d225ae30650689fb2faf0e12c7a738af718a`  
		Last Modified: Wed, 14 Feb 2018 17:33:06 GMT  
		Size: 2.7 MB (2690872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5e5358ff25d938dd9dd03ec8c11ac6ae87e8d120fe3d500b2a605ca70fe9c6`  
		Last Modified: Wed, 14 Feb 2018 17:33:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c2d3c92e8c650aa9ac4f90158fdb4c2078d34c0549cae2308091b120f55af3`  
		Last Modified: Wed, 14 Feb 2018 17:33:06 GMT  
		Size: 8.9 MB (8883840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f39918d91252fa8784a7514583f98d873c35f049bca53b4ebac975c13dcce6`  
		Last Modified: Wed, 14 Feb 2018 17:33:05 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45c4a4d4eb820047526a34182c7315f2457d1e3f89e8da55de59a6baeaac471`  
		Last Modified: Wed, 14 Feb 2018 17:33:05 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; 386

```console
$ docker pull maven@sha256:4a3911225086da421ea8a834bd04d03fdb87310230ff6956ade5ebe50cd18d01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300124188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0fe790a011cce0f28b2c3bb2fdde4c76e641bc7f2a3ed55ae352a8c60aecf6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 14:26:01 GMT
ADD file:46df013c9ec06d520ea24c10ca0e5e7bc83e313168969cdcad677d7b418cbbc6 in / 
# Tue, 12 Dec 2017 14:26:02 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 19:03:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 11:15:55 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 11:17:08 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 11:17:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 11:17:10 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 11:17:11 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 11:17:11 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 11:17:11 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:51:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 11:59:32 GMT
CMD ["jshell"]
# Wed, 14 Feb 2018 04:29:05 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 14 Feb 2018 04:29:05 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Feb 2018 04:29:06 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 14 Feb 2018 04:38:06 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 14 Feb 2018 04:38:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 04:42:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Wed, 14 Feb 2018 04:42:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Feb 2018 04:42:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Feb 2018 04:42:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 14 Feb 2018 04:42:49 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 14 Feb 2018 04:42:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 14 Feb 2018 04:42:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 14 Feb 2018 04:42:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4603b89d42471f1f0576b6d8d62275a71b7467d816510c7a1dab54290955d810`  
		Last Modified: Tue, 12 Dec 2017 14:58:48 GMT  
		Size: 26.0 MB (25952276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce07f9131e6e05a4febbb0e2c586bbab194d1a1ef6bb05c91c89b3a50a062a2f`  
		Last Modified: Tue, 12 Dec 2017 19:52:07 GMT  
		Size: 469.9 KB (469866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11e4e69ce866261763cc49064b5019c258329dde6c85165c2a3f59f3dcde356`  
		Last Modified: Fri, 19 Jan 2018 12:26:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0727f553a7b782ebd9f00e5e33769f62aa07e6a036e6bbad5d8f4dc4a5adfd1`  
		Last Modified: Fri, 19 Jan 2018 12:26:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9b774eaf6bc3dbded8aa61be45ede6c38fcf193ad7751c129e18eba2346631`  
		Last Modified: Fri, 19 Jan 2018 12:26:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010d72b02536b5965c4dc61907fd3e8be0ab9f8ebd7825a81fc525553ef6297d`  
		Last Modified: Fri, 19 Jan 2018 13:25:15 GMT  
		Size: 261.7 MB (261739907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435009529c672c488a4c8b47fabf60172b7d9ae9997b894b716df5900e246c25`  
		Last Modified: Wed, 14 Feb 2018 05:11:49 GMT  
		Size: 3.1 MB (3076343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283e564525ace618350b21f088ec29ad30964789aaa492a54f07296c8390d65c`  
		Last Modified: Wed, 14 Feb 2018 05:11:48 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950bc0acd18f2adc7a920ef75fa4bff186f24f0ac6f8a958f6ac27626fc1620c`  
		Last Modified: Wed, 14 Feb 2018 05:11:49 GMT  
		Size: 8.9 MB (8883848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8207fb8055655dba9b65196014957b572c3f58114c21f3e13da3b7e6d3a35b9`  
		Last Modified: Wed, 14 Feb 2018 05:11:48 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74abd9e15b9c79d4408a7249d2459af92f5500216680e29630200679e88a9e9`  
		Last Modified: Wed, 14 Feb 2018 05:11:48 GMT  
		Size: 362.0 B  
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
