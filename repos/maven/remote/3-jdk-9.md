## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:d126864d85bfdf98c9576e4ad4470a22e8a012c3e8eacfe1d2be5950a19d6309
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
$ docker pull maven@sha256:a2a9e2a2fe249501aacad879d621565235982bbd0bb4712ba716a80d30e088ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.2 MB (399153373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ceb12002cc56961ff5f9362b56f33f7f1a4462d5c86dbe800c2927e98512710`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:31:01 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:31:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:31:03 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:31:03 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 20:54:35 GMT
ENV JAVA_VERSION=9.0.4+12
# Wed, 04 Apr 2018 19:53:37 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Wed, 04 Apr 2018 19:54:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 04 Apr 2018 19:54:45 GMT
CMD ["jshell"]
# Thu, 05 Apr 2018 11:54:14 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 05 Apr 2018 11:54:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Apr 2018 11:54:14 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 05 Apr 2018 11:54:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 05 Apr 2018 11:54:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 05 Apr 2018 11:54:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 05 Apr 2018 11:54:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Apr 2018 11:54:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Apr 2018 11:54:21 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 05 Apr 2018 11:54:21 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 05 Apr 2018 11:54:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Apr 2018 11:54:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce32ff39c367f0307feecbf834f608a0d6f829745f46cb79d19357c27719fa9`  
		Last Modified: Wed, 14 Mar 2018 12:33:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d2e1de18124a2d04438290a972e21b1414cc9c5c80d274284bc079d5eadcca`  
		Last Modified: Wed, 14 Mar 2018 12:33:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c298dc0c340e422999bba6a142b54393addfc87f09f6a89be2e3b6392152a4`  
		Last Modified: Wed, 04 Apr 2018 21:42:40 GMT  
		Size: 274.3 MB (274309684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1a1090133ba30a364c6c96472b2249a1cf4bc4e604f29fc82223c472370c4e`  
		Last Modified: Thu, 05 Apr 2018 11:58:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66100f18c85098edabccc347aba4b9703b43f9f656aee8027ee4ac1941e170a2`  
		Last Modified: Thu, 05 Apr 2018 11:58:11 GMT  
		Size: 8.9 MB (8945979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6004d4afc929e6f7cb4899eca4705155d2feab5b5c961a744b7ebe9ecfb2712`  
		Last Modified: Thu, 05 Apr 2018 11:58:10 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b677ad110b89d2ce1169739cccc927f2c59aa0cb17cf25ce5db3bfceb0149794`  
		Last Modified: Thu, 05 Apr 2018 11:58:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v5

```console
$ docker pull maven@sha256:894fc746b05e8e15e5904d3d6f54d98985c94c4fe179951a979a3f5b4ff48535
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.8 MB (365754030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd83f7fbb1a9fef5506881f439191849b7be1bc58971694394ccc239925c392a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 19:58:54 GMT
ADD file:0c259893711fbbb74d52158310e6405ffafee1cf80df0c5023f0f262fedaae44 in / 
# Wed, 14 Mar 2018 19:58:55 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:43:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:38:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:43:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:43:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:43:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:43:21 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:05:13 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:06:59 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 18:09:08 GMT
CMD ["jshell"]
# Fri, 06 Apr 2018 18:38:27 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 06 Apr 2018 18:38:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 06 Apr 2018 18:38:28 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 06 Apr 2018 18:38:28 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 06 Apr 2018 18:38:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Fri, 06 Apr 2018 18:38:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 06 Apr 2018 18:38:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 06 Apr 2018 18:38:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 06 Apr 2018 18:38:33 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 06 Apr 2018 18:38:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 06 Apr 2018 18:38:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 06 Apr 2018 18:38:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:709e01ad8801f6d1fc3e64805651a95479961d03211125705eadb61df54191e9`  
		Last Modified: Wed, 14 Mar 2018 20:10:21 GMT  
		Size: 46.1 MB (46055043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cabfe63914ea326825c026f366ea50e79289864c2497b91e2974b96bc934f1`  
		Last Modified: Wed, 14 Mar 2018 20:54:36 GMT  
		Size: 7.8 MB (7806745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e862bd65c86e50e663d9f9f50f85f442d2c632cf810c672f7898ce71d7e69`  
		Last Modified: Wed, 14 Mar 2018 20:54:37 GMT  
		Size: 8.8 MB (8849409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73cbaff32c495dbf820d75a2ab92f48e706690972a32075399e7cc921171f6a`  
		Last Modified: Wed, 14 Mar 2018 20:55:03 GMT  
		Size: 47.0 MB (47039468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ab72241b5eb79748aed02f2dbfa944d2ea85614427a6cc7b30765605f936c8`  
		Last Modified: Wed, 14 Mar 2018 23:03:12 GMT  
		Size: 886.6 KB (886553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6406a78c7e78b851cc3cafbd16b2ecadb7b127f6d79638a3ce37a70b24e25d`  
		Last Modified: Wed, 14 Mar 2018 23:03:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34fec21a4204ce79406f43521792236edcd9e1fb3a815486f8218f9d053539d`  
		Last Modified: Wed, 14 Mar 2018 23:03:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac12aefdefc2858aef5be26d5b5b02f8ffc6af87e6c807269a649843ab02dd8c`  
		Last Modified: Fri, 06 Apr 2018 18:18:40 GMT  
		Size: 246.2 MB (246168976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7d6afcb426aa7799b21c0789fd79b4362dab6b7095854ae72ebd286fff4f51`  
		Last Modified: Fri, 06 Apr 2018 18:39:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bab07dbb6e245d8c8dd282f250168577b1c2220eed249d710941087d9c6046f`  
		Last Modified: Fri, 06 Apr 2018 18:39:40 GMT  
		Size: 8.9 MB (8946138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8eb3828d7dfc5a7a4cc2146056ccbe198a05c068374fbbd7c3fa175a0e899c`  
		Last Modified: Fri, 06 Apr 2018 18:39:38 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bc99384065cd2113e8fa64654d3d1b645199ea40456e14e40542d0fb8c28b`  
		Last Modified: Fri, 06 Apr 2018 18:39:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v7

```console
$ docker pull maven@sha256:8d1c6ff44a89e2bc83bb2588ecaf191df20038b74b6231ef6f83423453e19359
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.8 MB (361798190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85fe55f93cac70c6514cfbf21974c004d8771366912a2df56885332e2ee040c1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 12:30:24 GMT
ADD file:cf4220476786ea80d7a6f84bd9dc94b6d6ac8945750c25c3bfaacd81d179ad18 in / 
# Wed, 14 Mar 2018 12:30:25 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:16:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 20:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:07:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:11:22 GMT
ENV LANG=C.UTF-8
# Wed, 28 Mar 2018 21:11:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Mar 2018 21:11:24 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 28 Mar 2018 21:11:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 28 Mar 2018 21:11:25 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:05:41 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:06:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 18:06:51 GMT
CMD ["jshell"]
# Fri, 06 Apr 2018 18:39:32 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 06 Apr 2018 18:39:32 GMT
ARG USER_HOME_DIR=/root
# Fri, 06 Apr 2018 18:39:33 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 06 Apr 2018 18:39:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 06 Apr 2018 18:39:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Fri, 06 Apr 2018 18:39:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 06 Apr 2018 18:39:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 06 Apr 2018 18:39:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 06 Apr 2018 18:39:42 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 06 Apr 2018 18:39:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 06 Apr 2018 18:39:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 06 Apr 2018 18:39:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4bebe725acb1248d8ff52284d58dd16fdca68548a367bc396431ad7bc5d34cdd`  
		Last Modified: Wed, 14 Mar 2018 12:42:11 GMT  
		Size: 44.0 MB (43986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0693f5a3991162a5990e13b166d617b8f1fe371f4d92a04086448d19f61284b`  
		Last Modified: Wed, 14 Mar 2018 13:28:33 GMT  
		Size: 7.5 MB (7530551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56df267e9bb7c177688d09890d4bb7057540af666c61d9a1e741b8e886ece4cb`  
		Last Modified: Wed, 14 Mar 2018 13:28:33 GMT  
		Size: 8.6 MB (8563576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed65ea37ec3d7608bc51bfb9b9e1e2b8669ff32cf8d7bedcd814c4be832e7ab8`  
		Last Modified: Wed, 28 Mar 2018 20:46:30 GMT  
		Size: 45.1 MB (45051629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3834a5e072cecbe53e8f0970cb9f31833bae2ce27af3943bc24c6b3b99f193fb`  
		Last Modified: Wed, 28 Mar 2018 21:19:19 GMT  
		Size: 869.3 KB (869259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106144495e4af0cc629d11d4c34b439fc8635951ca5409cb2f2612a48be9963e`  
		Last Modified: Wed, 28 Mar 2018 21:23:05 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd34d445f3db7a1d0fc7f28017a1fe531baeb78a646386bbf2d2f4ccb635f77c`  
		Last Modified: Wed, 28 Mar 2018 21:23:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6260795ce4145db6b58fbdb7700e8eb5ca40ec9eac96eaab1efa5e4d4461ef28`  
		Last Modified: Fri, 06 Apr 2018 18:19:52 GMT  
		Size: 246.8 MB (246848788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70981adfe6ca4e843ba24c53a2a2b307fa8e8e7e7ada34e11563db60f70cd80`  
		Last Modified: Fri, 06 Apr 2018 18:41:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9612138eb3f644d055b07cda59e3d2b131b41200407bd9a2b65a3a2399d5e20d`  
		Last Modified: Fri, 06 Apr 2018 18:41:01 GMT  
		Size: 8.9 MB (8946134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eac8e6e521343442689b1d7323882b556bb29fd235523e2151ec6e73091c50`  
		Last Modified: Fri, 06 Apr 2018 18:41:00 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a284e5fb502718c4e804e028ff80914276cf5f39bdf760692c88839616ddd394`  
		Last Modified: Fri, 06 Apr 2018 18:40:59 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:bff342c19b76d44fdfe971e17d2c8f48e9509189675b3512b10dfb4afb4ce424
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.7 MB (370721404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6df16bc7df40e2692d259a516b1f7967f9e022b2b01ebd5cb10114d1021eb66`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 17:27:51 GMT
ADD file:c8a410dfd7a3136f565a9b629d0a835719a68ad80b782a9281d1759c6eb8f4ef in / 
# Wed, 14 Mar 2018 17:27:52 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:37:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:39:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:58:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:22:33 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:22:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:22:41 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:22:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:32:46 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:39:11 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:47:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 18:47:42 GMT
CMD ["jshell"]
# Fri, 06 Apr 2018 21:31:23 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 06 Apr 2018 21:31:24 GMT
ARG USER_HOME_DIR=/root
# Fri, 06 Apr 2018 21:31:24 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 06 Apr 2018 21:31:25 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 06 Apr 2018 21:31:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Fri, 06 Apr 2018 21:31:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 06 Apr 2018 21:32:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 06 Apr 2018 21:32:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 06 Apr 2018 21:32:08 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 06 Apr 2018 21:32:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 06 Apr 2018 21:32:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 06 Apr 2018 21:32:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:885529e16b447a9a1d0e77e83ee5f3a4ded117a603fc735a386b40c6af050fd4`  
		Last Modified: Wed, 14 Mar 2018 17:42:26 GMT  
		Size: 45.4 MB (45374529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af181fc68ef0c1305345dda1947e4560354a950ca8826a733d8ff9b4f123be4`  
		Last Modified: Wed, 14 Mar 2018 19:02:58 GMT  
		Size: 7.9 MB (7852691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77236b6977166cb08e885fe34b4cd11cd8ca232506de32b79dc0261614f26e4e`  
		Last Modified: Wed, 14 Mar 2018 19:02:58 GMT  
		Size: 8.8 MB (8837983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9448bb102ab7b0e233b516a8c24aa132d505f71aabccc853b5596b4e1672a7`  
		Last Modified: Wed, 14 Mar 2018 19:03:35 GMT  
		Size: 47.5 MB (47507133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edbdfd4c9e4284d3bb3ec6e424431fe9992c80dd6d0f993f7cecdad82b23055`  
		Last Modified: Wed, 14 Mar 2018 21:07:24 GMT  
		Size: 878.8 KB (878765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e996f3f82858b0425462ab0b662bbb3d79aed1f97e24baa02496aec51b0fc3`  
		Last Modified: Wed, 14 Mar 2018 21:26:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96b382cc6eec062db9ebf9d82387e6202c513b878892355e4adb35cde745140`  
		Last Modified: Wed, 14 Mar 2018 21:26:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583a018eb182da582c9a20b8593bac1d9ad355a2ebdee2339958c8701895a0a4`  
		Last Modified: Fri, 06 Apr 2018 19:31:24 GMT  
		Size: 251.3 MB (251322625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c635dc1429e27ef983fa13ac64273f45cdd96505729d5f9f4c05acf37c8836f2`  
		Last Modified: Fri, 06 Apr 2018 21:39:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0404f3e505ea88f73f70258ebeb0b23c44b71eb44a2fde10254f6a0fdf06ad6a`  
		Last Modified: Fri, 06 Apr 2018 21:39:49 GMT  
		Size: 8.9 MB (8945976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2237789abfeb3a48abec79bbf565d33a4c3b3c27f19885a09be7ad60de30456`  
		Last Modified: Fri, 06 Apr 2018 21:39:47 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5191f9a5f92f2acd5805598474003451d8ce3ef0a4a487ed8c439fa689fe693b`  
		Last Modified: Fri, 06 Apr 2018 21:39:47 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; 386

```console
$ docker pull maven@sha256:46530af3ba304e74eb77e8cf5d4ca6a05a0de6119f07f145d010c6cafbd9cb2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.2 MB (409152812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa65e4ea2fb1439e414f9b352e856b9c315ed4d7482542bd077ae6dd0737bd9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Mar 2018 15:19:02 GMT
ADD file:3a6a63b0b9425f04e46cf51ded918e18b0db615ed41661ca95b309dce2bd3ad1 in / 
# Tue, 27 Mar 2018 15:19:02 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 08:48:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 08:48:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 08:58:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 30 Mar 2018 03:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 30 Mar 2018 04:15:53 GMT
ENV LANG=C.UTF-8
# Fri, 30 Mar 2018 04:15:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 30 Mar 2018 04:15:56 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 30 Mar 2018 04:15:56 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 30 Mar 2018 04:15:56 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 19:13:37 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 19:15:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 19:15:27 GMT
CMD ["jshell"]
# Sun, 08 Apr 2018 05:32:57 GMT
ARG MAVEN_VERSION=3.5.3
# Sun, 08 Apr 2018 05:32:57 GMT
ARG USER_HOME_DIR=/root
# Sun, 08 Apr 2018 05:32:57 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sun, 08 Apr 2018 05:32:57 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sun, 08 Apr 2018 05:33:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sun, 08 Apr 2018 05:33:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sun, 08 Apr 2018 05:33:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sun, 08 Apr 2018 05:33:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sun, 08 Apr 2018 05:33:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sun, 08 Apr 2018 05:33:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sun, 08 Apr 2018 05:33:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sun, 08 Apr 2018 05:33:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e8960ddf567e95d313a33100aba08d2853543b56dc972c34d9b0560911085e99`  
		Last Modified: Thu, 15 Mar 2018 01:13:58 GMT  
		Size: 48.8 MB (48829003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bd06ae496500dfaf57620e7e6695d0a3ccc74b4b52092ae973b1b5a37c3d46`  
		Last Modified: Wed, 28 Mar 2018 11:05:48 GMT  
		Size: 8.6 MB (8616768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a15100151cbd40076f77329a0441e052824b6fed9dd97f76a8dcae0b5bdb5a`  
		Last Modified: Wed, 28 Mar 2018 11:05:47 GMT  
		Size: 9.4 MB (9378681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27708fef14b9660aeafdca060bada0d11de7829870e609a8c8d5929680bf1fca`  
		Last Modified: Wed, 28 Mar 2018 11:15:04 GMT  
		Size: 50.9 MB (50932947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd2af5b7eb8a36aba5625817575b72e3e639c9d9ee157b6362aaa4d316b06a3`  
		Last Modified: Fri, 30 Mar 2018 07:32:17 GMT  
		Size: 901.7 KB (901700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2f62e3e0469df922e4d3d421b67a039844fbfb4455a8cc69b916d671b66985`  
		Last Modified: Fri, 30 Mar 2018 12:11:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df669942759882ddd4f5af565c7e92ed7d52af3aaa8681abf14220e2f5fa5ab`  
		Last Modified: Fri, 30 Mar 2018 12:11:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199f644aadca6fb627f0651c993f8b4233edb79333566a46555dca6877ad1c94`  
		Last Modified: Sat, 07 Apr 2018 02:04:28 GMT  
		Size: 281.5 MB (281546007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5428991df76c9303bffc14436b306ed655106fd0fda300008a7e4ccaf46f407e`  
		Last Modified: Sun, 08 Apr 2018 06:48:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f51dc63caa12d2e2760b0cb2e1e7858555ab25e29b1a0886e868ff0eb06ce3e`  
		Last Modified: Sun, 08 Apr 2018 06:48:53 GMT  
		Size: 8.9 MB (8946010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a379026fbe2105914be1f6546b810372637b40ee67cfd368d12b62c009602d`  
		Last Modified: Sun, 08 Apr 2018 06:48:51 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890bc08f8ac614de2e28df7e909b7923e1e546b1ba7f69ecf4718fcd7f1e27df`  
		Last Modified: Sun, 08 Apr 2018 06:48:51 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; ppc64le

```console
$ docker pull maven@sha256:d5c759a5e4c269593cd4ed6d9baf08e393530e7fbf6b168a2a9ca2006aa5ba34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.4 MB (387350507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac148d72853b9562846ef96f8ab172522f956ebc366a5cead96b1418c3720c4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:40 GMT
ADD file:fd074388a1e87afa5199386a81dd5480d59e87c99744d1503003e1cf82eeeeaa in / 
# Wed, 14 Mar 2018 00:33:42 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:55:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:57:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:21:11 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:21:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:21:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:21:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:29:36 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:51:46 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 19:01:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 19:01:25 GMT
CMD ["jshell"]
# Fri, 06 Apr 2018 21:10:34 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 06 Apr 2018 21:10:36 GMT
ARG USER_HOME_DIR=/root
# Fri, 06 Apr 2018 21:10:38 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 06 Apr 2018 21:10:40 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 06 Apr 2018 21:10:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Fri, 06 Apr 2018 21:10:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 06 Apr 2018 21:10:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 06 Apr 2018 21:11:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 06 Apr 2018 21:11:03 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 06 Apr 2018 21:11:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 06 Apr 2018 21:11:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 06 Apr 2018 21:11:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:caeed743812fb8916f058220350e305c0e940ed0a62904c7cd30f479de34194c`  
		Last Modified: Wed, 14 Mar 2018 00:41:02 GMT  
		Size: 49.5 MB (49465766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aaececf1154f36498af71895dbfe2455b71b0652ce6a3048ac81822992106d`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 8.2 MB (8210793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a71fba1af38f62545037942242f7cc1e558fa18154f937e68d6d61ed9d625`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 9.3 MB (9339565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfcc456225ab24cf578ce5446afe1a019b9e41ff7ca89d22777947029b2c2b5`  
		Last Modified: Thu, 15 Mar 2018 02:31:05 GMT  
		Size: 52.1 MB (52111302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfa1ad5283396a1b16dce28dedec9e4a37bd6ec358f28ce99c3873faf052f5e`  
		Last Modified: Thu, 15 Mar 2018 06:01:04 GMT  
		Size: 888.6 KB (888644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3ed575fdd59d512479eb6b5d46956b97a6d6e8f4e2094acf68eeaa5446f2dc`  
		Last Modified: Thu, 15 Mar 2018 06:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd06f8be147e5f834ae5b944321a0c018d4331bfeb0fc268dd70b1cfdb70dbf`  
		Last Modified: Thu, 15 Mar 2018 06:01:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab8a637d8465548eec5e51a510d967a8d23738aa6a8a1a187a21cefb667981e`  
		Last Modified: Fri, 06 Apr 2018 19:21:16 GMT  
		Size: 258.4 MB (258386616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1990ca2bf5672240ffa2eff50b71279805f7f8430abd21485874ddd983864894`  
		Last Modified: Fri, 06 Apr 2018 21:13:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa46e8654eb919b41608b93a89a8b7ade4978a914a345db91aa1d078068a6df`  
		Last Modified: Fri, 06 Apr 2018 21:13:33 GMT  
		Size: 8.9 MB (8946121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4c767a341101fae3a31420ecbb7c0aef5ed1f569ada63392771b1684939211`  
		Last Modified: Fri, 06 Apr 2018 21:13:32 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d82a12d7fae020138f45cb49da539c66daa4dc9b7989fe051efb573f69c058`  
		Last Modified: Fri, 06 Apr 2018 21:13:32 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; s390x

```console
$ docker pull maven@sha256:ef969069f88c3b86e19a7849397bc74e80c320faa4260082cd46e995145c9321
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.1 MB (358084018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00e489c3be381c8d8bf597e8b097089945acd58783d8f75016f41454c9c8769`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:56 GMT
ADD file:5a60fa1a91bb2b727d8bfee18b5c3fe6523121a4b58861a0ba668058347acd7d in / 
# Wed, 14 Mar 2018 05:22:56 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:52:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:53:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:40:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:40:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:40:23 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:40:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 17:00:22 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:07:26 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:09:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 18:09:22 GMT
CMD ["jshell"]
# Fri, 06 Apr 2018 18:46:11 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 06 Apr 2018 18:46:11 GMT
ARG USER_HOME_DIR=/root
# Fri, 06 Apr 2018 18:46:12 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 06 Apr 2018 18:46:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 06 Apr 2018 18:46:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Fri, 06 Apr 2018 18:46:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 06 Apr 2018 18:46:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 06 Apr 2018 18:46:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 06 Apr 2018 18:46:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 06 Apr 2018 18:46:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 06 Apr 2018 18:46:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 06 Apr 2018 18:46:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:86f40742baf992f423224f64973e576104b2523ae049a44d7574dda9869d0735`  
		Last Modified: Wed, 14 Mar 2018 05:27:34 GMT  
		Size: 47.2 MB (47214668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a246e96e1e744b60e0cc0af03037b01bf7646f969863ef6a65410d8296981b2`  
		Last Modified: Wed, 14 Mar 2018 05:59:43 GMT  
		Size: 8.2 MB (8166746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a4f67084db30235359962de1d5608135e8a73048a898619ce995fd58947477`  
		Last Modified: Wed, 14 Mar 2018 05:59:42 GMT  
		Size: 9.1 MB (9075240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21b2c6a8c15ce6f8cbc645f7f3179dbe1808043ef6e238cd3a419aa1f2d2d39`  
		Last Modified: Wed, 14 Mar 2018 06:00:00 GMT  
		Size: 49.1 MB (49125842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7213c180353964c9c5acf9bf7628bdbbfa14daeec9d274654f138b20fa05a5`  
		Last Modified: Wed, 14 Mar 2018 06:49:49 GMT  
		Size: 903.9 KB (903935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b84a7d763324bcb96352099a7b1a8811131498fdcf3fa75b58c7a4e3a49c7cd`  
		Last Modified: Wed, 14 Mar 2018 06:53:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d0a77a09d90ac9af1b84c2a5d3019cac0e0e6516ffdb42e6ba3e8d8bb3a8da`  
		Last Modified: Wed, 14 Mar 2018 06:53:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac81f81474e809ac05299596d13aea5f9338aa7e8170e80b9f195c180d97f5`  
		Last Modified: Fri, 06 Apr 2018 18:21:48 GMT  
		Size: 234.6 MB (234649888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d86d4782bbb3ac6b9f46a5f5d9c7b74340c3ca916c51df403a9edf512a6b45b`  
		Last Modified: Fri, 06 Apr 2018 18:49:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ae070aa177722479194ce725a1469796c332713b6d9f9431f6e9cee91c414`  
		Last Modified: Fri, 06 Apr 2018 18:49:30 GMT  
		Size: 8.9 MB (8945994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851130f1f32b515ee7b8c4c134cabba7509ea704997ea1aa63e526fa86c3bd82`  
		Last Modified: Fri, 06 Apr 2018 18:49:27 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147b9013371892f2a658d7f165bc4583a17e76a10da010b152c816dc0ede90a3`  
		Last Modified: Fri, 06 Apr 2018 18:49:27 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
