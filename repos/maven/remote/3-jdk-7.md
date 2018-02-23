## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:da5667ce4204aeb57deaf687405b3f46b4653392b8f1165e743ccf348ae362dc
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
$ docker pull maven@sha256:bf45b6eb60ec36d08cb3ecf2163e6c13ae94b4f3d2fecb95fae9467d65da8cf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253769011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390e0cbc7b29acc853080d275b19aad8adf91c7351386c21912e190a4e17e781`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:22:18 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:22:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Feb 2018 09:22:20 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Feb 2018 09:22:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Feb 2018 09:22:20 GMT
ENV JAVA_VERSION=7u151
# Sat, 17 Feb 2018 09:22:21 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Sat, 17 Feb 2018 09:23:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Feb 2018 11:07:49 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 17 Feb 2018 11:07:49 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Feb 2018 11:07:50 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 17 Feb 2018 11:07:50 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 17 Feb 2018 11:07:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 17 Feb 2018 11:07:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Feb 2018 11:07:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Feb 2018 11:09:42 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 17 Feb 2018 11:09:42 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 17 Feb 2018 11:09:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Feb 2018 11:09:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4d404166f39accce9e01cab8fc1eb56d0f87a9bbe5deb3ee582b78ce5d7732`  
		Last Modified: Sat, 17 Feb 2018 09:32:05 GMT  
		Size: 828.7 KB (828680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee10cdd42228ef042e3be4186c0bdadebd0c017258225e9860517158b0c54f6`  
		Last Modified: Sat, 17 Feb 2018 09:32:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e225da24dc85953790b471ef015273297425f739e442258551eb706b472a5`  
		Last Modified: Sat, 17 Feb 2018 09:32:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5586cd89459ff5119ddf9501ba23eaceeb80a2f21236933dc776d3974bbc05c`  
		Last Modified: Sat, 17 Feb 2018 09:32:34 GMT  
		Size: 128.9 MB (128925961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aca378573071681518b04ca14e46a96a6bd110c68e834ff28a99968aaad9e72`  
		Last Modified: Sat, 17 Feb 2018 11:10:37 GMT  
		Size: 8.9 MB (8883838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdae5a9b413bf1ee085b2602465bc3bd48dd5df8bfe59c2cd242d2e62ed0680d`  
		Last Modified: Sat, 17 Feb 2018 11:11:53 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08fe7cfe8a70dcca39fc361dd0dcbdd6616367a493fa815f31a4156c1357128`  
		Last Modified: Sat, 17 Feb 2018 11:11:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v5

```console
$ docker pull maven@sha256:35846c05c49fa008a520375ed53bdd6f9280db7de2c94dd0ad977f0a59496957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224804253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46814bd63c390d28051221f348d66abcde03c8d2afe86d428fdf446b20067f42`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:47:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:47:22 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:47:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:47:24 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:47:24 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:47:25 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 21:47:25 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 21:48:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 03:00:16 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 16 Feb 2018 03:00:16 GMT
ARG USER_HOME_DIR=/root
# Fri, 16 Feb 2018 03:00:16 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 16 Feb 2018 03:00:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 16 Feb 2018 03:00:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 16 Feb 2018 03:00:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 16 Feb 2018 03:00:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 16 Feb 2018 03:02:05 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 16 Feb 2018 03:02:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 16 Feb 2018 03:02:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 16 Feb 2018 03:02:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f5943b157bbccac7563e081132907b0ffd141d75d25f249fad4a982a635d0c`  
		Last Modified: Thu, 15 Feb 2018 22:03:35 GMT  
		Size: 822.0 KB (821970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ecdce8a4dd7d4420a82e1c0f5736e3101721264bf1f825ba4b803f1a86a819`  
		Last Modified: Thu, 15 Feb 2018 22:03:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b309fdd005d4c0ef0c8e14619e4dbc59a8864580af44fd4ebc88b1e27c50361b`  
		Last Modified: Thu, 15 Feb 2018 22:03:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918ba605d20abc9361b4fcc89eeea93c3f00aae359d301b7330cf9ecc12e2de5`  
		Last Modified: Thu, 15 Feb 2018 22:03:54 GMT  
		Size: 104.4 MB (104447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b99c2a0d3ef1a5f3cb0c7e06c6239d89eec76e2ef4dc3bbb610b5c01cd5af6`  
		Last Modified: Fri, 16 Feb 2018 03:03:58 GMT  
		Size: 8.9 MB (8883874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d187219836597790161f874ee7594ca7b70df31785884440bff3dcfb2ac57cd0`  
		Last Modified: Fri, 16 Feb 2018 03:05:57 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dfd1ae2e7dc21445c05bd8256921d22515bbf9ecb8983de33fb0d5ccb07a09`  
		Last Modified: Fri, 16 Feb 2018 03:05:57 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v7

```console
$ docker pull maven@sha256:c6681a71e5594bc2803dc5e9d96bc1bed2d2c3bd672e6c9291e385290183c3bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229279607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f007b38202eda312423490cc1c475f18983bb73969c13e3aa4fab5f95b8a8917`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:07:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:07:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:09:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:11:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:11:59 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:12:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:12:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:12:03 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 15:12:03 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 15:12:04 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 15:13:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 18:44:03 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 18:44:10 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 18:44:17 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 18:44:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 18:44:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 18:44:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 18:44:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 18:47:16 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 18:47:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 18:47:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 18:47:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8a07b6e86b2c65c308a85824c9f5b02164077ed676afac0b1a88e545d9ab47`  
		Last Modified: Thu, 15 Feb 2018 14:21:46 GMT  
		Size: 18.3 MB (18264834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5179f817ea4b0eb8f622e2bb2499841408f4672313248fbc34394965a8fc6f2`  
		Last Modified: Thu, 15 Feb 2018 14:22:12 GMT  
		Size: 39.7 MB (39727512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697321cde4597515ed32aa2d5f73311002029b3d76eb228aff3655ce4de8fbbd`  
		Last Modified: Thu, 15 Feb 2018 15:41:23 GMT  
		Size: 795.9 KB (795883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b9b0f57916304181176f9d6e3ed93058bb5619ea4884e685574a38e2923ceb`  
		Last Modified: Thu, 15 Feb 2018 15:41:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dc8a6098518a9e73fd0322835b74dd9a3f7e4b894385da93d23bb8ace979a7`  
		Last Modified: Thu, 15 Feb 2018 15:41:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875bb842af64e6c4ea520fd6d23688bdcbe783eb35cc41a110f2a4536a7ee6de`  
		Last Modified: Thu, 15 Feb 2018 15:41:45 GMT  
		Size: 112.9 MB (112904621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da4a68df212c5273180c5a97e964bccd6b8f75c7d206abe97b4c5ef078378ec`  
		Last Modified: Thu, 15 Feb 2018 18:49:44 GMT  
		Size: 8.9 MB (8883871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0ef12c98ed91810281322652880f378f9e20b421a82c7f57b9910a6b170ab6`  
		Last Modified: Thu, 15 Feb 2018 18:51:52 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c9367de1eb434b9de9a9da2bf0f31d77af1976a86b1ab468b9108278c73cd3`  
		Last Modified: Thu, 15 Feb 2018 18:51:52 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:088fdfd95cf698314005663fb0e1e451c1edea3b000cfdfaf93181dd3932e487
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.2 MB (224222210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc61671cebbef0d8133eb6f8c50e933b5bc74b98626693ec779c416e0f27ab4`
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
# Fri, 03 Nov 2017 12:22:11 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 03 Nov 2017 12:22:12 GMT
ARG USER_HOME_DIR=/root
# Fri, 03 Nov 2017 12:22:13 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 03 Nov 2017 12:22:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 03 Nov 2017 12:22:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 03 Nov 2017 12:22:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 03 Nov 2017 12:22:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 17:30:01 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 17:30:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 17:30:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 17:30:03 GMT
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
	-	`sha256:763c07489cbfdadc85581becba333a8609218564565f53cbaa956c53a471f706`  
		Last Modified: Fri, 03 Nov 2017 12:23:15 GMT  
		Size: 8.9 MB (8883835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7cf0692fcf8ad1651beac8b721110cb96ac827d4e379f59f9c75b059dbd738`  
		Last Modified: Thu, 07 Dec 2017 17:33:52 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc23e2cc76cb385d9a6047f825e033f5f3c94ce036fd016684c72341cbb18cdc`  
		Last Modified: Thu, 07 Dec 2017 17:33:53 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; 386

```console
$ docker pull maven@sha256:fc2296f3471366ff973a28a3205fb048c297d4181833c92b8967c0129f58abfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.2 MB (268190698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2feb5d93256364319fbc9a2b2dddde73e4996408f8c76f0530923adc1f996082`
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
# Fri, 23 Feb 2018 15:35:26 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 23 Feb 2018 15:35:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Feb 2018 15:35:27 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 23 Feb 2018 15:35:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 23 Feb 2018 15:35:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Feb 2018 15:35:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Feb 2018 15:35:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Feb 2018 15:53:56 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Feb 2018 15:53:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Feb 2018 15:53:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Feb 2018 15:53:57 GMT
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
	-	`sha256:39475ad946fba80b285f540e669a298f279bff578e89d35511c421f6e248a69e`  
		Last Modified: Fri, 23 Feb 2018 16:06:20 GMT  
		Size: 8.9 MB (8883842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00836dd0ffd66741decbdf07014ae61b8375f33d56e45d2d690a6576bd58fb`  
		Last Modified: Fri, 23 Feb 2018 16:15:30 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ceba92c7268767f2db1c37fc9371fe026ee871d64741eb91b69cb41cc718f0`  
		Last Modified: Fri, 23 Feb 2018 16:15:30 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; ppc64le

```console
$ docker pull maven@sha256:c8c201bf486e58714c24ee11c40d1c90b13eccf938cc6fa19610772ec8c06917
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229538820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6d58272d73d4683faba28889b382b452ae74b59262a4354853d43860e3e8ba`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:54:08 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:54:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:54:15 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:54:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:54:19 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 12:54:21 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 13:00:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 17:09:15 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 17:09:17 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 17:09:18 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 17:09:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 17:09:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 17:09:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 17:09:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 17:11:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 17:12:00 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 17:12:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 17:12:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e115caf0b90102f293e585f18e067814aabf94a3b5e0cdd0faf1c4225f6c962`  
		Last Modified: Thu, 15 Feb 2018 08:22:40 GMT  
		Size: 19.2 MB (19202823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bcdd39b8e0fce4bf5f2471a09528a02f6faddc10868aba702fedf9832d6e6b`  
		Last Modified: Thu, 15 Feb 2018 08:23:17 GMT  
		Size: 42.8 MB (42759419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b1b24b05dbb6fdff045659a5d38cc24d3fac5206c787d79f75f00bdaab70d`  
		Last Modified: Thu, 15 Feb 2018 13:56:51 GMT  
		Size: 824.6 KB (824605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efe9f7d2248894bc10796a4e17f65e78a4d09ba4f8b0c1c8a0cb66bec86f982`  
		Last Modified: Thu, 15 Feb 2018 13:56:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d0697b2c34664b439d345c2a1e47e1dd261a8fa3c3d8d5473ebbd0d67b6d2b`  
		Last Modified: Thu, 15 Feb 2018 13:56:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9865cc42cce6889c3eca3ac4bd9a563ccb33332656844572157330c1db5d327b`  
		Last Modified: Thu, 15 Feb 2018 13:57:20 GMT  
		Size: 106.0 MB (106049533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e333b419b84690e31fec1482c0d5cf2afed6dffce4416e4b36118891665c293`  
		Last Modified: Thu, 15 Feb 2018 17:13:53 GMT  
		Size: 8.9 MB (8883877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4d68884faa09157030ce134882ff29b1b3a39bd4ebfa089f0310b14ffca806`  
		Last Modified: Thu, 15 Feb 2018 17:15:04 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46cb74c378c8712cf2962020314d22681864e2a8bf0c9abe8e0b18390224fb1`  
		Last Modified: Thu, 15 Feb 2018 17:15:04 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; s390x

```console
$ docker pull maven@sha256:43e68759a98f6083c42c9a1b4a32641b43d2927bdcc1b14b24685c2af3681d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230432146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07efa12e2d40545981b4f6f689cba17b09e06864e79a89aca49de5e85bc33d54`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:26:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:26:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:26:14 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:26:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:26:15 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 08:26:15 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 08:27:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:54:42 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 12:54:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 12:54:42 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 12:54:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 12:54:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 12:54:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 12:54:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 12:56:19 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 12:56:19 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 12:56:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 12:56:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bf0613109facadcc1735f903e20f3c3bd8ad103c303f8bce9269d74ac019c0`  
		Last Modified: Thu, 15 Feb 2018 06:59:05 GMT  
		Size: 43.4 MB (43389715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e4cd2d7056e2f58d5793d71d6122a93b27f09d0cbe3d5444358f132646b797`  
		Last Modified: Thu, 15 Feb 2018 08:44:32 GMT  
		Size: 837.9 KB (837935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d985a27caa2be7a0d6b3ac252855d3b330627905fd0430de969a9f0e5e3dd61b`  
		Last Modified: Thu, 15 Feb 2018 08:44:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61d7a561de21c9fd8b78a73e2e57452cfba067332544573e6ad22f3e640d1d`  
		Last Modified: Thu, 15 Feb 2018 08:44:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5366e23e25090a2c8e77ba7c79c6c9ea4565dedf6143996f2a14e3b189f676d`  
		Last Modified: Thu, 15 Feb 2018 08:44:45 GMT  
		Size: 105.1 MB (105052267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25bc4c8378864bd6861612ccf8b34e87551c8d3358f439029c5328e5a401dc4`  
		Last Modified: Thu, 15 Feb 2018 12:57:37 GMT  
		Size: 8.9 MB (8883835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75367cb709ec8db75fff142434377284ab4aafb9a3f923c8569027ff52f2e89b`  
		Last Modified: Thu, 15 Feb 2018 12:58:19 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d005831b62245dff2b7902308c9ade5921c941d6ce8d07366bc8b8152a474f76`  
		Last Modified: Thu, 15 Feb 2018 12:58:19 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
