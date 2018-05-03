## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:dc97d4168e80241f3393284e9b44d540c4d9d69ba368f509e4af154764a01d67
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
$ docker pull maven@sha256:4f872e9f401aefb12848f2d845adbf6fca2e4d70c140429054dd6e4ea7e5b8d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.5 MB (402500776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cccc98e1e4c20d494d607ab1e1ae749d1404510fa671812d0bb8e5ac7ec1a0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 16:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:41:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 16:46:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:42:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:42:29 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 09:42:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 11:23:29 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 11:23:29 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 11:23:29 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 11:23:29 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 01 May 2018 11:24:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 01 May 2018 11:24:37 GMT
CMD ["jshell"]
# Thu, 03 May 2018 01:55:05 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 03 May 2018 01:55:05 GMT
ARG USER_HOME_DIR=/root
# Thu, 03 May 2018 01:55:05 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 03 May 2018 01:55:05 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 03 May 2018 01:55:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 03 May 2018 01:55:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 03 May 2018 01:55:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 03 May 2018 01:55:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 03 May 2018 01:55:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 03 May 2018 01:55:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 03 May 2018 01:55:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 03 May 2018 01:55:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d9e4316522ac259c31b51deac1204cdf4e714ddff3a1d4a1bce1d0d5cfce90`  
		Last Modified: Sat, 28 Apr 2018 20:33:31 GMT  
		Size: 8.6 MB (8617077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e07faf2012b70a40ec906e76db167c387c5d2bd39160622144d2bdd95cb490e`  
		Last Modified: Sat, 28 Apr 2018 20:33:31 GMT  
		Size: 9.5 MB (9459618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91ab815ef7b7e0e7551caccda6cc9f0786b976d357c51cece2970085f174f40`  
		Last Modified: Sat, 28 Apr 2018 20:34:32 GMT  
		Size: 52.5 MB (52525431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60793303ad305cc7f0c7ea23ebb72e10cde83ff2f8d6af25d5b4efc27de655`  
		Last Modified: Tue, 01 May 2018 14:12:13 GMT  
		Size: 895.0 KB (895018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5383c80457c52055cf8cda378b162ae1478b2b590f9ff1a46c3896d7bff0addd`  
		Last Modified: Tue, 01 May 2018 14:12:12 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec43e518a54a0f626b8288352f588c5ba143864d6245112712547d199f3c53b`  
		Last Modified: Tue, 01 May 2018 16:41:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06a7d6e79e1aed69dd9c01e92653c386cd75f9709dece28b971a95f70b5dc58`  
		Last Modified: Tue, 01 May 2018 16:41:51 GMT  
		Size: 273.8 MB (273752729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522b9ba79b0dd235e225b4830d69f1c69e6d829bd1b3aad81856088ccbafd329`  
		Last Modified: Thu, 03 May 2018 02:22:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d5b0a8f3fafe6878f2d084107f036e6bc2da847d79f901f32ec7d93324bfcf`  
		Last Modified: Thu, 03 May 2018 02:22:08 GMT  
		Size: 8.9 MB (8945974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7889c8b724480e7dae61d3922389a29cfe5d6d49af78e0bb1acfea2b8a11b4df`  
		Last Modified: Thu, 03 May 2018 02:22:07 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6a87b096eaf4e3e7c9f31c6e3efd2d34a4cdda474f6125fc392643236597ed`  
		Last Modified: Thu, 03 May 2018 02:22:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v5

```console
$ docker pull maven@sha256:ebc048c535b07a90010bc46226c536e196d8cdb2ba5339e5ce4eb795d64659dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.8 MB (365822072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02edf31ec1862ac886acc671d9e0c6814a0fb2751f3c8b747681979fbba0da55`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:39 GMT
ADD file:289dd78ee91d70cba0d1bc2f296c3c14565c2fc5a7545ded07d727de72e2c7af in / 
# Sat, 28 Apr 2018 08:51:39 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:28:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:34:03 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:34:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:43:55 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:43:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:43:55 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 12:43:56 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 12:45:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 12:45:19 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 15:24:58 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 15:24:58 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 15:24:58 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 15:24:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 15:25:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 15:25:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 15:25:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 15:25:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 15:25:03 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 15:25:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 15:25:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 15:25:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e55988127988d265ae9a533cadc5ee50c9a724a2602f8677daa3d5ca1354a4c8`  
		Last Modified: Sat, 28 Apr 2018 08:59:59 GMT  
		Size: 46.3 MB (46298645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77d6470b972bf9064a20bcc7a75b22d6482d7756a06defc11d6ed90e8091e94`  
		Last Modified: Sat, 28 Apr 2018 09:40:06 GMT  
		Size: 7.8 MB (7786427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbe4fab820e91bcc75ac63fb3d76e1d38e5a2d6fdaafdad0f1660020749a1a5`  
		Last Modified: Sat, 28 Apr 2018 09:40:04 GMT  
		Size: 8.9 MB (8856117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c646593b0be34ed92f3ac4adf7f79024fc1c4049ce29e91a49ed25377bf05d9b`  
		Last Modified: Sat, 28 Apr 2018 09:40:35 GMT  
		Size: 48.1 MB (48122998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dbaffbd2f051080545d16bda2547b8d9c7bb1bc699a4cadbe2bb944cab52ac`  
		Last Modified: Sat, 28 Apr 2018 13:03:10 GMT  
		Size: 887.9 KB (887945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70474ba254f6c36cff935a2eab99f70c2c0140aba063cecfaa146d861dfa4ca`  
		Last Modified: Sat, 28 Apr 2018 13:03:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb79373a92ac80d47a70e2a5accafb9d97bdde01da95b7d977a0cab4ce4a4e`  
		Last Modified: Sat, 28 Apr 2018 13:18:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa052ba49644b5f8f2161a37f4731327141bea66931ae50db4320c17d4948c4`  
		Last Modified: Sat, 28 Apr 2018 13:19:24 GMT  
		Size: 244.9 MB (244922219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdec1aa71ef8263b0d4d57c1bda54de4178bcc66f7261aaa15c980b1c15d9bc7`  
		Last Modified: Sat, 28 Apr 2018 15:30:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb64cd5d99ee54629972cd6dea00f348be910a7daa7305e861831f323ff3f47`  
		Last Modified: Sat, 28 Apr 2018 15:30:25 GMT  
		Size: 8.9 MB (8946029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac073678321398c25c8e29e21932ef99c1bb8e03cf863d02558affab1ec9808b`  
		Last Modified: Sat, 28 Apr 2018 15:30:24 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47d22d4960722bffb4ef772566614c0ba366ef0b2eb78d36317ca4a0205d730`  
		Last Modified: Sat, 28 Apr 2018 15:30:24 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v7

```console
$ docker pull maven@sha256:672d8761d50eebad20089b94a37ca711449495b54fabdf4c600f4e5ea81bb48f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.4 MB (362410257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baafb37140a11e3cfbc1c1b578f77df71cc8ed68716dfe19213043bc401ad0ea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 12:02:19 GMT
ADD file:b8fa078b9ddc39737b1c9eaeea11c4d1a71fb53d2ac6747fa0eab346280119a5 in / 
# Sat, 28 Apr 2018 12:02:20 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:39:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:39:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:40:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:43:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:43:01 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:43:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:48:11 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:48:11 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:48:11 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 12:48:11 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 12:49:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 12:49:55 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 16:47:34 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 16:47:34 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 16:47:34 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 16:47:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 16:47:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 16:47:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 16:47:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 16:47:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 16:47:46 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 16:47:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 16:47:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 16:47:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd36ef86ab3a0249a38384d63e39dbf85bd3f64d4e9ae0179795e2da5754d3fc`  
		Last Modified: Sat, 28 Apr 2018 12:13:46 GMT  
		Size: 44.2 MB (44193727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a133ab46fd64490c435c445d59c6bcc61f77f74b6569886884ee56b2cb82055`  
		Last Modified: Sat, 28 Apr 2018 13:03:57 GMT  
		Size: 7.5 MB (7512678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac41f95fa9c3d47f9424aee3d8e33aa3d9595919788960ec7e1f2141445755b8`  
		Last Modified: Sat, 28 Apr 2018 13:04:00 GMT  
		Size: 8.6 MB (8567704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5735fb90a880924e6b7625ff9cfb4e7cf8973294fa9f01be5e3cddf53dae96`  
		Last Modified: Sat, 28 Apr 2018 13:04:59 GMT  
		Size: 46.0 MB (46019334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a850a10f35a760047a8ca933061d6deb0a65b77f40a9230af44510bd5e509acf`  
		Last Modified: Sat, 28 Apr 2018 13:07:49 GMT  
		Size: 870.5 KB (870530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efe03c62fa5c4700923e8bb63fd0836bcf1cc30f5398517a7435068256e2869`  
		Last Modified: Sat, 28 Apr 2018 13:07:49 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca296661a2a181c0487f9c4ac3d6545b02986a80cea12c18dd6e73e791158f1`  
		Last Modified: Sat, 28 Apr 2018 13:18:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10858ba0d7a9c9c43d76c6b496cb0764482355e0d105caeec25518116fed7606`  
		Last Modified: Sat, 28 Apr 2018 13:19:06 GMT  
		Size: 246.3 MB (246298454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3318ad359a9efd2cba42e4f11a062c816f67f9cb651a648bab5c0fdbc35e3699`  
		Last Modified: Sat, 28 Apr 2018 16:53:03 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0026df3d065f2473c8fb1ff3655dc5b2dabf89bc4e51b0ff215e75b99f5b277d`  
		Last Modified: Sat, 28 Apr 2018 16:53:05 GMT  
		Size: 8.9 MB (8946131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c70de33e6eba6362a5d45146a8a44ec7799e0d54766f186cc713311e3a10431`  
		Last Modified: Sat, 28 Apr 2018 16:53:03 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e6bf1a1443772c573513be01154f864c66187cf9e883dc8e7e8f0ae3243a1e`  
		Last Modified: Sat, 28 Apr 2018 16:53:03 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c4d4603b3cc8a5decb3ef2b25a8c64f91a1067ca1cfb3c6bd134e2e79714554a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.6 MB (373592946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a15665f34fd7def457630f9f114125f8344ea2a09ac4d136221ab6ada4ad68`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 30 Apr 2018 23:27:31 GMT
ADD file:ebaa7f02c60ac8138d085ce979847d36a1a8ce243bcef9b7e81e3e667d060dcb in / 
# Mon, 30 Apr 2018 23:27:34 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:53:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:53:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 07:56:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 10:27:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 10:27:46 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 10:27:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 10:58:26 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 10:58:27 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 10:58:28 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 10:58:29 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 01 May 2018 11:05:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 01 May 2018 11:06:00 GMT
CMD ["jshell"]
# Tue, 01 May 2018 22:19:40 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 01 May 2018 22:19:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 01 May 2018 22:19:41 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 01 May 2018 22:19:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 01 May 2018 22:19:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 01 May 2018 22:19:50 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 01 May 2018 22:19:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 01 May 2018 22:19:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 01 May 2018 22:19:53 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 01 May 2018 22:19:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 01 May 2018 22:19:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 01 May 2018 22:19:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ed5c004c8effeb24e6eee983af18662b0d28341fbbd46983746399c6df3358c8`  
		Last Modified: Mon, 30 Apr 2018 23:47:36 GMT  
		Size: 45.6 MB (45610129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5743e58122723138b73948d263f8090439daf95e6a0f6d8a72c0cfeba04d9e`  
		Last Modified: Tue, 01 May 2018 08:54:36 GMT  
		Size: 7.8 MB (7838582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6678c9321b987d7647d0e701de180a537197d3a09972d9360f57fcbb4bcb50`  
		Last Modified: Tue, 01 May 2018 08:54:37 GMT  
		Size: 8.8 MB (8847158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cf3114c20810dcce0e6e0b591864a1d4457b455549e700ebb985d24097b899`  
		Last Modified: Tue, 01 May 2018 08:55:12 GMT  
		Size: 50.7 MB (50667152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c7655d6e06f904e6313c08e9932b742e8fb3b23280f0da563a77c2701e5ba4`  
		Last Modified: Tue, 01 May 2018 11:44:32 GMT  
		Size: 880.5 KB (880545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a59d35fe8a66f25d70ed68dccdbf501485ebc8f7a7fd6fb8f09f687c776458c`  
		Last Modified: Tue, 01 May 2018 11:44:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9396efbf9b89baf7876342035ae59bbbb85391f25b9ea9935750d529f4ef974`  
		Last Modified: Tue, 01 May 2018 11:53:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25855b2419d5c4b8c9b247aeb6b64b7bdc4c2422d430ed3210b506ef340821d8`  
		Last Modified: Tue, 01 May 2018 11:54:09 GMT  
		Size: 250.8 MB (250801684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d615e574eefed5dd5bb1797d19022bc842d0549d18132f480c42887a7e1997`  
		Last Modified: Tue, 01 May 2018 22:22:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68ce7db8132222d275ddcfeac91092db17b579b05f3bcc1ce0006513e311d1`  
		Last Modified: Tue, 01 May 2018 22:22:32 GMT  
		Size: 8.9 MB (8945995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26bf0fb787ff210598049a6a6f29f3dfb9cac324e4b6019d1815f894e3dcc8`  
		Last Modified: Tue, 01 May 2018 22:22:30 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e366e979c8343ef3ed2430f6bf79ba61861c11320cfbbd9ea22531c4daf1a9`  
		Last Modified: Tue, 01 May 2018 22:22:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; 386

```console
$ docker pull maven@sha256:65980d45aaa037e4e104dd2ea4de97e78608b1755d48d222ccdd7b4b27df8416
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412372534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7000a43f6a47da2bb596cddd5d11b4782fca4f724a5bfb16e6aec97566c4a4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:49 GMT
ADD file:cb21908d8f286f1381ea180209120314676afa1ce4d5d480e0310fe70a4c96d4 in / 
# Sat, 28 Apr 2018 10:40:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:42:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:42:25 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:42:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:50:30 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:50:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:50:30 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 14:50:30 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 14:51:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 14:51:43 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 22:23:37 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 22:23:37 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 22:23:37 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 22:23:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 22:23:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 22:23:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 22:23:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 22:23:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 22:23:41 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 22:23:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 22:23:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 22:23:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:33fb16074d5de3f73c0e2941c01c03e5dc69cfb8f568b7fbc3e29926b575fef0`  
		Last Modified: Sat, 28 Apr 2018 10:47:25 GMT  
		Size: 49.1 MB (49090181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1221b68ac3c47d06c1341ffe090ec03398349bceea7339f16cc35cfc2d4d3e47`  
		Last Modified: Sat, 28 Apr 2018 12:42:56 GMT  
		Size: 8.6 MB (8592005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5f5c3224bba80e122d520e5cb80f4eca7c9d3dc1118c27465db2e68af1bf5f`  
		Last Modified: Sat, 28 Apr 2018 12:42:56 GMT  
		Size: 9.4 MB (9388693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91aebfe730bc77de51767bdecf092d135bf049f0a7507ca124d7d264a937fab8`  
		Last Modified: Sat, 28 Apr 2018 12:43:27 GMT  
		Size: 54.5 MB (54451652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43315f3f6ef9afc8a82b114fb7ddd1803e477b19f1fe8d724461102c92d91fcc`  
		Last Modified: Sat, 28 Apr 2018 15:07:47 GMT  
		Size: 903.0 KB (902997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34e1964937cea05b49de35253b06641aaa8fa344ba7f566091910be8e5cdd90`  
		Last Modified: Sat, 28 Apr 2018 15:07:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eca10baad4050ee30369f3538f0d7fc517ae277f6d9ea4c468fabaeef7ca1a`  
		Last Modified: Sat, 28 Apr 2018 15:14:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e38b84a049760884f397b73a5f2348e668484e5731abb0b261eb6546bd20c9`  
		Last Modified: Sat, 28 Apr 2018 15:15:54 GMT  
		Size: 281.0 MB (280999320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb763382316cc799cf2027517775daaa9883e739cddcb45a06b3bb89645103f`  
		Last Modified: Sat, 28 Apr 2018 22:27:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6ae316c18ae4edbb3a4cd3ef784783397a338c0b15a4fa8b661ea3dd0d96da`  
		Last Modified: Sat, 28 Apr 2018 22:27:44 GMT  
		Size: 8.9 MB (8945997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5383a572693e51c6a258b72a2416ea67ee913c212fd409ef4fc1550a787f3882`  
		Last Modified: Sat, 28 Apr 2018 22:27:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e15f3108e4a7d8ca82fc457ffeda9756f5a9edab165a344a9efa9cd79c8c37`  
		Last Modified: Sat, 28 Apr 2018 22:27:43 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; ppc64le

```console
$ docker pull maven@sha256:2b2745df8bef196fc28031b456234f395666cd0dd05e18a6fabadbd3d442e555
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.6 MB (390619217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ca922d77f91d7505d2dc3a42acec76587c5054517040841309e12e95389365`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:13 GMT
ADD file:320268259acdc4e2a105be735ea4ee0cb1398bb05ce729d46f4a54fa3c3c84e3 in / 
# Sat, 28 Apr 2018 08:19:15 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:59:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:59:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:02:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:02:37 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 17:02:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 17:28:16 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 17:28:17 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 17:28:18 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 17:28:19 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 17:31:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 17:31:27 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 20:13:47 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 20:13:48 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 20:13:49 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 20:13:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 20:13:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 20:13:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 20:13:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 20:13:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 20:13:56 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 20:13:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 20:13:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 20:13:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:354f055c313d4d07201e01fd4de9af4aca89e3df17572870e56c5b8945e48443`  
		Last Modified: Sat, 28 Apr 2018 08:27:42 GMT  
		Size: 49.8 MB (49754912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ee43555042b4504f9abfd5ee30cca506ecd82ea7e7c0ad8585e2f9f9fe550f`  
		Last Modified: Sat, 28 Apr 2018 10:40:34 GMT  
		Size: 8.2 MB (8210961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437ac69577ea2b14f065cda80eaeb0984300f029adc35d3f0992d36b61dba2ce`  
		Last Modified: Sat, 28 Apr 2018 10:40:34 GMT  
		Size: 9.3 MB (9348582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f796a3b0f9dab68b7caf9763699e0beb4ecc93db30d4d21f0f7614656f5763`  
		Last Modified: Sat, 28 Apr 2018 10:41:11 GMT  
		Size: 55.6 MB (55623998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a01a71ddc659d0d5bff00323584b14cae408841eb82ca3fa9f47f62937b613`  
		Last Modified: Sat, 28 Apr 2018 17:56:28 GMT  
		Size: 889.7 KB (889668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f7bcd7974eb4cc8d350cc5d38448b17368c3fbcc7fce3eecc171ace3307160`  
		Last Modified: Sat, 28 Apr 2018 17:56:28 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f44263ccda43d876f4cb07ef4ee00bb3192791d6476e164208c300481ff2aa6`  
		Last Modified: Sat, 28 Apr 2018 18:02:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8623d293a796ed8d34faf971564c09a170fd9653c2fbc4ab2c013d552b834d19`  
		Last Modified: Sat, 28 Apr 2018 18:03:28 GMT  
		Size: 257.8 MB (257843354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd50f65a28df40124988d2bcd3f5b379ccece686187204d85fbc7109f16e4a1`  
		Last Modified: Sat, 28 Apr 2018 20:16:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d10a82d350b884707fa986df8c25a4561099d6447034bfd4eee4ff306e9b4b`  
		Last Modified: Sat, 28 Apr 2018 20:16:32 GMT  
		Size: 8.9 MB (8946050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb2e7007b7b7db0cedd551d4bb66eca70654743c2c1eecddae14a8abb3c57db`  
		Last Modified: Sat, 28 Apr 2018 20:16:31 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d31ed1889c8e4d78bda569827d588efd326fc40ef74a4aa0f8e0ec7c9ad7e8`  
		Last Modified: Sat, 28 Apr 2018 20:16:30 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; s390x

```console
$ docker pull maven@sha256:4b03c119d2845f23c3f7e5172e2c130b856a1b8f2ce927f9e3adfc3236e3b2a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360558804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a035b7e631650325fac2021dd5f8ae6bedb885bdbb612176c4c779cb02e26ace`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 11:43:52 GMT
ADD file:2ebc77cf35fadaf6ffd85f0d203bf60b217e15aa3c15737aac14f71008535107 in / 
# Sat, 28 Apr 2018 11:43:52 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:16:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:16:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:17:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:20:30 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:20:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:27:20 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:27:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:27:20 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 14:27:20 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 14:28:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 14:28:04 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 20:32:06 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 20:32:07 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 20:32:07 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 20:32:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 20:32:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 20:32:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 20:32:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 20:32:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 20:32:13 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 20:32:14 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 20:32:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 20:32:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:893cc85742608c84d1d6314416656d650a83dae134d0d1e22a839b39a03cbf3e`  
		Last Modified: Sat, 28 Apr 2018 11:49:42 GMT  
		Size: 47.4 MB (47350246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4c9d5833dfc4d2317f54d84f70e995c26da6f54d5105c990e33268c58298ff`  
		Last Modified: Sat, 28 Apr 2018 13:30:36 GMT  
		Size: 8.1 MB (8109891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f927619ec0f240db52b999df470fca87cc918c6f4f48eb0d32b719ee0afc06c`  
		Last Modified: Sat, 28 Apr 2018 13:30:35 GMT  
		Size: 9.1 MB (9076061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38ed6e78c93924ad303260b3acff16b83f0f2a3e06865b911ebe750ccb3eec0`  
		Last Modified: Sat, 28 Apr 2018 13:31:04 GMT  
		Size: 52.1 MB (52091911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431704a110f14f73d164fc66b48c820cc067870244d52ec8ac0722d2e5f7ad43`  
		Last Modified: Sat, 28 Apr 2018 14:38:42 GMT  
		Size: 905.6 KB (905581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf66de88ded70b1e1ca29face2f84f0bd3fdd97875230a19233fd07bd1dd7b`  
		Last Modified: Sat, 28 Apr 2018 14:38:42 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91234193e88455b7fbf3bc0d35764760e065cd16970b1322b80dee7b8cbdfac`  
		Last Modified: Sat, 28 Apr 2018 14:49:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9aba9476e44dbe1d6706dc3d8ce433758ec2fb62399bae87f0d7dc6ed68296`  
		Last Modified: Sat, 28 Apr 2018 14:50:18 GMT  
		Size: 234.1 MB (234077457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2701a4c3ed9f78ace123a8a5b0826e0ba66191e55f6f0f27a355807cf3715c30`  
		Last Modified: Sat, 28 Apr 2018 20:37:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48745b63e4ca055ccf49431188a2a95e5ff15cb186557b10ad6dbc18c8434afd`  
		Last Modified: Sat, 28 Apr 2018 20:37:45 GMT  
		Size: 8.9 MB (8945965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59f482f16a531771a0594723e3cdfcfc3472f0f0f1b7a8c526666a9d96fb978`  
		Last Modified: Sat, 28 Apr 2018 20:37:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e9729498d69e3319e80598db0ccc2f322dbd55ea774ea0738e4341f67e9f99`  
		Last Modified: Sat, 28 Apr 2018 20:37:44 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
