## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:75958a745c120a587fad02da9fdefcd94a7be1957ce2712938027d7c632681db
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

### `maven:3-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:b862bb30f514d31acfe37de6eda751a36637df19c1f41a6213a988ce1170cfd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.0 MB (221046661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa67557ea13737b9f1db083191619dd77e6a5f704a456084e5bac1dddf3aeace`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:39:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 11:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:12:58 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:12:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:12:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 21:25:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 21:25:03 GMT
ENV JAVA_VERSION=7u151
# Tue, 27 Mar 2018 21:25:04 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 27 Mar 2018 21:26:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 28 Mar 2018 00:06:17 GMT
ARG MAVEN_VERSION=3.5.3
# Wed, 28 Mar 2018 00:06:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 28 Mar 2018 00:06:18 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Wed, 28 Mar 2018 00:06:18 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Wed, 28 Mar 2018 00:06:21 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 28 Mar 2018 00:06:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 28 Mar 2018 00:06:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 28 Mar 2018 00:06:22 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 28 Mar 2018 00:06:23 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 28 Mar 2018 00:06:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 28 Mar 2018 00:06:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb899b4df216ab398fb05547f86dc371db944cf53dea7913d2f4261ed09e2be`  
		Last Modified: Wed, 14 Mar 2018 00:34:40 GMT  
		Size: 19.3 MB (19266189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9837675e69408ed38a5cd50b7bad4aceb89b943ec4d0c6547d3da7c2911ce1fa`  
		Last Modified: Wed, 14 Mar 2018 13:15:40 GMT  
		Size: 795.6 KB (795622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d602d78cf3359ca712061598d8ff56eb3242af4ca83b5d1c650e8d2e37e70fe7`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0d228baacbc3d4fd9bb4ed7dda30fee6eb4cee8a615c3c1f03215c6e2c8478`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d1688be92b433a406425eb34d6d80a41cc51bacfc3888e972b7c728e60bc0`  
		Last Modified: Tue, 27 Mar 2018 22:07:00 GMT  
		Size: 139.4 MB (139428862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad0a8f5cc1d06289cef88997f69a50675ce10356f41fa5f37c2025fc2308e93`  
		Last Modified: Wed, 28 Mar 2018 00:15:53 GMT  
		Size: 8.9 MB (8945981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c61d85a8dd1221e84f00beb41fb23e477541ed078477b799dd0b149b67e22e`  
		Last Modified: Wed, 28 Mar 2018 00:15:52 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8d4650cd12a9fa7b2622adbb978b58086a87bdea0cc43253ec5134a7c121e1`  
		Last Modified: Wed, 28 Mar 2018 00:15:52 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v5

```console
$ docker pull maven@sha256:07481d8fb8655c55bef9a31c33e6f1372bca956c87ce85b272530de0989a5044
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.9 MB (224867678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3afb589c36dfc972c3d308f395a6d1d8273b46db21b0d199739ed7803aa5f5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:39:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:39:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:40:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:56:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:56:12 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:56:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:56:14 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:56:14 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 22:56:15 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 22:56:15 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 22:57:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Mar 2018 02:02:29 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 15 Mar 2018 02:02:30 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Mar 2018 02:02:30 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 15 Mar 2018 02:02:30 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 15 Mar 2018 02:02:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Mar 2018 02:02:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Mar 2018 02:02:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Mar 2018 02:02:34 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Mar 2018 02:02:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Mar 2018 02:02:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Mar 2018 02:02:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e38973509dab679db34ca4d9a05e4ed0f3915f49334a4f060c1a0f120e112e6`  
		Last Modified: Wed, 14 Mar 2018 20:53:54 GMT  
		Size: 18.7 MB (18657059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a706586f06c4e6d0360c364664fa2ce61e6662eff311a7457784eff8a3b24e0`  
		Last Modified: Wed, 14 Mar 2018 20:54:19 GMT  
		Size: 41.1 MB (41103024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59937366dfcec92ecbf1f479e1e9c22e3e47c3dcfadee9120ddb72b479a41a23`  
		Last Modified: Wed, 14 Mar 2018 23:20:40 GMT  
		Size: 822.0 KB (821960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fab3d8045b0dbdd8eaf7a5a4848bf063815a26588a92ca2e8365446939e317`  
		Last Modified: Wed, 14 Mar 2018 23:20:40 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84fcf6491204178e3d2e7501da4442891172c6643fab3e86a16185e5c524ae5`  
		Last Modified: Wed, 14 Mar 2018 23:20:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b0b1171e563bc179d479c39bf58f7597fab35615cf1d5d91267f1daea3a0f7`  
		Last Modified: Wed, 14 Mar 2018 23:21:01 GMT  
		Size: 104.4 MB (104447996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88aa76495214b15015590fd0f0e9ea195da3249dca6a7c0fe4e400cae0f47526`  
		Last Modified: Thu, 15 Mar 2018 02:05:35 GMT  
		Size: 8.9 MB (8946139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0d01133d98706a34b7ba587dedb0e1bc22fe757da2d2fabf4ca97b74f47c9b`  
		Last Modified: Thu, 15 Mar 2018 02:05:34 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb5925d15505e61f4ffcf82be5f1476e47b368ff1a5d92c2c646a9d073ad0e2`  
		Last Modified: Thu, 15 Mar 2018 02:05:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v7

```console
$ docker pull maven@sha256:3a53ca9432b33f765e20b8752a1d5a70f7cb8e9486c3399f7613ea75ee27d862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229343487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:684c74e6b349296a4a4b076f3573af4b8c9fad37219da3516d483715b0892967`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:12:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 14:12:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 14:12:58 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 14:12:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 14:13:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 14:13:18 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 14:13:19 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 14:13:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 14:14:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 18:00:27 GMT
ARG MAVEN_VERSION=3.5.3
# Wed, 14 Mar 2018 18:00:27 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Mar 2018 18:00:27 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Wed, 14 Mar 2018 18:00:28 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Wed, 14 Mar 2018 18:00:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Mar 2018 18:00:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Mar 2018 18:00:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 14 Mar 2018 18:00:32 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 14 Mar 2018 18:00:42 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 14 Mar 2018 18:00:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 14 Mar 2018 18:00:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443c42bb7889303382d6ffcef26b8a270f42924190090e04cfb62fd0703a08e`  
		Last Modified: Wed, 14 Mar 2018 13:27:11 GMT  
		Size: 18.3 MB (18264883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0679f3dfeabb2acc76154f3d3f423d04c7239f9ebcd2a11ccff7fe4341fee540`  
		Last Modified: Wed, 14 Mar 2018 13:27:40 GMT  
		Size: 39.7 MB (39728135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5305958a542e75eeb820afb955769bf7f737da84b6dd0676ef0f17d14310a32`  
		Last Modified: Wed, 14 Mar 2018 14:44:07 GMT  
		Size: 795.9 KB (795884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69acf8409aaca3cf4a8ad85506e857272012ee8407912b9df22c84e8443b76b`  
		Last Modified: Wed, 14 Mar 2018 14:44:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf8947f4cbcb2fb24f43b113628b14e2c73120bdfd38eee8db872f7a0fb592`  
		Last Modified: Wed, 14 Mar 2018 14:44:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07367cb54a1b96d0919fe3427a0a28180a7fe2f8a0458d7983b0357e7224c95`  
		Last Modified: Wed, 14 Mar 2018 14:44:29 GMT  
		Size: 112.9 MB (112904888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eca80c123f76cc85394f1d2c23c1e4187d1536e5bd2654c11da58101ce2f334`  
		Last Modified: Wed, 14 Mar 2018 18:05:37 GMT  
		Size: 8.9 MB (8946134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0571e05b83093899c3eafb1270207821b1af7161ccf6dda1d92f461b51da76`  
		Last Modified: Wed, 14 Mar 2018 18:05:36 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688bdab1c219c5ed6f22c042ffeb807136280ca6142cd01377e4ffaef51d0d01`  
		Last Modified: Wed, 14 Mar 2018 18:05:35 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:db6941f1e2d5f565882cdc4cbda8a356f1c3cb2c61332e5cd62aabc3aea2744c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.3 MB (224284345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7142d444391fef42f48ff508755e986416a1c172caef02a4890f01441d1860`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:32:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:32:13 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 11:32:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 11:32:16 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 11:32:17 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 03 Nov 2017 11:32:17 GMT
ENV JAVA_VERSION=7u151
# Fri, 03 Nov 2017 11:32:18 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 03 Nov 2017 11:36:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 10 Mar 2018 17:32:14 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 10 Mar 2018 17:32:14 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Mar 2018 17:32:15 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 10 Mar 2018 17:32:16 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 10 Mar 2018 17:32:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Mar 2018 17:32:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Mar 2018 17:32:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Mar 2018 17:32:22 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Mar 2018 17:32:23 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Mar 2018 17:32:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Mar 2018 17:32:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020c643c8c46d0bb474c096cd8b1d55972db5425a18b0f2bf6cb26d5690b9f47`  
		Last Modified: Fri, 03 Nov 2017 10:49:32 GMT  
		Size: 41.0 MB (40990021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf57dcb33f3ea81f04cdd223785407f4a03a033a438875a788af05791e90bbb`  
		Last Modified: Fri, 03 Nov 2017 11:53:04 GMT  
		Size: 823.8 KB (823848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441a79547bea6b18df1218c3fe1dce88f8f6be0fb3533e3fb4cbf7dd8e4a1da4`  
		Last Modified: Fri, 03 Nov 2017 11:53:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce462d3b82be90634dca6cc2a5aa75cb03e808940527fbe3361eb96be557d8e`  
		Last Modified: Fri, 03 Nov 2017 11:53:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f5471d725a308960ef70bb764f38ff29c2be2ce73b7ec29dee947e72c19b9d`  
		Last Modified: Fri, 03 Nov 2017 11:53:27 GMT  
		Size: 104.9 MB (104855642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de16ef2667f79254f6b56f9e4826cc1964482281380eb27f7162c376f0aad0c`  
		Last Modified: Sat, 10 Mar 2018 17:40:19 GMT  
		Size: 8.9 MB (8945975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292ad62de467e072b6d1f23cac0a7223039e52dd5a83f42af57b9afccd90307b`  
		Last Modified: Sat, 10 Mar 2018 17:40:16 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55608ab987f72c8fc84a4b3e5d811418f6f192b8ead1232fcca801cadd5a1497`  
		Last Modified: Sat, 10 Mar 2018 17:40:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; 386

```console
$ docker pull maven@sha256:91d1261229e5fd509bbe8dc96565c846c87513529ba5d424d5ff9af513dc3198
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268252845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1272dd2fd2ef5f3ccd573d873233a1b9918dcc73be19f63f8de7ecba79fa62`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 21:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 21:19:29 GMT
ENV LANG=C.UTF-8
# Thu, 22 Feb 2018 21:19:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 22 Feb 2018 21:19:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 22 Feb 2018 21:19:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 22 Feb 2018 21:19:31 GMT
ENV JAVA_VERSION=7u151
# Thu, 22 Feb 2018 21:19:31 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 22 Feb 2018 21:21:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 13 Mar 2018 20:36:29 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 13 Mar 2018 20:36:29 GMT
ARG USER_HOME_DIR=/root
# Tue, 13 Mar 2018 20:36:29 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 13 Mar 2018 20:36:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 13 Mar 2018 20:36:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 13 Mar 2018 20:36:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 13 Mar 2018 20:36:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 13 Mar 2018 20:36:34 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 13 Mar 2018 20:36:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 13 Mar 2018 20:36:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 13 Mar 2018 20:36:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd37341d2e8d0120dac260d59db1f0c652a97e97c2908107573c246fb2d16dbc`  
		Last Modified: Thu, 22 Feb 2018 22:07:11 GMT  
		Size: 831.7 KB (831651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b0636ea8ce444a513a8902aba4128fb57a9ee7236320866ad3550f77004bb6`  
		Last Modified: Thu, 22 Feb 2018 22:07:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220cbcc37079aa39769864d48cbf45aef0313fc5f1e961e2861923173777ae1d`  
		Last Modified: Thu, 22 Feb 2018 22:07:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ad426af2bdf9d5d4fa44162796ed053b8357b3d7a50df1cfb4f8c247c932cb`  
		Last Modified: Thu, 22 Feb 2018 22:07:40 GMT  
		Size: 140.2 MB (140171225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d79020d98aeffd22d15eff582cdca08b99378ea79607ccd7b5958527f2ec3d`  
		Last Modified: Wed, 28 Mar 2018 17:00:47 GMT  
		Size: 8.9 MB (8945979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ae46ece7a3864e8e9eeafc888c800247d3b712d6ad8dbe35c8ff65beecfff7`  
		Last Modified: Wed, 28 Mar 2018 17:00:46 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6e2cddb1dfe69dcfdfb3bd03a8498fe3b861beeea016b9c78e4f2d95cdab8`  
		Last Modified: Wed, 28 Mar 2018 17:00:46 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; ppc64le

```console
$ docker pull maven@sha256:80dde5002c2e6930efb0a19fe3ab3a67963e31374bcb57aa585ff298d11f6ce5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229601853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7879862298f6085db07e5cfd04115b9fabbaeae0bf65ff33533e0a58b527163c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:36:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:36:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:39:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:36:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:36:20 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 05:36:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 05:36:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 05:36:33 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Mar 2018 05:36:36 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Mar 2018 05:36:39 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Mar 2018 05:45:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Mar 2018 11:15:54 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 15 Mar 2018 11:15:56 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Mar 2018 11:15:57 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 15 Mar 2018 11:15:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 15 Mar 2018 11:16:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Mar 2018 11:16:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Mar 2018 11:16:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Mar 2018 11:16:17 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Mar 2018 11:16:19 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Mar 2018 11:16:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Mar 2018 11:16:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86648639f69004413e64c4fcb6ad3ffd98348d0c786a9efc5722c3ce5732e7c`  
		Last Modified: Thu, 15 Mar 2018 02:29:25 GMT  
		Size: 19.2 MB (19203303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb8f3b52990756515e29d9ee1dbf0cb2ba787aae0a952609c385d2f1d11f6ec`  
		Last Modified: Thu, 15 Mar 2018 02:29:50 GMT  
		Size: 42.8 MB (42759015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56367cb7ab689caf7b6bd5dfa33c4dd72097d9046f81213711a7a15f789001db`  
		Last Modified: Thu, 15 Mar 2018 06:12:15 GMT  
		Size: 824.7 KB (824742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff2539e61a7674de8c32e5c870bc5af4cd64d1830faf047689f4425f523984`  
		Last Modified: Thu, 15 Mar 2018 06:12:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd515c55fcc2e1bb34804b0ff1af5239f5d99255ba093f533b9fa369db5e2656`  
		Last Modified: Thu, 15 Mar 2018 06:12:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483c492edb58032698ba56414e22c4737d498d0bc2683ba540e8caf09a451b49`  
		Last Modified: Thu, 15 Mar 2018 06:12:33 GMT  
		Size: 106.1 MB (106050021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9c5f28bd63a4fb6d3e02e9cd9d0f10211fe973b37334b5a782e304f90f1066`  
		Last Modified: Thu, 15 Mar 2018 11:22:07 GMT  
		Size: 8.9 MB (8946117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58f0f9fc583afc27031102fbd6fa985ae80a237eac9b30034ffcaf51f18810d`  
		Last Modified: Thu, 15 Mar 2018 11:22:05 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ba116fd37f13d2fa0d1e432a6a5b85b89a2fb1f1675f4838a5e5d2f302664d`  
		Last Modified: Thu, 15 Mar 2018 11:22:06 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; s390x

```console
$ docker pull maven@sha256:282b6d6fc88988b549bb75f4fb03c0904477614daf0f0433ee0425dea7dd28f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230493051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd6bdfe297161d2a7d90fe7a2616655de7f45d54b11f958886fb8d6692cf1f8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:50:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:50:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:46:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:46:52 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:46:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:46:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:46:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:46:53 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 06:46:54 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 06:47:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 11:09:24 GMT
ARG MAVEN_VERSION=3.5.3
# Wed, 14 Mar 2018 11:09:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Mar 2018 11:09:24 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Wed, 14 Mar 2018 11:09:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Wed, 14 Mar 2018 11:09:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Mar 2018 11:09:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Mar 2018 11:09:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 14 Mar 2018 11:09:30 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 14 Mar 2018 11:09:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 14 Mar 2018 11:09:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 14 Mar 2018 11:09:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a685ac71022aa1adebd3c61832ae0c6225f8634316998ccff12b61e2db87b964`  
		Last Modified: Wed, 14 Mar 2018 05:58:56 GMT  
		Size: 19.5 MB (19472068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb8d238930b380a590123e7f02135ce37730c646dfedf9f689dee9182c7735c`  
		Last Modified: Wed, 14 Mar 2018 05:59:11 GMT  
		Size: 43.4 MB (43388484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3373f77a573af2235f386f5a42877a3905f1d0fc441d59ba4d76b88ad91f2ac`  
		Last Modified: Wed, 14 Mar 2018 07:00:44 GMT  
		Size: 837.9 KB (837945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab0f755d0868df9a82556eca37b820e1de90083f33f4a70324b2082339d3984`  
		Last Modified: Wed, 14 Mar 2018 07:00:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd859333a79926a79e7cd66258e9fab7daa97e380b708adbd1b85787c0f6c3`  
		Last Modified: Wed, 14 Mar 2018 07:00:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96754f8aaf22712724bbe073514b275e094cbeb392099e3980dc84db69737fec`  
		Last Modified: Wed, 14 Mar 2018 07:00:56 GMT  
		Size: 105.1 MB (105051605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5b1d767c2697f4c530c6f84f6813cfc37b499113a406f4e305c05094aa5c9b`  
		Last Modified: Wed, 14 Mar 2018 11:11:41 GMT  
		Size: 8.9 MB (8945984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2cc99e7020246370d10dcf1c9ee702947ab9eb6f81f475a27a3fc7be7eeb90`  
		Last Modified: Wed, 14 Mar 2018 11:11:40 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c35a41f6775340d0bb3e5a415b082067a032ae2dbbd6bedb024c9cb3627fbf8`  
		Last Modified: Wed, 14 Mar 2018 11:11:40 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
