## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:b351826b833402a5e0e009a4445359f8b5552886c2ea94b7f1b48e4fb952e3e1
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

### `maven:3-jdk-9` - linux; amd64

```console
$ docker pull maven@sha256:ea7517d0abb43fbade8090183fe9f8aca9b28c8d2dbcaa9e5bfb9d54008f3527
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.8 MB (409755616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:befbce3a4de88d20184e58b881e28330f53997ae8454b4ca356b3e0a1578fdf2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 01:54:31 GMT
ADD file:8fa9c86e024ea7f184db6b16d250b62a03f4a3a60aaaf2bd8cc033c817e9477e in / 
# Thu, 15 Feb 2018 01:54:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:35:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:36:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 09:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 10:42:36 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 10:42:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 10:42:49 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 10:42:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 10:42:49 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 10:42:49 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 10:43:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 10:43:54 GMT
CMD ["jshell"]
# Thu, 15 Feb 2018 18:41:59 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 18:42:00 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 18:42:00 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 18:42:00 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 18:42:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 15 Feb 2018 18:42:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 18:42:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 18:42:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 18:44:27 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 18:44:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 18:44:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 18:44:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5364a50cbd6ed670b0a6d395e61526831db377e95d195e2557b2397af9773ed7`  
		Last Modified: Thu, 15 Feb 2018 02:23:04 GMT  
		Size: 47.9 MB (47869173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbcd6d6fb5ba1a29429cabae2b6c93f13bc6ed37d66980ef59f1c307368279`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 8.6 MB (8633437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5a073a53d8391a783dd8d6b676cd6eb5de13d3cc9bdc71bc7fbda27c5aff`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 9.1 MB (9067842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4518366658c8bd7a59f6273c316b46162e0979f5e42d4782326e0947aaf1900b`  
		Last Modified: Thu, 15 Feb 2018 04:28:47 GMT  
		Size: 49.2 MB (49154102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cd5cea19fcfe89883e59ca70528b9156e3d46cffdf6792daed07c12c359305`  
		Last Modified: Thu, 15 Feb 2018 12:19:42 GMT  
		Size: 893.3 KB (893339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181cac94b36e36864dedef7e52c6c89878952dbb7cbb00c1555bd588df13c4a9`  
		Last Modified: Thu, 15 Feb 2018 13:20:37 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1ff381accc797fd1bfea0a49531f13c90606b11fee45060857b0268ff0f523`  
		Last Modified: Thu, 15 Feb 2018 13:20:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676422ce965933b513e8090e8e74d40d87f39d779fb6995fda3336a0b13d4b87`  
		Last Modified: Thu, 15 Feb 2018 13:21:35 GMT  
		Size: 285.3 MB (285252190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22af5781692131e2a75c3bae57f44fa8b76de195272524137c9c2edd550be7b7`  
		Last Modified: Thu, 15 Feb 2018 18:48:14 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8246e516a517427bfc5820aa55e724c091fba6c2bbb855ec9ea6afa10b99276b`  
		Last Modified: Thu, 15 Feb 2018 18:48:15 GMT  
		Size: 8.9 MB (8883837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6a38d290a3c332f08d5c5ee2a27b5232f5a306aaf0672f87b8a6efc7675e1e`  
		Last Modified: Thu, 15 Feb 2018 18:51:16 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded51115504b6dc4773a805b57e08a267d898ffc33f291fa1f1f624dfabf2d91`  
		Last Modified: Thu, 15 Feb 2018 18:51:16 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v5

```console
$ docker pull maven@sha256:81404eba3007a0c75d49a04efab524cfcee5b06125f161dde7a72e4ebcc344d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.9 MB (390896715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae5d3e206d17dae11a6e99c1c2c5f087a630e312fd1d3bd95ba65cbf2912f01c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 20:58:33 GMT
ADD file:107983e3364b7c4bbc033bbf794c7e00825550acf2bbe9841c4b84c7c881eccd in / 
# Thu, 15 Feb 2018 20:58:33 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:39:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:40:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:36:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:40:49 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:40:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:40:51 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:40:51 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:40:52 GMT
ENV JAVA_VERSION=9.0.1+11
# Fri, 16 Feb 2018 00:40:52 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Fri, 16 Feb 2018 00:42:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:43:01 GMT
CMD ["jshell"]
# Fri, 16 Feb 2018 03:01:38 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 16 Feb 2018 03:01:38 GMT
ARG USER_HOME_DIR=/root
# Fri, 16 Feb 2018 03:01:38 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 16 Feb 2018 03:01:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 16 Feb 2018 03:01:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Fri, 16 Feb 2018 03:01:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 16 Feb 2018 03:01:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 16 Feb 2018 03:01:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 16 Feb 2018 03:02:46 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 16 Feb 2018 03:02:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 16 Feb 2018 03:02:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 16 Feb 2018 03:02:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d01625705202408c94c6dcf3ed17d16b9856be2b48b91c3e700101a2fa56684b`  
		Last Modified: Thu, 15 Feb 2018 21:08:15 GMT  
		Size: 46.1 MB (46118378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1103338ba972f97c075bc5e2ab9b8b03a059f6396c66bc9188aae3817f325660`  
		Last Modified: Thu, 15 Feb 2018 21:52:21 GMT  
		Size: 7.8 MB (7806559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2e6e4400952f6a646419a74b5b3482b874dcf5b7b69695588aaac20e11fa4`  
		Last Modified: Thu, 15 Feb 2018 21:52:20 GMT  
		Size: 8.8 MB (8809744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aa7eb9a0a27ecfb1e071729afa545af667d355a34e2a1ff23980928400eb55`  
		Last Modified: Thu, 15 Feb 2018 21:52:48 GMT  
		Size: 47.0 MB (46970289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b0d20e195916c3a15868fb8f4bfa2cd49f24e5b743b9f51d726995484a8a255`  
		Last Modified: Fri, 16 Feb 2018 00:49:15 GMT  
		Size: 886.6 KB (886560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87ac0f59a2dcf0425ea38b1cf710f78b22819358dc667362f2dba3d994ee73`  
		Last Modified: Fri, 16 Feb 2018 00:54:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dea185161df60ca433b31489389612724b149035f866421302e2faa00b46790`  
		Last Modified: Fri, 16 Feb 2018 00:54:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adde11ea6a6ae4114e17fd1ee193ca5e9acb1fb134c0cb3bee73e88a8219e6d6`  
		Last Modified: Fri, 16 Feb 2018 00:55:25 GMT  
		Size: 271.4 MB (271419607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a1a3951b88e709e37b1781c642b49d839a19525458667107e06da52de977d`  
		Last Modified: Fri, 16 Feb 2018 03:05:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f06eeb0c7878bfce9c32e85f60351e0e04d204d71ac2c1e08842c3587986669`  
		Last Modified: Fri, 16 Feb 2018 03:05:15 GMT  
		Size: 8.9 MB (8883881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d6e32d2edef40afeda7b37863749f1a76f02ddca5b1bfb0196f0bc0cd15b88`  
		Last Modified: Fri, 16 Feb 2018 03:08:12 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35e39958d40d38897b190c3a4ab9745fb34e53cc521501eb96b6732a0398109`  
		Last Modified: Fri, 16 Feb 2018 03:08:11 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v7

```console
$ docker pull maven@sha256:64f5ac0acb7c10467b4eae70042ab3d7676f4e03d2658bf6192d707b24c161d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.4 MB (372368948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a002a8ef26e19b75281ea4ff565971c29fd3594b6c68a0046dd4fc7dfe40c83`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 13:29:14 GMT
ADD file:2aea859c0a6778b5dda37d88a2950bd3b4a3f064ba80238942f0fd989f2f98a1 in / 
# Thu, 15 Feb 2018 13:29:15 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:11:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:11:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:54:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:59:20 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 14:59:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 14:59:22 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 14:59:22 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 14:59:23 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 14:59:23 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 15:00:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:00:36 GMT
CMD ["jshell"]
# Thu, 15 Feb 2018 18:46:39 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 18:46:39 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 18:46:39 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 18:46:40 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 18:46:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 15 Feb 2018 18:46:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 18:46:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 18:46:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 18:48:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 18:48:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 18:48:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 18:48:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:edb17d2272ee1f673a566ef1dad82b5718d41ab85bf825afb024696eb25a6c06`  
		Last Modified: Thu, 15 Feb 2018 13:39:11 GMT  
		Size: 44.0 MB (44041846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73ad90f7c852d25ebf530b4d6d7fb57b5f346d1eab00797d5ea8a95c1c39668`  
		Last Modified: Thu, 15 Feb 2018 14:23:04 GMT  
		Size: 7.5 MB (7530194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a531aa76f39f2767bd533b1565a152fa6ca6579139f7326a264f4cc8d9e8fa5`  
		Last Modified: Thu, 15 Feb 2018 14:23:04 GMT  
		Size: 8.5 MB (8526796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d25c78e3af744565a709949cf449c4a7cddf89eee25cfba16d7dc0b755e154e`  
		Last Modified: Thu, 15 Feb 2018 14:23:33 GMT  
		Size: 45.0 MB (44970011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43272cbc49a3902cb4afa3a1f2179e91eed6debaeae40f0595b8dbabafff4704`  
		Last Modified: Thu, 15 Feb 2018 15:18:49 GMT  
		Size: 869.2 KB (869169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dd6aab46edb9137b76f5c7b44e7f375febbbe631698ab34558408f1b0e8b5b`  
		Last Modified: Thu, 15 Feb 2018 15:27:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147c6fc63e058ce092655c229b43679cab025bc3d22e269608be220f64712341`  
		Last Modified: Thu, 15 Feb 2018 15:27:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f750c894892d4b31097655136001001de934da96640ae61664459403ef3f7527`  
		Last Modified: Thu, 15 Feb 2018 15:28:37 GMT  
		Size: 257.5 MB (257545370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b77c86a453cf1fa0cb3df80ab89b9d8ed1bfed1fb6ba408280374bf8c1b6b3`  
		Last Modified: Thu, 15 Feb 2018 18:50:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf6beda693e46f466859ef05e8669f1b2283aa4f2412af59cecf81a0cbd7250`  
		Last Modified: Thu, 15 Feb 2018 18:50:58 GMT  
		Size: 8.9 MB (8883868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdb4245b3d3061180c2187d188aa44191621c360104530fade2bbc97f7e8969`  
		Last Modified: Thu, 15 Feb 2018 18:53:53 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfff350ce600e225396247c5f5c64bf60de5a32cd816735e2c6304b0bf52f95`  
		Last Modified: Thu, 15 Feb 2018 18:53:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:229b0dbf12c9f753afb8d5b02e9be73459c1cc415f8af7a276e344b480f903a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.6 MB (396608206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52aff75dc568cceb10fcebd7d1357eb1da2a25ccd5c712b2f2389a5a835fb94`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 18:26:40 GMT
ADD file:5bb6b9865cc630a171f0b1113659e175ff9d2d99b497bdf10932b9121245e61d in / 
# Thu, 15 Feb 2018 18:26:41 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:35:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:35:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:37:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:51:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:15:07 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:15:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:15:12 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:15:13 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:15:14 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 22:15:15 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 22:22:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:22:24 GMT
CMD ["jshell"]
# Fri, 16 Feb 2018 11:26:42 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 16 Feb 2018 11:26:42 GMT
ARG USER_HOME_DIR=/root
# Fri, 16 Feb 2018 11:26:43 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 16 Feb 2018 11:26:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 16 Feb 2018 11:26:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Fri, 16 Feb 2018 11:26:50 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 16 Feb 2018 11:26:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 16 Feb 2018 11:26:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 16 Feb 2018 11:29:41 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 16 Feb 2018 11:29:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 16 Feb 2018 11:29:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 16 Feb 2018 11:29:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8dab87746e31cd73bc6c6c954d55ed543b9ebddc4d7d6c9d8961e0f0b0bb6696`  
		Last Modified: Thu, 15 Feb 2018 01:01:04 GMT  
		Size: 45.4 MB (45441133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53592274d741de4c663dc70a37a7bc2a681be612b5580a664d01a567c0c7901`  
		Last Modified: Thu, 15 Feb 2018 20:12:49 GMT  
		Size: 7.9 MB (7852943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e22fd85086b428b96a9700b3efe5d7074813bd2546ae981d697d9ddeceedee1`  
		Last Modified: Thu, 15 Feb 2018 20:12:48 GMT  
		Size: 8.8 MB (8801900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c454e2cd7dd07919afab7476126c8504b78f11c02a5d53f8fb7041ab96425`  
		Last Modified: Thu, 15 Feb 2018 20:13:34 GMT  
		Size: 47.4 MB (47442755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dd16eb58c75249ab9f11546ee366395c18da0f5f8e66447e1831a4db99a202`  
		Last Modified: Thu, 15 Feb 2018 22:57:23 GMT  
		Size: 878.7 KB (878697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a43081d8cee2e5acb6010a93320d11d30f020aa3d8d00ff4d4da3e31460e97b`  
		Last Modified: Thu, 15 Feb 2018 23:09:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf67a917e305285fb6c631a81f7a9368f699503a16d340faef2d4e064a3c384`  
		Last Modified: Thu, 15 Feb 2018 23:09:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71f7d44fa116346bec1dcf8474963a0adc7b79b3256963cc674fec1c3456269`  
		Last Modified: Thu, 15 Feb 2018 23:10:40 GMT  
		Size: 277.3 MB (277305236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796effc1c168b26c48d7a799c7397d1433c7b8495170b59d166c231221266f69`  
		Last Modified: Fri, 16 Feb 2018 11:32:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6e6c3f671dd9f3ccc4ca9c8bc071223ecccaa67c9e79634e37049353226349`  
		Last Modified: Fri, 16 Feb 2018 11:33:00 GMT  
		Size: 8.9 MB (8883844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f6d7082c82425199722af3661602771612ba6d5793b0e563bd63ce130e81b2`  
		Last Modified: Fri, 16 Feb 2018 11:36:14 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4a120eed6f3c188ce0333a14289225e7b8cd14e643bdd0fdf9819ba15351f`  
		Last Modified: Fri, 16 Feb 2018 11:36:14 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; 386

```console
$ docker pull maven@sha256:73726357560e37a2990b61f320823d7c0f77a3293690ffe5244cbf88bb03591a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.0 MB (419031105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74e7a07ef1879cb4bc0e3bd852ad7e3e301c6506b2ed8b7b0bcc79da5a1cea20`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 14:24:56 GMT
ADD file:7e72f60be83facf3a36831facc1a26f572f3ae83fc49b2bc4c8de0b6e3321e84 in / 
# Tue, 12 Dec 2017 14:24:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:02:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:02:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 17:03:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:53:54 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:53:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:53:55 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:53:55 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 18:53:56 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 18:53:56 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 18:56:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 19:01:52 GMT
CMD ["jshell"]
# Wed, 13 Dec 2017 20:59:52 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 13 Dec 2017 20:59:52 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Dec 2017 20:59:53 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 13 Dec 2017 20:59:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 13 Dec 2017 20:59:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 13 Dec 2017 20:59:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Dec 2017 21:00:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Dec 2017 21:00:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Dec 2017 21:08:30 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Dec 2017 21:08:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Dec 2017 21:08:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Dec 2017 21:08:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c3cf1d3d69aef55e4aef2c1f0a9455d1dfbbb7ae17d15a0d963e8c55e6e61af4`  
		Last Modified: Tue, 12 Dec 2017 14:58:13 GMT  
		Size: 49.3 MB (49250980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767ba54897a1df6013ec3b06fd1546d3123979a02ac1f8f8eb0f079fd928126`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 8.6 MB (8608693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936341216c1a183dced55abc7be29ddca5b53a3fe1a3d85f00538784bd1a090d`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 9.3 MB (9251281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf1165f2ef33ed9e795182bb0912cf7dd9ac26b5bd6e12fb53b9c469c2f832b`  
		Last Modified: Tue, 12 Dec 2017 17:34:24 GMT  
		Size: 50.2 MB (50228972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3238289ff178b02f347c62e82e28c2045f3d60083b8cf34c8319df235149cb49`  
		Last Modified: Tue, 12 Dec 2017 19:41:48 GMT  
		Size: 902.4 KB (902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5da487583a16f34d9a3443d5a4774b3095efcbc454349d539b2d419d104ba15`  
		Last Modified: Tue, 12 Dec 2017 19:41:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a66969633f8bf1dd82a5e7401fbf03204700471a82be4aef72d8d99cff738b9`  
		Last Modified: Tue, 12 Dec 2017 19:41:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbe34cfad356be1815a0d386b40dd8a143521521f0fb97793e461176511a1b1`  
		Last Modified: Tue, 12 Dec 2017 19:43:27 GMT  
		Size: 291.9 MB (291903171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baaf5fe7e6f346d7a17b0a8173a89bd0a30492f6465bc744f07a11b8f7ac1bb`  
		Last Modified: Wed, 13 Dec 2017 21:19:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4eb183fccf98783581cdcfa98fde265278091b3995405186d35a26de66572b4`  
		Last Modified: Wed, 13 Dec 2017 21:19:47 GMT  
		Size: 8.9 MB (8883844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b79a5820ddf11896e160ab34ffb43559de1983dff5413c7cd2d54bf8f621de8`  
		Last Modified: Wed, 13 Dec 2017 21:47:50 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7c0d944bf1e9886526b4aad7b9ad3ce0e53b985f303faeebf989383a7d8585`  
		Last Modified: Wed, 13 Dec 2017 21:47:50 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; ppc64le

```console
$ docker pull maven@sha256:13090720d6d9002b529e4ca901466863c2a1b12d12f145927cc69ab4e2316067
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.7 MB (397690626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aee0306e0442b8c219186fd4100104ca5ea62928cc347856df8d5ca21c1ee50`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 01:35:38 GMT
ADD file:47880b96018a20d461394bfee9f42022392b5a715ce6caa05668c81d22bd4348 in / 
# Thu, 15 Feb 2018 01:35:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:26:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:33:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:00:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:01:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:01:04 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:01:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:01:12 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 12:01:14 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 12:13:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:13:34 GMT
CMD ["jshell"]
# Thu, 15 Feb 2018 17:10:26 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 17:10:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 17:10:36 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 17:10:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 17:10:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 15 Feb 2018 17:10:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 17:11:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 17:11:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 17:12:31 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 17:12:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 17:12:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 17:12:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bb0115828b7c31e86fe8af9c575640d37b7fda139063b888abc6d9e3918927cb`  
		Last Modified: Thu, 15 Feb 2018 01:44:12 GMT  
		Size: 49.5 MB (49452997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b4ca0e4957fe813d9111b3f330183b278dd8533c9283aa11d1304a4305bd6e`  
		Last Modified: Thu, 15 Feb 2018 08:24:47 GMT  
		Size: 8.2 MB (8210641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3705860163816dcaecf267ec2e4ef10cf0abefeeb33cd4678d0c86d79ac89ed4`  
		Last Modified: Thu, 15 Feb 2018 08:24:50 GMT  
		Size: 9.3 MB (9305059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ded6b910a7220eb72b1522521396a04bfcbbadec60d0c5248cd8029cb13de1b`  
		Last Modified: Thu, 15 Feb 2018 08:25:24 GMT  
		Size: 52.1 MB (52050046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f52bc8b8c0156ac2a89bbb90fd5b3b361d8c56aca7a0d1a51a70b671da505bc`  
		Last Modified: Thu, 15 Feb 2018 13:08:33 GMT  
		Size: 888.6 KB (888620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75783991ce803446b349954454a4ce3ddc036dbef53f62fee6fca43b08fd5e`  
		Last Modified: Thu, 15 Feb 2018 13:21:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf84017290115b35d1679a37accff2eceecebe2d0ff3bad5817a66bb3d1bf96`  
		Last Modified: Thu, 15 Feb 2018 13:21:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902220bfda3de39fbb8c24c08170f4d1fa0b2184a0186e754b8820e10d05a29`  
		Last Modified: Thu, 15 Feb 2018 13:24:10 GMT  
		Size: 268.9 MB (268897690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e72ce3ffb3baee77813b13e880a21bb9a7e87363bf0216dc413773c1c23c0`  
		Last Modified: Thu, 15 Feb 2018 17:14:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb951964bb630d6950f960f4a16a607fbfe80704c42b4c70f274a22eb58679f6`  
		Last Modified: Thu, 15 Feb 2018 17:14:39 GMT  
		Size: 8.9 MB (8883870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0768ea2929c0c274fac547d8bff0ba44d0c7390ca93847e7caad893c98ee7d5`  
		Last Modified: Thu, 15 Feb 2018 17:16:08 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638463ae341bb719a18cc51eec2a697bdb5441cae46e4ff591ea358252166c1`  
		Last Modified: Thu, 15 Feb 2018 17:16:08 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; s390x

```console
$ docker pull maven@sha256:057b310d1768d54482c7a1a9af1d7eb2ebe566b2e3e2329996e07c95f1e693a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.0 MB (369011587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2115bf4ec5fff9620ed26cd22c93aeae8fb0e4880cf66a56cd54db56a878647d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:25 GMT
ADD file:044e96e222c822455babaf357ef8db0795de4149889cb81364204dca02b492ce in / 
# Thu, 15 Feb 2018 06:23:26 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:52:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:53:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:15:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:19:17 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:19:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:19:18 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:19:18 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:19:18 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 08:19:18 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 08:20:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 08:20:10 GMT
CMD ["jshell"]
# Thu, 15 Feb 2018 12:55:54 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 12:55:54 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 12:55:55 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 12:55:55 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 12:55:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 15 Feb 2018 12:55:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 12:55:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 12:56:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 12:56:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 12:56:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 12:56:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 12:56:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2c81921a603ec79dabbd4e8cddf60c1d80b67ca921cfc969b21b2e2786d10aa8`  
		Last Modified: Thu, 15 Feb 2018 01:14:13 GMT  
		Size: 47.2 MB (47237963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91819694b4f3f99b68e351dce6412264a13c403c821302391b468b46a939bdea`  
		Last Modified: Thu, 15 Feb 2018 06:59:38 GMT  
		Size: 8.2 MB (8167378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b1294664ef6e52571bc28e685c8bc665f53866e0616d602895c953f3b7946a`  
		Last Modified: Thu, 15 Feb 2018 06:59:39 GMT  
		Size: 9.0 MB (9039908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fad9e70f14aaa60a609ae652863369ab260bc319dc6853fa496c9d22f54fa5`  
		Last Modified: Thu, 15 Feb 2018 06:59:55 GMT  
		Size: 49.1 MB (49122799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb51cbfe7416f091bc5c0c50d133a4a45bec352451b8def30f7109fc3b714da`  
		Last Modified: Thu, 15 Feb 2018 08:35:04 GMT  
		Size: 904.1 KB (904063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283c23dadd94de202cb01b0a790f66fc491ab82d4ee88dad15e38edaf67f731c`  
		Last Modified: Thu, 15 Feb 2018 08:38:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3235f0428bc1bd29d24b7b853ef2f14c2283c4df67ff2ba4ab3fa6d86d303c0`  
		Last Modified: Thu, 15 Feb 2018 08:38:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3b16532699e4e90ad4ba58e4e41de5106a332eee684c55e957545d4991a3d`  
		Last Modified: Thu, 15 Feb 2018 08:39:20 GMT  
		Size: 245.7 MB (245653947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087660061a6e75eead3038c874125238205178359138d8f055d6a3ab85f4d213`  
		Last Modified: Thu, 15 Feb 2018 12:58:11 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c293871afcc608c112ae5815ea0cabbb4dbe49f97abd4a875123e0fc6fc5c7e4`  
		Last Modified: Thu, 15 Feb 2018 12:58:10 GMT  
		Size: 8.9 MB (8883843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2911abcab5c260795d0481db3ebca3da1b7b3caa48666dab5305ebb51a79707`  
		Last Modified: Thu, 15 Feb 2018 12:59:13 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927540c9831dfb07a5e49be82602efa9eb0a6191074fb256d09923094c6dd963`  
		Last Modified: Thu, 15 Feb 2018 12:59:12 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
