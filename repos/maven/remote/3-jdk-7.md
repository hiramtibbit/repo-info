## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:01616e4a002aa02f273c599f6fae9ae5ffcb712e08cc0262a34d60af5bafcbbf
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
$ docker pull maven@sha256:899bad17118175bf61811930744559f33c0a74b272daa286db805115e3ee638d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253758086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd60bbfd52ea3566490661b4eab4cea5e4adc78e28de049572a5b697ee47c6c6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:49:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:03:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:03:13 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:03:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:03:16 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:03:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:03:16 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 15:03:17 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 15:04:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 19:18:35 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 12 Dec 2017 19:18:35 GMT
ARG USER_HOME_DIR=/root
# Tue, 12 Dec 2017 19:18:35 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 12 Dec 2017 19:18:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 12 Dec 2017 19:18:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 12 Dec 2017 19:18:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 12 Dec 2017 19:18:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 12 Dec 2017 19:19:37 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 12 Dec 2017 19:19:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 12 Dec 2017 19:19:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 12 Dec 2017 19:19:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b313b08bab3b8bbcf0de4171a2a80a01e67fab094f272819b76a58705d21ab28`  
		Last Modified: Tue, 12 Dec 2017 08:01:02 GMT  
		Size: 43.3 MB (43253338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cc7f451a527dc5892b61c6ffa31c44df40c1492a08339358c011899af0e528`  
		Last Modified: Tue, 12 Dec 2017 15:46:53 GMT  
		Size: 828.7 KB (828699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb0332dfffd895bf40582440d05bab7d23ea0dde65e014096cfddad95dbd068`  
		Last Modified: Tue, 12 Dec 2017 15:46:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ee39fddbf814698aafab5993f3657becf3ca19e172d1485bc4e2a3177c27fb`  
		Last Modified: Tue, 12 Dec 2017 15:46:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d5249a272c1767328f7bc8bafb39b64ed7f65adb348a3d9da17d1064f9728`  
		Last Modified: Tue, 12 Dec 2017 15:47:20 GMT  
		Size: 128.9 MB (128924827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830e62901f0bbe0b66fa8ca57b36946dbfa129f8360d6934c1fd3ec07993cbfb`  
		Last Modified: Tue, 12 Dec 2017 19:20:30 GMT  
		Size: 8.9 MB (8883841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d37ea051edba2c5ab254a6bc15ace649c6ee0c2bd7283df4c210733fa4b226`  
		Last Modified: Tue, 12 Dec 2017 19:21:32 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55e39622993eab04be5bd0315aeb9941eb224b7ab0de2255fc510fdb6217dae`  
		Last Modified: Tue, 12 Dec 2017 19:21:32 GMT  
		Size: 357.0 B  
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
$ docker pull maven@sha256:8b1f9365215770b4aeffb189ede7f87d7922734d3ddedd95674bf363c693b52d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.2 MB (268175852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3457d72b3211a3d00a339731b9bc1e16fcc560d81207b0dedab8d6bac8bffcfa`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:54:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:22:23 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:22:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:22:25 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:22:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 18:22:25 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 18:22:25 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 18:24:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 20:52:16 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 13 Dec 2017 20:52:16 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Dec 2017 20:52:16 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 13 Dec 2017 20:52:16 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 13 Dec 2017 20:52:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Dec 2017 20:52:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Dec 2017 20:52:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Dec 2017 21:00:38 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Dec 2017 21:00:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Dec 2017 21:00:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Dec 2017 21:00:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd19391b0ebd36e15e21cb3a6728c5950937634b9c81ecc7e3d1422b1dc25eb`  
		Last Modified: Tue, 12 Dec 2017 17:28:18 GMT  
		Size: 43.9 MB (43918299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d0ca68cef4e1739c8fbf83f6b26c51cd048e91bbe967fa4d0d37227c8a6b64`  
		Last Modified: Tue, 12 Dec 2017 19:27:34 GMT  
		Size: 831.6 KB (831634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bd24bd2b412e24f2eeeff5306d1ea3af1346a28a41716fd1c4b03342cdc3b`  
		Last Modified: Tue, 12 Dec 2017 19:27:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234134c5bab8e5e8b2b1b1dfb34473ecad7fd48098d4ab538a228e7d74047f7`  
		Last Modified: Tue, 12 Dec 2017 19:27:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d034ae42e3dec51cbfb1bd59dbf7706eabe4922b928ded2b8661ed79e1c4df2`  
		Last Modified: Tue, 12 Dec 2017 19:28:06 GMT  
		Size: 140.2 MB (140166825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed22a1bff008de646607ff19153bc775804e5b00668bdf5526a28b675397d534`  
		Last Modified: Wed, 13 Dec 2017 21:10:37 GMT  
		Size: 8.9 MB (8883859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ed72d243fe1dd5cb410f43b760a40cd0bda1bac6c56df33ab5250a26ccfeb9`  
		Last Modified: Wed, 13 Dec 2017 21:32:42 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f47da8c3c9016b39d6a22a5d383856cb4acc9b72275325877b106c9b4a6c84`  
		Last Modified: Wed, 13 Dec 2017 21:32:43 GMT  
		Size: 363.0 B  
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
